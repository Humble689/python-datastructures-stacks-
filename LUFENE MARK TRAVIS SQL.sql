DROP TABLE IF EXISTS Category;
CREATE TABLE Category(
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(20)
);

INSERT INTO Category VALUES(1,"Fruits");
INSERT INTO Category VALUES(2,"Food");

DROP TABLE IF EXISTS product;
CREATE TABLE product(
    productID INT PRIMARY KEY,
    productName VARCHAR(20),
    price INT,
    CategoryID INT
);

INSERT INTO product VALUES(1,"Mangoes",5000,1);
INSERT INTO product VALUES(2,"Oranges",6000,1);
INSERT INTO product VALUES(3,"Cassava",10000,2);
INSERT INTO product VALUES(4,"Millet",12000,2);

DROP TABLE IF EXISTS Marketier;
CREATE TABLE Marketier(
    MarketierID INT PRIMARY KEY,
    firstname VARCHAR(20),
    lastname VARCHAR(20),
    productID INT,
    CategoryID INT,
    PhoneNo VARCHAR(20),
    Address VARCHAR(20)
);

INSERT INTO Marketier VALUES(1,"John","Okot",3,2,"0772314351","Mpala");
INSERT INTO Marketier VALUES(2,"Paul","Bell",2,1,"0777535332","Tororo");
INSERT INTO Marketier VALUES(3,"Lisa","Akello",4,2,"0782935734","Masindi");
INSERT INTO Marketier VALUES(4,"Kate","Aketch",1,1,"0776453342","Tororo");
INSERT INTO Marketier VALUES(5,"Carol","Nalumu",2,1,"0783536435","Lira");


--Questions

SELECT * FROM product;

SELECT productID, price, productName, CategoryID FROM product;

SELECT * FROM product WHERE price > 5000;

SELECT * FROM product WHERE price BETWEEN 5000 AND 12000;

SELECT price FROM product ORDER BY price DESC;

INSERT INTO product VALUES(6,"Lemon",15000,1);
INSERT INTO product(productID,productName,price,CategoryID) VALUES(7,"Tomato",17000,1);

UPDATE product SET price = 30000 WHERE CategoryID = 1;

SELECT productName FROM product ORDER BY productName ASC;

SELECT COUNT(*) AS NumberOfProducts FROM product WHERE CategoryID = 2;