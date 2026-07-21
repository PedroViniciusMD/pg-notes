SELECT DISTINCT city
FROM sales.customers
WHERE state = 'MG'
ORDER BY city

SELECT visit_id 
FROM sales.funnel 
WHERE paid_date IS NOT NULL
ORDER BY paid_date DESC
LIMIT 10

SELECT * 
FROM sales.customers 
WHERE birth_date > '20000101'
ORDER BY score DESC
LIMIT 10