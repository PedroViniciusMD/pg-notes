-- colar uma tabela sobre a outra
-- as tabelas devem ter mesmo numero de colunas
-- as colunas devem ser de mesmo tipo
-- union all (não remove duplicatas)
-- union (remove duplicatas)

SELECT colunas FROM tabela_1
UNION ALL
SELECT colunas FROM tabela_2

SELECT * FROM sales.products
UNION ALL
SELECT * FROM temp_tables.products_2
