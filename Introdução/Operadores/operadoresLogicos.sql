-- AND
-- OR
-- NOT
-- BETWEEN -> verifica se o valor esta dentro de um intervalo
-- IN
-- LIKE -> matchs imperfeitos
-- ILIKE -> igual ao LIKE, mas ignora Upper/Lower case
-- IS NULL -> seleciona as linhas nulas

-- BETWEEN
SELECT *
FROM sales.products
WHERE price >= 100000 and price <= 200000
ORDER BY price DESC

SELECT *
FROM sales.products
WHERE price BETWEEN 100000 AND 200000 
ORDER BY price DESC


-- NOT
SELECT *
FROM sales.products
WHERE price < 100000 OR price > 200000

SELECT *
FROM sales.products
WHERE price NOT BETWEEN 100000 OR 200000


-- IN
SELECT *
FROM sales.products
WHERE brand = 'HONDA' OR brand = 'TOYOTA' OR brand = 'RENAULT'

SELECT *
FROM sales.products
WHERE brand IN ('HONDA', 'TOYOTA', 'RENAULT')

SELECT *
FROM sales.products
WHERE brand NOT IN ('HONDA', 'TOYOTA', 'RENAULT')

-- LIKE
SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name = 'ANA'

SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name LIKE 'ANA%' -- % -> é um coringa para qualquer sequência de char

-- ILIKE
SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name ILIKE 'ana%' -- Ignora se as letras sao maiúsculas/minúsculas

-- ISNULL

