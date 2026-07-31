-- Criando Tabela Com Uma Query
SELECT customer_id, ((current_date - birth_date) / 365) as idade
INTO temp_tables.customers_age --criando a tabela (customers_age) e colocando no schema que eu quero (temp_tables)
FROM sales.customers 

SELECT * FROM temp_tables.customers_age -- acessando a tabela que criei

-- Usando CREATE
CREATE TABLE IF NOT EXISTS temp_tables.profissoes(
	professional_status VARCHAR,
	status_profissional VARCHAR
)

CREATE TABLE IF NOT EXISTS mytable (
    column DataType TableConstraint DEFAULT default_value,
    another_column DataType TableConstraint DEFAULT default_value,
    …
);


-- Inserindo Dados nas Tabelas (INSERT INTO)
INSERT INTO temp_table.profissoes(
professiona_status,status_profissional)
VALUES 
('FREELANCER', 'FREELANCER'), -- uma linha com 2 colunas
('RETIRED', 'APOSENTADO'),
('CLT', 'CLT'),
('SELF_EMPLOYED', 'PJ'),
('OTHER', 'OUTRO')

-- Delentando Uma Tabela
DROP TABLE temp_tables.profissoes