-- create users table
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);


-- create posts table
CREATE TABLE "post" (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);


-- insert data into user table
INSERT INTO "user" (username)
    VALUES
        ('Akash'),
        ('Batash'),
        ('Sagor'),
        ('Nodi');


-- insert data into post table
INSERT INTO "post" (title, user_id)
VALUES
    ('Akashs first post', 1),
    ('Thoughts from Batash', 2),
    ('Exploring with Sagor', 3),
    ('Nodis reflections', 4);


DROP TABLE post;
DROP TABLE "user";


INSERT INTO "post" (title, user_id)
VALUES
    ('Akashs first post', NULL)