DROP DATABASE IF EXISTS greatBay_db;

CREATE DATABASE greatBay_db;

USE greatBay_db;

CREATE TABLE items
(
  id INT NOT NULL
  AUTO_INCREMENT,
  itemName VARCHAR
  (45) NOT NULL,
  currentBid DECIMAL
  (10,2) NULL,
);

  INSERT INTO items
    (title, artist, genre)
  VALUES
    ("pop it for pimp", "PimpC", "rap");

  INSERT INTO items
    (title, artist, genre)
  VALUES
    ("Stanglehold", "Ted Nugent", "rock");

  INSERT INTO items
    (title, artist, genre)
  VALUES
    ("Shake the Frost", "Tyler Childers", "country");

  INSERT INTO items
    (title, artist, genre)
  VALUES
    ("Money Grabber", "Fitz & the Tantrums", "alternative");


  SELECT *
  FROM items;
