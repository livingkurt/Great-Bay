DROP DATABASE IF EXISTS playlist_db;

CREATE DATABASE playlist_db;

USE playlist_db;

CREATE TABLE songs (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(45) NULL,
  artist VARCHAR(45) NULL,
  genre VARCHAR(45) NULL,
  PRIMARY KEY (id)
);

INSERT INTO songs (title, artist, genre)
VALUES ("pop it for pimp", "PimpC", "rap");

INSERT INTO songs (title, artist, genre)
VALUES ("Stanglehold", "Ted Nugent", "rock");

INSERT INTO songs (title, artist, genre)
VALUES ("Shake the Frost", "Tyler Childers", "country");

INSERT INTO songs (title, artist, genre)
VALUES ("Money Grabber", "Fitz & the Tantrums", "alternative");


SELECT * FROM songs;
