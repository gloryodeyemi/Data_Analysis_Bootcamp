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