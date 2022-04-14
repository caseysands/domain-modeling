
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS followers;

CREATE TABLE posts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    caption TEXT,
    user_id INTEGER,
    time TEXT,
    likes INTEGER
);

CREATE TABLE activities(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    like BOOLEAN,
    post_id INTEGER,
    user_id INTEGER,
    comment TEXT
);

CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    screen_name TEXT,
    first_name TEXT,
    last_name TEXT,
    location TEXT
);

CREATE TABLE followers(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER
);