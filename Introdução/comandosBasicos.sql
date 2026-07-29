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


Query order of execution

1. FROM and JOINs

The FROM clause, and subsequent JOINs are first executed to determine the total working set of data that is being queried. This includes subqueries in this clause, and can cause temporary tables to be created under the hood containing all the columns and rows of the tables being joined.

2. WHERE

Once we have the total working set of data, the first-pass WHERE constraints are applied to the individual rows, and rows that do not satisfy the constraint are discarded. Each of the constraints can only access columns directly from the tables requested in the FROM clause. Aliases in the SELECT part of the query are not accessible in most databases since they may include expressions dependent on parts of the query that have not yet executed.

3. GROUP BY

The remaining rows after the WHERE constraints are applied are then grouped based on common values in the column specified in the GROUP BY clause. As a result of the grouping, there will only be as many rows as there are unique values in that column. Implicitly, this means that you should only need to use this when you have aggregate functions in your query.

4. HAVING

If the query has a GROUP BY clause, then the constraints in the HAVING clause are then applied to the grouped rows, discard the grouped rows that don't satisfy the constraint. Like the WHERE clause, aliases are also not accessible from this step in most databases.

5. SELECT

Any expressions in the SELECT part of the query are finally computed.

6. DISTINCT

Of the remaining rows, rows with duplicate values in the column marked as DISTINCT will be discarded.

7. ORDER BY

If an order is specified by the ORDER BY clause, the rows are then sorted by the specified data in either ascending or descending order. Since all the expressions in the SELECT part of the query have been computed, you can reference aliases in this clause.

8. LIMIT / OFFSET

Finally, the rows that fall outside the range specified by the LIMIT and OFFSET are discarded, leaving the final set of rows to be returned from the query.