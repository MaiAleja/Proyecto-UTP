CREATE DATABASE database_links;
USE database_links;

CREATE TABLE users(
    id INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(16) NOT NULL,
    age INT(3) NOT NULL,
    password VARCHAR(32) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    email VARCHAR(32) NOT NULL,
    city VARCHAR(32) NOT NULL,
    job VARCHAR(32) NOT NULL,
    jobPlace VARCHAR(32) NOT NULL,
    income INT(11) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ninos(
    id INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(16) NOT NULL,
    age INT(3) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    city VARCHAR(32) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id)
);