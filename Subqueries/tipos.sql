-- no WHERE
-- com WITH
-- no FROM
-- no SELECT

-- subquery dentro do where
SELECT * FROM sales.products
WHERE price = (SELECT MIN(price) FROM sales.products) -- a subquery deve retornar apenas um valor

-- subquery com with ( dividir consultas complexas em partes menores, tornando o código mais organizado e legível.)

WITH alguma_tabela as (
	SELECT professional_status, (current_date - birth_date) / 365 as idade
	FROM sales.customers
)
SELECT professional_status, AVG(idade) AS idade_media
FROM alguma_tabela
GROUP BY professional_status


SELECT * -- sem with
FROM (
    SELECT
        customer_id,
        first_name,
        professional_status
    FROM sales.customers
) AS clientes
WHERE professional_status = 'clt';


-- subquery no from (usar with)
SELECT professional_status, AVG(idade) AS idade_media
FROM (SELECT professional_status, (current_date - birth_date) / 365 as idade
	FROM sales.customers)
GROUP BY professional_status

-- subquery no select
SELECT -- muito pesado
	fun.visit_id,
	fun.visit_page_date,
	sto.store_name,
	(SELECT COUNT(*)
	FROM sales.funnel as fun2
	WHERE visit_page_date <= fun.visit_page_date AND fun2.store_id = fun.store_id) AS visitas_acumuladas
FROM sales.funnel as fun
LEFT JOIN sales.stores as sto
ON fun.store_id = sto.store_id
ORDER BY sto.store_name, fun.visit_page_date
