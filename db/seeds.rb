# ======= users =======
# firstname, lastname, username, password, created_at, updated_at
INSERT INTO users (firstname, lastname, username, password, email, created_at, updated_at) VALUES ("mike", "perez", "FreshOceans", "pass", "shark@gmail.com", current_timestamp, current_timestamp);
INSERT INTO users (firstname, lastname, username, password, email, created_at, updated_at) VALUES ("tom", "beach", "prof1", "bike", "biker@gmail.com", current_timestamp, current_timestamp);
INSERT INTO users (firstname, lastname, username, password, email, created_at, updated_at) VALUES ("matt", "wot", "wojo", "july", "polish@gmail.com", current_timestamp, current_timestamp);
INSERT INTO users (firstname, lastname, username, password, email, created_at, updated_at) VALUES ("alex", "chu", "ibm", "june", "ibm@gmail.com", current_timestamp, current_timestamp);
INSERT INTO users (firstname, lastname, username, password, email, created_at, updated_at) VALUES ("mic", "seff", "oc", "august", "seff@gmail.com", current_timestamp, current_timestamp);

# ======= posts =======
# user_id, title, content, created_at, updated_at
INSERT INTO posts (user_id, title, content, created_at, updated_at) VALUES (1, "First Post", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et viverra ex, et lobortis turpis. Phasellus vel malesuada enim, in ultrices sapien. Suspendisse gravida venenatis tellus, sit amet tincidunt ligula commodo sed. Phasellus a purus tempus, lacinia elit eu, porttitor orci. In lobortis blandit tincidunt. Sed maximus non dui ut ultricies. Maecenas sit amet vehicula urna. Maecenas fringilla suscipit tortor eu sagittis.", current_timestamp, current_timestamp);
INSERT INTO posts (user_id, title, content, created_at, updated_at) VALUES (1, "Second Post", "Etiam gravida blandit neque ac consequat. In egestas bibendum eleifend. Vestibulum quis mauris sit amet metus fermentum convallis ac porttitor enim. Curabitur pulvinar est nisl, nec scelerisque magna sodales sit amet. Pellentesque facilisis augue a sagittis luctus. Phasellus vitae est dui. Sed non tempor neque. Aliquam erat volutpat.", current_timestamp, current_timestamp);
INSERT INTO posts (user_id, title, content, created_at, updated_at) VALUES (1, "Third Post", "In lorem sem, rutrum ut massa et, sodales placerat diam. Praesent a metus tellus. Sed dolor felis, porttitor nec metus id, aliquet varius erat. Mauris finibus blandit finibus. Aliquam tellus lectus, mollis vitae metus at, sagittis consectetur dolor. Sed maximus ante nec lorem viverra hendrerit. Phasellus finibus pretium velit, malesuada accumsan sapien aliquet quis. Maecenas vitae ullamcorper nisi, id pharetra nunc. Curabitur posuere tristique felis non tincidunt. Suspendisse tempus, libero aliquet feugiat scelerisque, urna leo interdum turpis, a fermentum eros justo sed est.", current_timestamp, current_timestamp);
INSERT INTO posts (user_id, title, content, created_at, updated_at) VALUES (2, "Fourth Post", "In lorem sem, rutrum ut massa et, sodales placerat diam. Praesent a metus tellus. Sed dolor felis, porttitor nec metus id, aliquet varius erat. Mauris finibus blandit finibus. Aliquam tellus lectus, mollis vitae metus at, sagittis consectetur dolor. Sed maximus ante nec lorem viverra hendrerit. Phasellus finibus pretium velit, malesuada accumsan sapien aliquet quis. Maecenas vitae ullamcorper nisi, id pharetra nunc. Curabitur posuere tristique felis non tincidunt. Suspendisse tempus, libero aliquet feugiat scelerisque, urna leo interdum turpis, a fermentum eros justo sed est.", current_timestamp, current_timestamp);

# ======= comments =======
# user_id, post_id, comment, created_at,
INSERT INTO comments (user_id, post_id, comment, created_at) VALUES (1, 1, "Maecenas accumsan luctus mauris, sit amet hendrerit ligula auctor quis.", current_timestamp);
INSERT INTO comments (user_id, post_id, comment, created_at) VALUES (1, 1, "Ut sodales sit amet quam quis cursus.", current_timestamp);
INSERT INTO comments (user_id, post_id, comment, created_at) VALUES (1, 1, "Aliquam lacinia consectetur fringilla.", current_timestamp);
INSERT INTO comments (user_id, post_id, comment, created_at) VALUES (2, 1, "Nullam non ornare ligula.", current_timestamp);
INSERT INTO comments (user_id, post_id, comment, created_at) VALUES (3, 1, "Donec at dictum nunc.", current_timestamp);
INSERT INTO comments (user_id, post_id, comment, created_at) VALUES (4, 2, "Nullam eget nisi ultrices massa malesuada dictum.", current_timestamp);

# ======= feeds =======
# post_id, comment_id, created_at
INSERT INTO feeds (post_id, comment_id, created_at) VALUES (1, 0, current_timestamp);
INSERT INTO feeds (post_id, comment_id, created_at) VALUES (2, 0, current_timestamp);
INSERT INTO feeds (post_id, comment_id, created_at) VALUES (3, 0, current_timestamp);
INSERT INTO feeds (post_id, comment_id, created_at) VALUES (4, 0, current_timestamp);
INSERT INTO feeds (post_id, comment_id, created_at) VALUES (0, 1, current_timestamp);
INSERT INTO feeds (post_id, comment_id, created_at) VALUES (0, 2, current_timestamp);
INSERT INTO feeds (post_id, comment_id, created_at) VALUES (0, 3, current_timestamp);
INSERT INTO feeds (post_id, comment_id, created_at) VALUES (0, 4, current_timestamp);
INSERT INTO feeds (post_id, comment_id, created_at) VALUES (0, 5, current_timestamp);
INSERT INTO feeds (post_id, comment_id, created_at) VALUES (0, 6, current_timestamp);
