-- +
-- -
-- /
-- ˆ
-- %
-- || -> Não é um op aritmético

SELECT 
	email, 
	birth_date,
	(current_date - birth_date) / 365 AS idade_do_cliente --> gera uma coluna nova chamada de idade_do_cliente
                                        --AS "idade do cliente"
FROM sales.customers

SELECT 
	email, 
	birth_date,
	(current_date - birth_date) / 365 AS idade_do_cliente
									--AS "idade do cliente"
FROM sales.customers
ORDER BY idade_do_cliente -- filtra usando a coluna que foi criada

SELECT 
	first_name, 
	last_name, 
	(first_name || ' ' || last_name) as nome_completo -- unindo strings
FROM sales.customers