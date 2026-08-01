-- Query 1
SELECT gen.gender as genero, COUNT(*)
FROM sales.customers as cus LEFT JOIN temp_tables.ibge_genders as gen
	ON LOWER(cus.first_name) = gen.first_name 
GROUP BY genero

-- Query 2
SELECT 
	CASE
		WHEN professional_status = 'freelancer' THEN 'freelancer'
		WHEN professional_status = 'retired' THEN 'aposentado'
		WHEN professional_status = 'clt' THEN 'clt'
		WHEN professional_status = 'self_employed' THEN 'pj'
		WHEN professional_status = 'businessman' THEN 'empresário'
		WHEN professional_status = 'student' THEN 'estudante'
		WHEN professional_status = 'civil_servant' THEN 'funcionário público'
		END as status_profissional,
		(COUNT(*)::FLOAT) / (SELECT COUNT(*) FROM sales.customers) as leads
FROM sales.customers
GROUP BY professional_status
ORDER BY leads

SELECT ((CURRENT_DATE - birth_date) / 365) as idade, (COUNT(*)::FLOAT / (SELECT COUNT(*) FROM sales.customers)) as leads
FROM sales.customers
GROUP BY idade
ORDER BY idade DESC

-- Query 3
SELECT 

	CASE 
		WHEN income <= 5000 then '0-5000'
		WHEN income >= 5000 AND income <= 10000 then '5000-10000'
		WHEN income >= 10000 AND income <= 15000 then '10000-15000'
		WHEN income > 15000 AND income <= 20000 THEN '15000-20000'
		WHEN income >= 20000 AND income <= 25000 then '20000-25000'
		else '25000 +' END as "faixa salarial",
		(COUNT(*)::FLOAT / (SELECT COUNT(*) FROM sales.customers)) as leads,
	CASE 
		WHEN income <= 5000 then 1
		WHEN income >= 5000 AND income <= 10000 then 2
		WHEN income >= 10000 AND income <= 15000 then 3
		WHEN income > 15000 AND income <= 20000 THEN 4
		WHEN income >= 20000 AND income <= 25000 then 5
		else 6 END as ordem

FROM sales.customers
GROUP BY "faixa salarial", ordem 
ORDER BY "ordem" DESC
