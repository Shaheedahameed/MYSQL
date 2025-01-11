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

SELECT LEFT(Country_name,3) AS First_Three_Characters FROM Country;

SELECT CONCAT (Fname, ' ', Lname) AS Full_Name FROM Persons;

SELECT COUNT(DISTINCT Country_name) AS Unique_Countries FROM Persons;

SELECT MAX(Population) AS Max_Population FROM Country;

SELECT MIN(Population) AS Min_Population FROM Persons;

INSERT INTO Persons VALUES(11, 'Alice', NULL, 300000, 4.0, 1, 'CountryA'),
(12, 'Bob', NULL, 350000, 3.5, 2, 'CountryB');

SELECT COUNT(Lname) AS Count_Lname FROM Persons;

SELECT COUNT(*) AS Total_Rows FROM Persons;

SELECT Population FROM Country LIMIT 3;

SELECT * FROM Country ORDER BY RAND() LIMIT 3;

SELECT * FROM Persons ORDER BY Rating DESC;

SELECT Country_name, SUM(Population) AS Total_Population FROM Persons GROUP BY Country_name;

SELECT Country_name, SUM(Population) AS Total_Population FROM Persons GROUP BY Country_name
HAVING SUM(Population) > 50000;

SELECT Country_name, COUNT(*) AS Total_Persons, AVG(Rating) AS Avg_Rating FROM Persons
GROUP BY Country_name HAVING COUNT(*) > 2 ORDER BY Avg_Rating ASC;


