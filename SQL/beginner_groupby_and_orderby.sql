-- GROUP BY -> Group rows that have the same values in the specified column(s) you are grouping on
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary 
FROM employee_salary
GROUP BY occupation, salary;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- ORDER BY -> Sort the result in ascending or descending order
SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;

SELECT *
FROM employee_demographics
ORDER BY 5, 4; -- using position instead of the column name
