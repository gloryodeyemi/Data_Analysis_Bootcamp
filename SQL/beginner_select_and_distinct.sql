USE `Parks_and_Recreation`;

-- SELECT Statement
SELECT *
FROM employee_demographics;

SELECT first_name, 
last_name, 
birth_Date, 
age,
age + 10 
FROM employee_demographics;

-- DISTINCT - select unique value
SELECT DISTINCT first_name, gender
FROM employee_demographics;

-- NOTES
-- PEMDAS -> Parenthensis, Exponent, Multiplication, Division, Addition, and Subtraction