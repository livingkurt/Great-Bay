DROP DATABASE IF EXISTS greatBay_db;

CREATE DATABASE greatBay_db;

USE greatBay_db;

CREATE TABLE items
(
  id INT NOT NULL AUTO_INCREMENT, 
  itemName VARCHAR(45) NOT NULL,
  startingBid INT NULL,
  currentBid INT NULL,
);

  INSERT INTO items
    (itemName, startingBid, currentBid)
  VALUES
    ("2007 Honda Civic", "2500");

  INSERT INTO items
    (itemName, startingBid, currentBid)
  VALUES
    ("2013 Hyandai Santa Fe", "7000");

  INSERT INTO items
    (itemName, startingBid, currentBid)
  VALUES
    ("2006 Dodge Ram", "5000");

  INSERT INTO items
    (itemName, startingBid, currentBid)
  VALUES
    ("2020 Toyota Land Cruiser", "85000");


  SELECT * FROM items;
