-- CASE WHEN
-- COALESCE() --> tratamento de dados nulos

-- CASE WHEN

SELECT coluna_1, 
CASE coluna_1
    WHEN coluna_1 (condicao_1) THEN 'saida_1'
    WHEN coluna_1 (condicao_2) THEN 'saida_2'
    WHEN coluna_1 (condicao_3) THEN 'saida_3'
    ELSE 'saida_4'
    END AS 'nome_coluna_criada'
FROM tabela_1


with renda as (
	SELECT income,
	CASE
		WHEN income < 5000 then '0-5k'
		WHEN income >= 5000 AND income <= 10000 then '5-10k'
		WHEN income >= 10000 AND income <= 15000 then '10-15k'
		ELSE '15k+'
		END as faixa_de_renda
	FROM sales.customers
)

SELECT faixa_de_renda, COUNT(*)
FROM renda
GROUP BY faixa_de_renda
ORDER BY faixa_de_renda DESC

-- COALESCE()

SELECT *, -- sem usar o comando
	CASE
		WHEN population IS NOT NULL THEN population
		ELSE (SELECT AVG(POPULATION) FROM temp_tables.regions)
		END populacao_ajustada
FROM temp_tables.regions


SELECT *, COALESCE(population, (SELECT AVG(population) FROM temp_tables.regions)) as populacao_ajustada -- roda a lista ajustando valores nulos pelo primeiro valor nao nulo encontrado
FROM temp_tables.regions

SELECT COALESCE(NULL, NULL, 10); -- retorna 10

SELECT
    first_name,
    COALESCE(phone, 'Telefone não informado') AS telefone -- se telefone nulo retorna mensagem
FROM customers;