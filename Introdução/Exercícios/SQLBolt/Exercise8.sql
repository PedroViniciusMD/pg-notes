SELECT *
FROM Employees as e LEFT JOIN Buildings as b
ON e.building = b.building_name
WHERE e.building IS NULL

SELECT DISTINCT building_name
FROM buildings as b LEFT JOIN employees as e
ON b.building_name = e.building
WHERE e.role IS NULL;
