-- Stored Procedures - save your SQL codes and reuse it over again

SELECT *
FROM employee_salary
WHERE salary >= 50000;

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries2();

-- Parameters are variables that allows inputs in your stored procedure
DELIMITER $$
CREATE PROCEDURE large_salaries3(emp_id_param INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = emp_id_param;
END $$
DELIMITER ;

CALL large_salaries3(1);
