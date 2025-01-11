CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area FLOAT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(100),
    Lname VARCHAR(100),
    Population INT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(100));
    
  -- Insert data into Country table
INSERT INTO Country VALUES(1, 'USA', 331000000, 9833517),
(2, 'Canada', 37700000, 9976140),
(3, 'UK', 67800000, 243610),
(4, 'India', 1380004385, 3287263),
(5, 'Australia', 25600000, 7692024),
(6, 'Germany', 83783942, 357022),
(7, 'France', 65273511, 551695),
(8, 'Italy', 60244639, 301340),
(9, 'Japan', 126476461, 377975),
(10, 'Brazil', 212559417, 8515767);

-- Insert data into Persons table
INSERT INTO Persons VALUES(1, 'John', 'Deena', 331000000, 4.2, 1, 'USA'),
(2, 'Janu', 'Smith', 331000000, 3.8, 1, 'USA'),
(3, 'Alice', 'Johnson', 37700000, 4.5, 2, 'Canada'),
(4, 'Boby', 'Aneeta', 67800000, 4.1, 3, 'UK'),
(5, 'Charlie', 'Tesa', 1380004385, 4.7, 4, 'India'),
(6, 'David', 'vishnu', 25600000, 3.9, 5, 'Australia'),
(7, 'Eva', 'john', 83783942, 4.0, 6, 'Germany'),
(8, 'Frank', 'ozler', 65273511, 4.8, 7, 'France'),
(9, 'Grace', 'Antony', 60244639, 4.3, 8, 'Italy'),
(10, 'Meera', 'Thomas', 126476461, 4.6, 9, 'Japan');
  
SELECT DISTINCT Country_name FROM Persons;

SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;

SELECT *FROM Persons WHERE Rating > 4.0;

SELECT Country_name FROM Country WHERE Population > 1000000;

SELECT *FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

SELECT *FROM Persons WHERE Country_name IS NULL;

SELECT *FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');

SELECT *FROM Persons WHERE Country_name NOT IN ('India', 'Australia');

SELECT Country_name FROM Country WHERE Population BETWEEN 500000 AND 2000000;

SELECT Country_name FROM Country WHERE Country_name NOT LIKE 'C';

