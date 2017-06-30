
var blog = {

    initialize: function() {
        console.log("== initialize ==");
        blog.activateUserInterface();
    },
    activateUserInterface: function() {
        console.log("== activateUserInterface ==");
        $('#register_submit').on('click', function() {
            $('.login_form').slideUp();
            $('#register_form').css('visibility', 'visible');
            $('#register_area').css('height', '0');
            $('#register_submit').css('visibility', 'hidden');
            $('#register_text').css('visibility', 'hidden');
            $('#h1').css('visibility', 'hidden');
        });
    }

}; // close blog object

blog.initialize(); // call initialize method in blog object
