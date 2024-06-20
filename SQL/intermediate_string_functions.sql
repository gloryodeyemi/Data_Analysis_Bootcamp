-- String Functions

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

-- TRIM -> gets rid of the trailing or leading whitespaces
SELECT TRIM('        sky         ');

-- LTRIM -> gets rid of the whitespaces on the left side
SELECT LTRIM('        sky         ');

-- RTRIM -> gets rid of the whitespaces on the right side
SELECT RTRIM('        sky         ');

-- SUBSTRING
SELECT first_name, 
LEFT(first_name, 4), -- first 4 characters from the left
RIGHT(first_name, 4), -- first 4 characters from the right
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

-- REPLACE -> replaces existing character with a different character
SELECT first_name, 
REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

-- LOCATE
SELECT LOCATE('o', 'Glory');

SELECT first_name, 
LOCATE('An', first_name)
FROM employee_demographics;

-- CONCAT - combine columns
SELECT first_name, last_name, 
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;
