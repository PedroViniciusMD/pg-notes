SELECT DISTINCT building FROM employees;

SELECT * FROM Buildings;

SELECT DISTINCT Building_name, Role
FROM Buildings AS b LEFT JOIN Employees as e
ON b.Building_name = e.Building;