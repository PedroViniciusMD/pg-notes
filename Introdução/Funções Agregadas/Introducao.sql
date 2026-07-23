-- COUNT()
-- SUM()
-- MIN()
-- MAX()
-- AVG()

SELECT COUNT(*) --contagem de todas as linhas de uma tabela
FROM sales.funnel

SELECT COUNT(paid_date) --contagem das linhas NÃO NULAS de uma coluna
FROM sales.funnel

SELECT COUNT(DISTINCT product_id) --contagem distinta de linhas de uma coluna
FROM sales.funnel
WHERE visit_page_date BETWEEN '20210101' AND '20210131'

SELECT MIN(price)
FROM sales.products

SELECT MAX(price)
FROM sales.products

SELECT AVG(price)
FROM sales.products

SELECT MIN(price), MAX(price), AVG(price)
FROM sales.products

SELECT * 
FROM sales.products
WHERE price = (SELECT MAX(price) FROM sales.products)