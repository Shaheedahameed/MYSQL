DELIMITER //

CREATE PROCEDURE AddWorker(IN p_WorkerId INT,IN p_FirstName CHAR(25),IN p_LastName CHAR(25),IN p_Salary INT,
    IN p_JoiningDate DATETIME,IN p_Department CHAR(25))
BEGIN INSERT INTO Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department)
    VALUES (p_WorkerId, p_FirstName, p_LastName, p_Salary, p_JoiningDate, p_Department);
END //

DELIMITER;

CALL AddWorker(1, 'John', 'Doe', 50000, '2023-01-15 09:00:00', 'Engineering');

DELIMITER //

CREATE PROCEDURE GetWorkerSalary(IN p_WorkerId INT,OUT p_Salary INT)
BEGIN SELECT Salary INTO p_Salary FROM Worker WHERE Worker_Id = p_WorkerId;END //

DELIMITER ;

SET @worker_salary = 0;
CALL GetWorkerSalary(1, @worker_salary);
SELECT @worker_salary AS Salary;

DELIMITER //

CREATE PROCEDURE UpdateWorkerDepartment(IN p_WorkerId INT,IN p_Department CHAR(25))

BEGIN
    UPDATE Worker
    SET Department = p_Department
    WHERE Worker_Id = p_WorkerId;
END //

DELIMITER ;

CALL UpdateWorkerDepartment(1, 'Marketing');

DELIMITER //

CREATE PROCEDURE GetWorkerCountByDepartment(IN p_Department CHAR(25),OUT p_workerCount INT)
BEGIN
    SELECT COUNT(*) INTO p_workerCount FROM Worker WHERE Department = p_Department;
END //

DELIMITER ;

SET @worker_count = 0;
CALL GetWorkerCountByDepartment('Engineering', @worker_count);
SELECT @worker_count AS WorkerCount;

DELIMITER //

CREATE PROCEDURE GetAverageSalaryByDepartment(IN p_Department CHAR(25),OUT p_avgSalary DECIMAL(15,2))
BEGIN
    SELECT AVG(Salary) INTO p_avgSalary FROM Worker WHERE Department = p_Department;
END //

DELIMITER ;

SET @avg_salary = 0;
CALL GetAverageSalaryByDepartment('Engineering', @avg_salary);
SELECT @avg_salary AS AverageSalary;

