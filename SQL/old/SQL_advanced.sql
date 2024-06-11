# CTEs (Common Table Expression) - it is temporary and not stored anywhere.
WITH CTE_Employee as (
SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
WHERE Salary > '45000'
)
SELECT *
FROM CTE_Employee;

# TEMP TABLES
CREATE TEMPORARY TABLE temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
);

SELECT * 
FROM temp_Employee;

INSERT INTO temp_Employee VALUES(
'1001', 'HR', '45000'
);

INSERT INTO temp_Employee
SELECT *
FROM EmployeeSalary;

DROP TABLE IF EXISTS Temp_Employee2;
CREATE TEMPORARY TABLE Temp_Employee2 (
JobTitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
);

INSERT INTO Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle;

SELECT * 
FROM Temp_Employee2;

# STRING FUNCTIONS
CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
);

INSERT INTO EmployeeErrors VALUES
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired');

SELECT *
FROM EmployeeErrors;

# Trim, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors;

SELECT EmployeeID, LTRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors;

SELECT EmployeeID, RTRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors;

# Replace
SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNmaeFixed
FROM EmployeeErrors;

# Substring
SELECT SUBSTRING(FirstName, 1, 3)
FROM EmployeeErrors;

SELECT SUBSTRING(err.FirstName, 1, 3), SUBSTRING(dem.FirstName, 1, 3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName, 1, 3) = SUBSTRING(dem.FirstName, 1, 3);
    
/* Use fuzzy match on;
-- Gender
-- LastName
-- Age
-- DOB
*/

# UPPER and LOWER
SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors;

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors;

# STORED PROCEDURES
CREATE procedure TEST2 ()
SELECT *
FROM EmployeeDemographics;

CALL TEST2;

-- delimiter ;
CREATE procedure TEMP_Employee ()
CREATE TEMPORARY TABLE temp_employees (
JobTitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int);

INSERT INTO temp_employees
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle;

SELECT *
FROM temp_employees;

CALL TEMP_Employee;

# SUBQUERIES
SELECT *
FROM EmployeeSalary;

SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary;

# with paratition by
SELECT EmployeeID, Salary, AVG(Salary) OVER() AS AllAvgSalary
FROM EmployeeSalary;

# why group by doesn't work
SELECT EmployeeID, Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1,2;

# subquery in from
SELECT a.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER() AS AllAvgSalary
		FROM EmployeeSalary) a;
        
# subquery in where
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN(
	SELECT EmployeeID
    FROM EmployeeDemographics
    WHERE Age > 30);
    
