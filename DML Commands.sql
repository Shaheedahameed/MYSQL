CREATE TABLE Managers (
  Manager_Id INT PRIMARY KEY,
  First_name VARCHAR(255) NOT NULL,
  Last_Name VARCHAR(255) NOT NULL,
  DOB DATE NOT NULL,
  Age INT CHECK (Age > 18),
  Last_update DATE NOT NULL,
  Gender VARCHAR(255) NOT NULL,
  Department VARCHAR(255) NOT NULL,
  Salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Last_update, Gender, Department, Salary)

VALUES
(1, 'John', 'davice', '1990-01-01', 32, '2022-01-01', 'Male', 'IT', 30000.00),
(2, 'Ahana', 'Krishna', '1992-02-02', 30, '2022-02-02', 'Female', 'HR', 25000.00),
(3, 'Aaliya', 'Johnson', '1991-03-03', 31, '2022-03-03', 'Female', 'Marketing', 28000.00),
(4, 'joyal', 'Williams', '1989-04-04', 33, '2022-04-04', 'Male', 'Sales', 32000.00),
(5, 'Shanana', 'Ashraf', '1993-05-05', 29, '2022-05-05', 'Female', 'IT', 26000.00),
(6, 'Thabries', 'Mushraf', '1994-06-06', 28, '2022-06-06', 'Male', 'Finance', 29000.00),
(7, 'Nisha', 'Sarang', '1995-07-07', 27, '2022-07-07', 'Female', 'HR', 27000.00),
(8, 'David', 'Richardoo', '1988-08-08', 34, '2022-08-08', 'Male', 'Marketing', 31000.00),
(9, 'Sophia', 'john', '1996-09-09', 26, '2022-09-09', 'Female', 'Sales', 28000.00),
(10, 'Krishna', 'Kumar', '1987-10-10', 35, '2022-10-10', 'Male', 'IT', 33000.00);

SELECT First_name, DOB FROM Managers WHERE Manager_Id = 1;

SELECT First_name, Salary * 12 AS Annual_Income FROM Managers;

SELECT * FROM Managers WHERE First_name != 'Aaliya';

SELECT * FROM Managers WHERE Department = 'IT' AND Salary > 25000;

SELECT * FROM Managers WHERE Salary BETWEEN 10000 AND 35000;

