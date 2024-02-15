-- Create the database tables

CREATE TABLE users (
    username TEXT COLLATE NOCASE PRIMARY KEY NOT NULL UNIQUE ,
    email TEXT NOT NULL UNIQUE CHECK(email LIKE '%@%'), -- Check if the email contains an @ symbol, simple but ineffective email validation
    password TEXT NOT NULL
);

CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL COLLATE NOCASE,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    FOREIGN KEY (username) REFERENCES users(username)
);

CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER,
    username TEXT NOT NULL COLLATE NOCASE,
    content TEXT NOT NULL,
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (username) REFERENCES users(username)
);


-- Insert data


INSERT INTO users (username, email, password) VALUES
('JohnDoe', 'john@example.com', '123'),
('JaneDoe', 'jane@example.com', 'password');

INSERT INTO posts (username, title, content) VALUES
('JohnDoe', 'My First Post', 'This is my first post!');

INSERT INTO comments (post_id, username, content) VALUES
(1, 'JaneDoe', 'Great post, John!'), -- Jane replies to John's post
(1, 'JohnDoe', 'Thanks, Jane!'); -- John replies back to Jane

SELECT * FROM users;
SELECT * FROM posts;
SELECT * FROM comments;


-- Updating data

-- John wants to update his first post and his password
UPDATE posts SET content = 'This is my first post! What do you guys think? Do you like the new edit feature?' WHERE id = 1; -- John updated his post!
UPDATE users SET password = 'johnsnewSecurePassword123' WHERE username = 'JohnDoe'; -- John made his password more secure :O

-- Jane made an inappropriate comment and we need to moderate it
INSERT INTO comments (post_id, username, content) VALUES (1, 'JaneDoe', 'This app is shit! John why did you make me join this'); -- Jane's inappropriate comment
SELECT * FROM comments WHERE id = 3;
UPDATE comments SET content = REPLACE(content, 'shit', '****');
SELECT * FROM comments WHERE id = 3;


-- Deleting Data

-- We want to fully remove Jane's inappropriate comment
DELETE FROM comments WHERE id = 3;

-- Jane wants to delete her account because she hates this app
DELETE FROM comments WHERE username = 'JaneDoe'; -- Delete Jane's comments
DELETE FROM posts WHERE username = 'JaneDoe'; -- Delete Jane's posts
DELETE FROM users WHERE username = 'JaneDoe'; -- Finally, delete Jane's account

SELECT * FROM users;
SELECT * FROM posts;
SELECT * FROM comments;