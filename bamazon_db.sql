CREATE database bamazon_db;
USE bamazon_db;

CREATE TABLE items (
    item_id INT(20) AUTO_INCREMENT NOT NULL, 
    item_name VARCHAR(30) NOT NULL,
    category VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT (100) NOT NULL,
    PRIMARY KEY(item_id)
);

SELECT * FROM items;

INSERT INTO items (item_id, item_name, category, price, quantity)
VALUES ("Mouse", "Electronics", 9.99, 20),
("iPhone", "Electronics", 99.99, 50),
("iPad", "Electronics", 229.99, 30),
("Galaxy S9", "Electronics", 129.99, 15),
("Galaxy Note 9", "Electronics", 329.99, 10),
("32inch TV", "Electronics", 29.99, 76),
("40inch TV", "Electronics", 19.99, 34),
("32inch Monitor", "Electronics", 69.99, 1),
("27inch Monitor", "Electronics", 139.99, 7),
("PSP4", "Electronics", 109.99, 90),
("XBOX S2", "Electronics", 9.99, 1004),