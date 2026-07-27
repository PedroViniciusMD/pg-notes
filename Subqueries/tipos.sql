-- no WHERE
-- com WITH
-- no FROM
-- no SELECT

-- subquery dentro do where
SELECT * FROM sales.products
WHERE price = (SELECT MIN(price) FROM sales.products) -- a subquery deve retornar apenas um valor
