SELECT COUNT(*)
FROM sales.customers
WHERE ((current_date - birth_date) / 365 ) < 30

SELECT MIN(birth_date), MAX(birth_date)
FROM sales.customers

SELECT *
FROM sales.customers
WHERE income = (SELECT MAX(income) FROM sales.customers)

SELECT brand, COUNT(*)
FROM sales.products
GROUP BY brand
ORDER BY brand ASC

SELECT brand, model_year, COUNT(*)
FROM sales.products
GROUP BY brand, model_year
ORDER BY brand ASC, model_year


SELECT brand, COUNT(*)
FROM sales.products
GROUP BY brand
HAVING COUNT(*) > 10