USE SQLTutorial;

CREATE TABLE EmployeeDemographics
(EmployeedID int, 
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
);

CREATE TABLE EmployeeSalary
(EmployeeID int,
JobTitle varchar(50),
Salary int
);

INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male');

Insert into EmployeeDemographics VALUES
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male');

Insert Into EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000);

SELECT *
FROM EmployeeDemographics;

SELECT *
FROM EmployeeDemographics
LIMIT 5;

SELECT DISTINCT(EmployeedID)
FROM EmployeeDemographics;

SELECT DISTINCT(Gender)
FROM EmployeeDemographics;

SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics;

SELECT MAX(Salary)
FROM EmployeeSalary;

SELECT MIN(Salary)
FROM EmployeeSalary;

SELECT AVG(Salary)
FROM EmployeeSalary;

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim';

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim';

SELECT *
FROM EmployeeDemographics
WHERE Age >= 30;

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32;

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male';

# starts with s
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%';

# contains s anywhere in last name
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%';

# starts with s and contains o
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%'; # follows in order

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NULL;

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NOT NULL;

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael');

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
Group BY Gender;

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
Group BY Gender, Age;

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
Group BY Gender
ORDER BY CountGender DESC;

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender;

SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC;

Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male');

Insert Into EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000);

ALTER TABLE EmployeeDemographics CHANGE EmployeedID EmployeeID int;

Create Table WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
);

Insert into WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female');