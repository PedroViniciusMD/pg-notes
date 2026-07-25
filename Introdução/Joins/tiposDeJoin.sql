-- Relacionar Múltiplas Tabelas
-- A tabela da Esquerda é declarada primeiro (esquerda do join)
-- Achar uma coluna que tenha match entre as tabelas
-- LEFT JOIN 
-- RIGHT JOIN
-- INNER JOIN/JOIN (Intersecção)
-- FULL JOIN

SELECT coluna_1, coluna_2
FROM tabela_1 TIPO 
JOIN tabela_2
    ON colunas_3 = coluna_1

SELECT *
FROM temp_tables.tabela_1

SELECT *
FROM temp_tables.tabela_2

SELECT t1.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 as t1 
LEFT JOIN  temp_tables.tabela_2 as t2
    ON t1.cpf = t2.cpf

SELECT t1.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 as t1 
INNER JOIN  temp_tables.tabela_2 as t2
    ON t1.cpf = t2.cpf

SELECT t1.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 as t1 
FULL JOIN  temp_tables.tabela_2 as t2
    ON t1.cpf = t2.cpf

SELECT t1.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 as t1 
RIGHT JOIN  temp_tables.tabela_2 as t2
    ON t1.cpf = t2.cpf