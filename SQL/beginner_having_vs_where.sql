-- HAVING (used after the group by) vs WHERE
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%' -- filter on the row level
GROUP BY occupation
HAVING AVG(salary) > 75000; -- filter on the aggregate funcion level
