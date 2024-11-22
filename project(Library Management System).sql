
CREATE DATABASE Library;

USE library;


CREATE TABLE Branch (Branch_no INT PRIMARY KEY, Manager_Id INT, Branch_address VARCHAR(255),
Contact_no INT);

INSERT INTO Branch VALUES 
(0012,55410,'Novelway_London',954475058),
(0031,44150,'ReadeAve_ParogenCity',872546931),
(0072,66871,'KnowledgeBlvd_Scholarville',985476310),
(0097,33698,'StorySt_Fictiontown',996699770),
(0023,11073,'ArchiveRd_HistoryCity',902013045),
(0069,99087,'NovelWay_LiteratureLand',986543210),
(0058,55791,'TextbookTerrace_Educatia',910203040),
(0022,22754,'BookmarkBlvd_Readington',687451230),
(0039,33910,'LibrarySt_KnowledgeCity',974003240),
(0011,99702,'ScholarRd_Learnville',904386127),
(0032,11234,'FictionAve_Storytown',984562013),
(0013,77895,'HistoryLn_Pastville',203654789),
(0096,33078,'ReferenceRd_Factoria',872034612),
(0021,88036,'LiteraryCt_ImaginationCity',369812045),
(0014,22701,'KnowledgeBlvd_IntellectTown',687410230),
(0087,99874,'LiteratureLane_Poetown',374105891),
(0041,11021,'AcademicSt_CampusTown',402179031),
(0020,33007,'InformationRd_Insightcity',894520136),
(0098,99074,'BookshelfBlvd_LiteratureCity',254879103),
(0010,22798,'ReadingRd_Bookland',887456912),
(0065,77302,'StorytimeSt_Narrativia',365429711),
(0082,33687,'EducationAve_Studyville',123658790),
(0074,55178,'ClassicRd_TraditionTown',780945032),
(0085,44036,'LiteraryLn_Storybrooke',324689027),
(0091,33213,'Kochi_palarivattam',703355900);

SELECT *FROM Branch;


CREATE TABLE Employee (Emp_Id INT PRIMARY KEY, Emp_name VARCHAR(100), Position VARCHAR(100), Salary INT,
Branch_no INT,FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no));

INSERT INTO Employee VALUES
(0010,'Alice_Johnson','Manager',60000,0031),
(0020,'Bob_Smith','Librarian',45000,0072),
(0030,'Charlie_Brown','Assistant_Librarian',35000,0097),
(0040,'Diana_Prince','Manager',62000,0023),
(0050,'Ethan_Hunt','Librarian',48000,0069),
(0060,'Fiona_Apple','Assistant_Librarian',37000,0058),
(0070,'George_Lucas','Manager',58000,0022),
(0080,'Hannah_Montana','Librarian',46000,0039),
(0090,'Ian_Fleming','Assistant_Librarian',39000,0011),
(0100,'Jane_Doe','Manager',60000,0032),
(0110,'Kevin_Spacey','Librarian',45000,0013),
(0120,'Laura_Croft', 'Assistant_Librarian',36000,0096),
(0130,'Mark_Twain','Manager',62000,0021),
(0140,'Nina_Simone','Librarian',47000,0014),
(0150,'Oscar_Wilde','Assistant_Librarian',38000,0087),
(0160,'Paula_Abdul','Manager',60000,0041),
(0170,'Quentin_Tarantino','Librarian',49000,0020),
(0180,'Rachel_Green','Assistant_Librarian',35000,0098),
(0190,'Steve Jobs','Manager',63000,0010),
(0200,'Tina_Fey','Librarian',48000,0065),
(0210,'Ursula_K_Le_Guin','Assistant_Librarian',370000,0082),
(0220,'Vincent_van_Gogh','Manager',61000,0074),
(0230,'Will_Smith','Librarian',50000,0085),
(0240,'Xena_Warrior','Assistant_Librarian',39000,0091),
(0250,'Yoda_Jedi','Manager',64000,0012);

SELECT *FROM Employee;


CREATE TABLE Books (ISBN VARCHAR(20) PRIMARY KEY, Book_title VARCHAR(255), Category VARCHAR(100), Rental_Price DECIMAL(10, 2),
  Status ENUM('yes', 'no'), Author VARCHAR(100), Publisher VARCHAR(100));
  
INSERT INTO Books VALUES
('978-3-16-148410-0','The_Great_Adventure','Fiction',5.00,'yes','Alice Johnson','Book_Haven_Press'),
('978-1-23-456789-7','Learning_SQL','Non-Fiction',7.50,'yes','Bob_Smith','Literary_Legends_Publishing'),
('978-0-12-345678-9','The_Art_of_Programming','Technology',8.00,'no','Charlie_Brown','Knowledge Tree Press'),
('978-1-40-289462-3','History_of_the_World','History',6.00,'yes','Diana_Prince','Storyteller_Books'),
('978-0-11-234567-8', 'Adventures in Reading','Children',4.50,'yes','Ethan_Hunt','Ink_Publishing'),
('978-3-16-148410-1','Mystery_f_he_ost_reasure','Mystery',5.50,'no','Fion_Apple','Imagination_Press'),
('978-1-61-729223-7','Understanding_AI','Technology',10.00,'yes','George_Lucas','Bright_Ideas_Publishing'),
('978-0-06-230116-1','The_Poetry_Collection','Poetry',3.50,'yes','Hannah_Montana','Horizon_Book_House'),
('978-0-00-123456-7','Science_for_Everyone','Science',6.50,'yes','Ian_Fleming','Emerald_Isle_Publishers'),
('978-1-93-239343-1','Cooking_101','Cooking',7.00,'yes','Jane_Doe','Silver_Lining_Books'),
('978-1-60-550000-3','World_History:_A_Comprehensive_Guide','History',9.00,'yes','Kevin_Spacey','Echo_Valley_Press'),
('978-0-307-29030-6','The_Fictional_Universe','Fiction',5.50,'no','Laura Croft','Evergreen_Publishing_Co.'),
('978-1-61-729548-1','Advanced_Mathematics','Textbook',12.00,'yes','Mark_Twain','Nova_Literary_Press'),
('978-1-61-729536-8','Digital_Marketing','Business',8.50,'yes','Nina_Simone','Blue_Sky_Books'),
('978-0-12-123456-9','Traveling_the_World','Travel',10.50,'yes','Oscar_Wilde','Harmony_House_Publishing'),
('978-3-16-148410-2','Fantasy_Realms','Fantasy',5.00,'no','Paula_Abdul','Rising_Star_Press'),
('978-0-19-853859-6','Ethics_in_Technology','Philosophy',9.50,'yes','Quentin_Tarantino','Open_Book_Publishers'),
('978-0-12-345678-0','The_Science_of_Cooking','Science',7.00,'yes','Rachel Green','Crystal_Clear_Publishing'),
('978-0-14-313272-1','Introduction_to_Psychology','Psychology',8.00,'yes','Steve_Jobs','Starlight_Books'),
('978-1-60-459873-2','The_Guide_to_Gardening','Gardening',4.00,'yes','Tina Fey','Timeless_Tales_Publishing'),
('978-0-00-000000-0','Understanding_the_Universe','Science',10.00,'no','Ursula K.LeGuin','Whimsical_Words_Press'),
('978-0-00-000001-7','Crafting_Your_Story','Writing',6.50,'yes','Vincent_van_Gogh','Epic_Journey_Publishing'),
('978-0-00-000002-4','The_Joy_of_Music','Music',5.50,'yes','Will_Smith','Gateway_Books'),
('978-0-00-000003-1','The_Essential_Guide_to_Fitness','Health',7.00,'yes','Xena_Warrior','Inspiring_Reads_Publishing'),
('978-0-00-000004-8','Gardening_Basics','Gardening',4.50,'yes','Yoda_Jedi','Inspiring_Reads_Publishing');

SELECT *FROM Books;


CREATE TABLE Customer (Customer_Id INT PRIMARY KEY,Customer_name VARCHAR(100), Customer_address VARCHAR(255),
Reg_date DATE);

INSERT INTO Customer VALUES
(1, 'Alice Johnson', '123 Main St, Springfield', '2023-01-15'),
(2, 'Bob Smith', '456 Elm St, Springfield', '2023-02-20'),
(3, 'Charlie Brown', '789 Oak St, Springfield', '2023-03-10'),
(4, 'Diana Prince', '101 Maple St, Springfield', '2023-04-05'),
(5, 'Ethan Hunt', '202 Birch St, Springfield', '2023-05-15'),
(6, 'Fiona Gallagher', '303 Cedar St, Springfield', '2023-06-25'),
(7, 'George Lopez', '404 Pine St, Springfield', '2023-07-30'),
(8, 'Hannah Baker', '505 Walnut St, Springfield', '2023-08-12'),
(9, 'Isaac Asimov', '606 Cherry St, Springfield', '2023-09-15'),
(10, 'Jasmine Lee', '707 Fir St, Springfield', '2023-10-20'),
(11, 'Kevin Spacey', '808 Ash St, Springfield', '2023-11-22'),
(12, 'Laura Croft', '909 Willow St, Springfield', '2023-12-01'),
(13, 'Mike Wazowski', '111 Sycamore St, Springfield', '2024-01-05'),
(14, 'Nina Simone', '222 Oak St, Springfield', '2024-02-10'),
(15, 'Oscar Wilde', '333 Maple St, Springfield', '2024-03-15'),
(16, 'Paula Abdul', '444 Cedar St, Springfield', '2024-04-20'),
(17, 'Quincy Jones', '555 Pine St, Springfield', '2024-05-25'),
(18, 'Rachel Green', '666 Walnut St, Springfield', '2024-06-30'),
(19, 'Steve Jobs', '777 Cherry St, Springfield', '2024-07-12'),
(20, 'Tina Turner', '888 Fir St, Springfield', '2024-08-18'),
(21, 'Uma Thurman', '999 Ash St, Springfield', '2024-09-24'),
(22, 'Victor Hugo', '1110 Sycamore St, Springfield', '2024-10-30'),
(23, 'Wanda Sykes', '1211 Oak St, Springfield', '2024-11-10'),
(24, 'Xander Cage', '1312 Maple St, Springfield', '2024-12-15'),
(25, 'Yara Shahidi', '1413 Cedar St, Springfield', '2025-01-20');

SELECT *FROM Customer;


CREATE TABLE IssueStatus (Issue_Id INT PRIMARY KEY,Issued_Cust INT,Issued_Book_Name VARCHAR(255),Issue_Date DATE,
Isbn_Book VARCHAR(20),FOREIGN KEY (Issued_Cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY (Isbn_Book) REFERENCES Books(ISBN));

INSERT INTO IssueStatus VALUES
(10, 1, 'The Great Gatsby', '2024-01-10', '978-3-16-148410-0'),
(20, 2, 'To Kill a Mockingbird', '2024-01-11', '978-1-23-456789-7'),
(30, 3, '1984', '2024-01-12', '978-0-12-345678-9'),
(40, 4, 'Pride and Prejudice', '2024-01-13', '978-1-40-289462-3'),
(50, 5, 'The Catcher in the Rye', '2024-01-14', '978-0-11-234567-8'),
(60, 6, 'Moby Dick', '2024-01-15', '978-3-16-148410-1'),
(70, 7, 'War and Peace', '2024-01-16', '978-1-61-729223-7'),
(80, 8, 'Crime and Punishment', '2024-01-17', '978-0-06-230116-1'),
(90, 9, 'Brave New World', '2024-01-18', '978-0-00-123456-7'),
(100, 10, 'The Odyssey', '2024-01-19', '978-1-93-239343-1'),
(110, 11, 'The Hobbit', '2024-01-20', '978-1-60-550000-3'),
(120, 12, 'Fahrenheit 451', '2024-01-21', '978-0-307-29030-6'),
(130, 13, 'The Picture of Dorian Gray', '2024-01-22', '978-1-61-729548-1'),
(140, 14, 'The Brothers Karamazov', '2024-01-23', '978-1-61-729536-8'),
(150, 15, 'The Grapes of Wrath', '2024-01-24', '978-0-12-123456-9'),
(160, 16, 'Les Misérables', '2024-01-25', '978-3-16-148410-2'),
(170, 17, 'The Stranger', '2024-01-26', '978-0-19-853859-6'),
(180, 18, 'The Bell Jar', '2024-01-27', '978-0-12-345678-0'),
(190, 19, 'Wuthering Heights', '2024-01-28', '978-0-14-313272-1'),
(200, 20, 'The Count of Monte Cristo', '2024-01-29', '978-1-60-459873-2'),
(210, 21, 'Anna Karenina', '2024-01-30', '978-0-00-000000-0'),
(220, 22, 'The Fault in Our Stars', '2024-01-31', '978-0-00-000001-7'),
(230, 23, 'The Road', '2024-02-01', '978-0-00-000002-4'),
(240, 24, 'A Tale of Two Cities', '2024-02-02', '978-0-00-000003-1'),
(250, 25, 'The Alchemist', '2024-02-03', '978-0-00-000004-8');

SELECT *FROM IssueStatus;


CREATE TABLE ReturnStatus (Return_Id INT PRIMARY KEY,Return_cust INT,Return_book_name VARCHAR(255),
Return_date DATE,Isbn_book2 VARCHAR(20),FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN));

INSERT INTO ReturnStatus  VALUES
(011, 1, 'The Great Gatsby', '2024-01-20', '978-3-16-148410-0'),
(022, 2, 'To Kill a Mockingbird', '2024-01-21', '978-1-23-456789-7'),
(033, 3, '1984', '2024-01-22', '978-0-12-345678-9'),
(044, 4, 'Pride and Prejudice', '2024-01-23', '978-1-40-289462-3'),
(055, 5, 'The Catcher in the Rye', '2024-01-24', '978-0-11-234567-8'),
(066, 6, 'Moby Dick', '2024-01-25', '978-3-16-148410-1'),
(077, 7, 'War and Peace', '2024-01-26', '978-1-61-729223-7'),
(088, 8, 'Crime and Punishment', '2024-01-27', '978-0-06-230116-1'),
(099, 9, 'Brave New World', '2024-01-28', '978-0-00-123456-7'),
(0110, 10, 'The Odyssey', '2024-01-29', '978-1-93-239343-1'),
(0220, 11, 'The Hobbit', '2024-01-30', '978-1-60-550000-3'),
(0330, 12, 'Fahrenheit 451', '2024-01-31', '978-0-307-29030-6'),
(0440, 13, 'The Picture of Dorian Gray', '2024-02-01', '978-1-61-729548-1'),
(0550, 14, 'The Brothers Karamazov', '2024-02-02', '978-1-61-729536-8'),
(0660, 15, 'The Grapes of Wrath', '2024-02-03', '978-0-12-123456-9'),
(0770, 16, 'Les Misérables', '2024-02-04', '978-3-16-148410-2'),
(0880, 17, 'The Stranger', '2024-02-05', '978-0-19-853859-6'),
(0990, 18, 'The Bell Jar', '2024-02-06', '978-0-12-345678-0'),
(01100, 19, 'Wuthering Heights', '2024-02-07', '978-0-14-313272-1'),
(02200, 20, 'The Count of Monte Cristo', '2024-02-08', '978-1-60-459873-2'),
(03300, 21, 'Anna Karenina', '2024-02-09', '978-0-00-000000-0'),
(04400, 22, 'The Fault in Our Stars', '2024-02-10', '978-0-00-000001-7'),
(05500, 23, 'The Road', '2024-02-11', '978-0-00-000002-4'),
(06600, 24, 'A Tale of Two Cities', '2024-02-12', '978-0-00-000003-1'),
(07700, 25, 'The Alchemist', '2024-02-13', '978-0-00-000004-8');

SELECT *FROM ReturnStatus;


SELECT Book_title, Category, Rental_Price FROM Books WHERE Status = 'yes';

SELECT Emp_name, Salary FROM Employee ORDER BY Salary DESC;

SELECT B.Book_title, C.Customer_name FROM IssueStatus I JOIN Books B ON I.Isbn_book = B.ISBN 
JOIN Customer C ON I.Issued_cust = C.Customer_Id;

SELECT Category, COUNT(*) AS Total_Books FROM Books GROUP BY Category;

SELECT Emp_name, Position FROM Employee WHERE Salary > 50000;

SELECT Customer_name FROM Customer C WHERE C.Reg_date < '2022-01-01' 
AND NOT EXISTS (SELECT * FROM IssueStatus I WHERE I.Issued_cust = C.Customer_Id);

SELECT Branch_no, COUNT(*) AS Total_Employees FROM Employee GROUP BY Branch_no;

SELECT DISTINCT C.Customer_name FROM IssueStatus I JOIN Customer C ON I.Issued_cust = C.Customer_Id 
WHERE MONTH(I.Issue_date) = 6 AND YEAR(I.Issue_date) = 2023;

SELECT Book_title FROM Books WHERE Book_title LIKE '%history%';

SELECT Branch_no, COUNT(*) AS Total_Employees FROM Employee GROUP BY Branch_no HAVING COUNT(*) > 5;

SELECT E.Emp_name, B.Branch_address FROM Employee E JOIN Branch B ON E.Branch_no = B.Branch_no 
WHERE E.Position = 'Manager';

SELECT DISTINCT C.Customer_name FROM IssueStatus I JOIN Books B ON I.Isbn_book = B.ISBN 
JOIN Customer C ON I.Issued_cust = C.Customer_Id WHERE B.Rental_Price > 25;



