-- usar select antes para evitar erros

-- Inserção De Colunas (ADD)
ALTER TABLE sales.customers
ADD customer_age INT -- Adição da coluna 'customer_age'
-- DEFAULT 20 -> colocaria um valor DEFAULT em todas as linhas da coluna

-- Alteração de Colunas
ALTER TABLE sales.customers
ALTER COLUMN customer_age TYPE VARCHAR

-- Deleção de Coluna (DROP)
ALTER TABLE sales.customers
DROP COLUMN customer_age
