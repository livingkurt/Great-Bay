DROP DATABASE IF EXISTS greatBay_db;

CREATE DATABASE greatBay_db;

USE greatBay_db;

CREATE TABLE items (
    id INT NOT NULL AUTO_INCREMENT, 
    itemName VARCHAR(100) NOT NULL,
    currentBid INT NULL,
    startingBid INT NULL,
    PRIMARY KEY (id)
);

  INSERT INTO items (itemName, startingBid, currentBid)
  VALUES ('2007 Honda Civic', 2500, NULL);
  

  INSERT INTO items (itemName, startingBid, currentBid)
  VALUES ('2013 Hyandai Santa Fe', 7000, NULL);

  INSERT INTO items (itemName, startingBid, currentBid)
  VALUES('2006 Dodge Ram', 5000, NULL);

  INSERT INTO items (itemName, startingBid, currentBid)
  VALUES ('2020 Toyota Land Cruiser', 85000, NULL);


  SELECT * FROM items;
