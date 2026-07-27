SELECT COUNT(role) FROM employees
WHERE role = 'Artist';

SELECT role, COUNT(*) FROM employees
GROUP BY role;

SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";
