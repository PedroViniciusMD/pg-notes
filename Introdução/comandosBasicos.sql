-- SELECT #########################################################################
SELECT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1

SELECT email
FROM sales.customers

SELECT email, first_name, last_name
FROM sales.customers

SELECT * --selecionar todas as colunas
FROM sales.customers

-- DISTINCT #########################################################################
SELECT DISTINCT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1

SELECT DISTINCT brand
FROM sales.products

SELECT DISTINCT brand, model_year
FROM sales.products

-- WHERE #########################################################################
SELECT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1
WHERE condicao=true

SELECT email
FROM sales.customers
WHERE state = 'SC' -- aspas simples para manipular dados em formato de texto

SELECT email, state
FROM sales.customers
WHERE state = 'SC' OR state = 'MS'

SELECT email, state, birth_date
FROM sales.customers
WHERE (state = 'SC' OR state = 'MS') AND birth_date < '2000-12-28' -- ou 20001228

-- ORDER BY #########################################################################
SELECT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1
WHERE condicao=true
ORDER BY coluna_1 -- o padrao de ordenacao é asc

SELECT *
FROM sales.products
ORDER BY price -- ASC/DESC

SELECT DISTINCT state
FROM sales.customers
ORDER BY state --[a..z] 

-- LIMIT #########################################################################
SELECT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1
WHERE condicao=true
ORDER BY coluna_1 
LIMIT n

SELECT *
FROM sales.funnel
LIMIT 10

SELECT coluna1, coluna2
FROM schema_1.tabela_1
ORDER BY coluna_1
LIMIT n OFFSET m; -- x -> linhas para pular até começar a contagem (paginação)
                        -- LIMIT quantidade OFFSET linhas_para_pular;