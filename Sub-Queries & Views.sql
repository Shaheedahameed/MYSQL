CREATE TABLE Country (Id INT PRIMARY KEY, Country_name VARCHAR(100), Population INT, Area INT);

INSERT INTO Country  VALUES(1, 'India', 5000000, 200000),
(2, 'France', 10000000, 300000),
(3, 'Itali', 7500000, 250000),
(4, 'Germany', 2000000, 100000),
(5, 'Saudi_Arabia', 15000000, 400000),
(6, 'UAE', 3000000, 150000),
(7, 'USA', 12000000, 350000),
(8, 'Qater', 8000000, 280000),
(9, 'Argentina', 4000000, 220000),
(10, 'Brazil', 6000000, 270000);

CREATE TABLE Persons(Id INT PRIMARY KEY, Fname VARCHAR(100), Lname VARCHAR(100), Population INT, Rating INT, country_Id INT,
Country_Name VARCHAR(100));

INSERT INTO Persons VALUES(1, 'John', 'Ebraham', 500000, 4.5, 1, 'India'),
(2, 'Hima', 'Sumith', 600000, 3.8, 2, 'France'),
(3, 'Michael', 'Johnson', 450000, 4.1, 3, 'Itali'),
(4, 'Amal', 'Davis', 700000, 4.2, 4, 'Germany'),
(5, 'Rohit', 'Kumar', 550000, 3.7, 5, 'Saudi_Arabia'),
(6, 'Alka', 'Wilson', 800000, 4.6, 6, 'UAE'),
(7, 'David', 'Chako', 650000, 4.0, 7, 'USA'),
(8, 'Anmary', 'Jose', 500000, 3.9, 8, 'Qater'),
(9, 'Sajitha', 'Hameed', 600000, 4.3, 9, 'Argentina'),
(10, 'Sarah', 'Many', 450000, 4.4, 10, 'Brazil');

SELECT Country_Name, COUNT(*) AS Number_of_Persons FROM Persons GROUP BY Country_Name;

SELECT Country_Name, COUNT(*) AS Number_of_Persons FROM Persons GROUP BY Country_Name ORDER BY Number_of_Persons DESC;

SELECT Country_Name, AVG(Rating) AS Average_Rating FROM Persons GROUP BY Country_Name HAVING AVG(Rating) > 3.0;

SELECT Country_Name FROM Persons WHERE Rating = (SELECT AVG(Rating) FROM Persons WHERE Country_Name = 'USA');

SELECT Country_Name FROM Country WHERE Population > (SELECT AVG(Population) FROM Country);


CREATE DATABASE Product;

USE Product;

CREATE TABLE Customer (Customer_Id INT PRIMARY KEY,First_name VARCHAR(100),Last_name VARCHAR(100),Email VARCHAR(100),
    Phone_no VARCHAR(15),Address VARCHAR(255),City VARCHAR(50),State VARCHAR(50),Zip_code VARCHAR(10),Country VARCHAR(50));

INSERT INTO Customer (Customer_Id, First_name, Last_name, Email, Phone_no, Address, City, State, Zip_code, Country) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', '123 Elm St', 'Springfield', 'IL', '62701', 'USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '456 Oak St', 'Chicago', 'IL', '60601', 'california'),
(3, 'Emily', 'Johnson', 'emily.johnson@example.com', '345-678-9012', '789 Pine St', 'Los Angeles', 'CA', '90001', 'USA'),
(4, 'Michael', 'Brown', 'michael.brown@example.com', '456-789-0123', '101 Maple St', 'Miami', 'FL', '33101', 'USA'),
(5, 'Sarah', 'Davis', 'sarah.davis@example.com', '567-890-1234', '202 Birch St', 'Dallas', 'TX', '75201', 'USA');

CREATE VIEW customer_info AS SELECT CONCAT(First_name, ' ', Last_name) AS Full_name, Email FROM Customer;

SELECT * FROM customer_info;

CREATE VIEW US_Customers AS SELECT *FROM Customer WHERE Country = 'USA';

CREATE VIEW Customer_details AS SELECT CONCAT(First_name, ' ', Last_name) AS Full_name, Email, Phone_no, State FROM Customer;

UPDATE Customer SET Phone_no ='NEW_PHONE_NUMBER' WHERE State = 'California';

SELECT State, COUNT(*) AS Customer_Count FROM Customer GROUP BY State HAVING COUNT(*) > 5;

SELECT State, COUNT(*) AS Customer_Count FROM Customer_details GROUP BY State;

SELECT *FROM Customer_details ORDER BY State ASC;

