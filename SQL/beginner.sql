USE `Parks_and_Recreation`;

SELECT *
FROM employee_demographics;

SELECT first_name, 
last_name, 
birth_Date, 
age,
age + 10 
FROM employee_demographics;

# DISTINCT - select unique value
SELECT DISTINCT first_name, gender
FROM employee_demographics;

-- WHERE Clause
SELECT *
FROM employee_salary
WHERE first_name = 'Leslie';

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_salary
WHERE salary <= 50000;

SELECT *
FROM employee_demographics
WHERE gender = 'Female';

SELECT *
FROM employee_demographics
WHERE gender != 'Female';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- Logical Operators -> AND, NOT, OR
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;

-- LIKE Statement
-- Special characters -> % and _ 
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'; # starts with a and only two characters after

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'; # starts with a and three characters after with any number of characters

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%';



# NOTES
# * PEMDAS -> Parenthensis, Exponent, Multiplication, Division, Addition, and Subtraction