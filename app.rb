# ======= requires =======
require "sinatra"
require 'sinatra/activerecord'
require "sinatra/reloader"
require "sass"
require "sinatra/flash"

# ======= models ========
require './models'

# ======= database =======
set :database, "sqlite3:micro_blog_alpha.db"

# =======  sessions =======
enable :sessions

# ======= Home =======
get '/' do
	puts "\n******* home *******"
	erb :home
end
# ===== Welcome Page =====
get '/welcome_page' do
	puts "\n******* welcome_page *******"
	erb :welcome_page
end
# ===== Profile =====
get '/profile/:id' do
	puts "\n******* profile *******"
	@user = User.find(params[:id])
	erb :profile
end

# ===== Sign In =====
get '/user_sign_in' do
	puts "\n******* user_sign_in *******"
	erb :user_sign_in
end
post '/user_sign_in' do
	puts "\n******* user_sign_in *******"
    @user = User.where(username: params[:username]).first
	if @user
		if @user.password == params[:password]
			session[:user_id] = @user.id
            @current_user = get_current_user
			flash[:notice] = "You've been signed in successfully."
			redirect '/welcome_page'
		else
			flash[:notice] = "Please check your username and password and try again."
			redirect "/user_sign_in"
		end
	else
		flash[:notice] = "Please check your username and password and try again."
		redirect "/user_sign_in"
	end
end
# ======= get_current_user =======
def get_current_user
    puts "\n******* get_current_user *******"
    if session[:user_id]
        return User.find(session[:user_id])
    else
        puts "** NO CURRENT USER **"
    end
end
# ==== Log Out =====
get "/logout" do
	puts "\n******* logout *******"
    session[:user_id] = nil
	flash[:notice] = "You've been logged out successfully."
	redirect '/'
end
# ===== Blog ======
get '/blog' do
	puts "\n******* blog *******"
	# @posts = Post.all.order(created_at: :desc)
	@posts = Post.all
	puts "@posts.inspect: #{@posts.inspect}"
	erb :blog
end

# ===== User =====
get '/user' do
	puts "\n******* user *******"
	erb :user
end
# ===== Feed =====
get '/feed' do
	puts "\n******* feed *******"
	# @user = User.find(session[:user_id])
	erb :feed
end
# == Create User
get '/user_registration_form' do
	puts "\n******* user_registration_form *******"
	erb :user_registration_form
end
post '/user' do
    puts "params: #{params.inspect}"
	User.create(
		firstname: params[:firstname],
		lastname: params[:lastname],
		username: params[:username],
		password: params[:password],
		email: params[:email]
	)
	@user = User.order("created_at").last
	session[:user_id] = @user.id
	puts "session[:user_id], #{session[:user_id]}"
	puts "@user:, #{@user}"
	redirect '/profile'
end
# == Read All Users Info
get '/directory' do
	puts "\n******* directory *******"
	@users = User.all
	puts "@users.inspect: #{@users.inspect}"
	erb :directory
end
# # == Update User Info
get '/update_user_form' do
	puts "\n******* update_user_form *******"
	erb :update_user_form
end
get '/update_user_form/:id' do
	puts "\n******* update_user_form *******"
	puts "params.inspect: #{params.inspect}"
	@user = User.find(params[:id])
	erb :update_user_form
end
post '/update' do
	puts "\n******* update *******"
	puts "params.inspect: #{params.inspect}"
	params.delete("captures")
	User.find(params[:id]).update_attributes(params)
	@user =  User.order("created_at").last
	erb :profile
end
# == Delete User
get '/delete_user' do
	puts "\n******* delete_user *******"
	erb :delete_user
end
get '/delete_user/:id' do
	puts "\n******* delete_user *******"
	puts "params.inspect: #{params.inspect}"
	@user = User.find(params[:id]).destroy
	puts "@user, #{@user}"
	flash[:notice] = "You have successfully been removed from the blog."
	redirect '/'
end

# ===== Post ======
get '/post' do
	puts "\n******* post *******"
	erb :post_form
end
# == Create Post
get '/post_form' do
	puts "\n******* post_form *******"
	erb :post_form
end
post '/publish_post' do
	puts "\n*****  publish_post *****"
	puts "params: #{params.inspect}"
	puts "session[:user_id], #{session[:user_id]}"
		Post.create(
			user_id: session[:user_id],
			title: params[:title],
			content: params[:content]
			)
		puts "@post: #{@post.inspect}"
	redirect '/blog'
end

# ===== Comment =====
# == Publish Comment
post'/publish_comment' do
	puts "\n*****  publish_comment *****"
	puts "params: #{params.inspect}"
		Comment.create(
			comment: params[:comment],
			user_id: session[:user_id],
			post_id: params[:post_id]
			)
		@comment = Comment.order("created_at").last
		puts "@comment: #{@post.inspect}"
	redirect '/blog'
end
