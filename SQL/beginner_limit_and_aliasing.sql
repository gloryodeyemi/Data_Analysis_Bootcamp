-- LIMIT
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

-- ALIASING -> change the name of the column
SELECT gender, AVG(age) AS avg_age -- the AS can be removed
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;

