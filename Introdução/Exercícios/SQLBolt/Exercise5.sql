SELECT city, population FROM north_american_cities
WHERE country = 'Canada';

SELECT * FROM north_american_cities
WHERE country = 'United States'
ORDER BY latitude DESC;

SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;

SELECT city, population FROM north_american_cities
WHERE country LIKE 'Mexico'
ORDER BY population DESC
LIMIT 2;

SELECT city, population FROM north_american_cities
WHERE country LIKE 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2;