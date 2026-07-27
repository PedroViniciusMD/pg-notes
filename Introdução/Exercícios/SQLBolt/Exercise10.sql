SELECT MAX(years_employed) FROM employees;

SELECT role, AVG(years_employed) as Average_years
FROM employees
GROUP BY role;

SELECT building, SUM(years_employed)
FROM employees
GROUP BY building;