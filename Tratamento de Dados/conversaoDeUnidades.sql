-- ::
-- CAST


-- ::
SELECT '2021-10-01' - '2021-02-01' -- erro de tipo

SELECT '2021-10-01'::DATE - '2021-02-01'::DATE -- usando op

SELECT '100'::NUMERIC - '10'::NUMERIC

SELECT REPLACE (112122::TEXT, '1', 'A')

SELECT coluna_n::DATE -- transforma o tipo de dado da coluna
FROM tabela

-- usando CAST

SELECT CAST('2021-10-01' as DATE) - CAST('2021-02-01' as DATE)

SELECT CAST('100' AS NUMERIC)  - CAST('10' AS NUMERIC)
