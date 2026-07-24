-- Agrupar os registros semelhantes de uma coluna
-- Usado em conjunto com funções de agregação
-- Sozinho vira um DISTINCT
SELECT coluna, funcao_agregacao(coluna)
FROM tabela
GROUP BY coluna;


SELECT state, COUNT(*)
FROM sales.customers
GROUP BY state
ORDER BY COUNT(*) DESC

SELECT state, professional_status, COUNT(*)
FROM SALES.CUSTOMERS
GROUP BY state, professional_status -- contagem agrupada de varios clientes


--HAVING
-- -> filtra grupos criados pelo group by (depois do agrupamento)
-- WHERE (filtra depois do agrupamento)

SELECT state, COUNT(*)
FROM sales.customers
GROUP BY state
-- WHERE COUNT(*) > 100
HAVING COUNT(*) > 100
ORDER BY COUNT(*) DESC

SELECT state, COUNT(*)
FROM sales.customers
GROUP BY state
-- WHERE COUNT(*) > 100
HAVING COUNT(*) > 100 AND state <> 'MG' -- Filtrando com COUNT e com função não agregada
ORDER BY COUNT(*) DESC

