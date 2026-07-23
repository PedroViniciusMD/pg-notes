SELECT email, income, (income / 1200) AS "salários mínimos"
FROM sales.customers

SELECT email, income, (income / 1200) AS "salários mínimos", ((income / 1200) > 4) AS "acima de 4 salários"
FROM sales.customers

SELECT email, income, (income / 1200) AS "salários mínimos", ((income) / 1200 > 4) AS "acima de 4 salários"
FROM sales.customers
WHERE ((income) / 1200) BETWEEN 4 and 5

SELECT email, city, state
FROM sales.customers
WHERE state IN ('MT', 'MG')

SELECT email, city, state
FROM sales.customers
WHERE NOT state = 'SP'

SELECT city
FROM temp_tables.regions
WHERE city ILIKE 'z%'