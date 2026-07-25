SELECT c.professional_status, COUNT(f.paid_date) AS cont
FROM sales.funnel as f 
LEFT JOIN sales.customers as c
	ON f.customer_id = c.customer_id
GROUP BY c.professional_status
ORDER BY cont DESC

SELECT gen.gender, COUNT(f.paid_date) as cont
FROM sales.funnel as f LEFT JOIN sales.customers as c
	ON f.customer_id = c.customer_id
LEFT JOIN temp_tables.ibge_genders as gen
	ON LOWER(c.first_name) = gen.first_name --deixando todas as linhas em letras minúsculas para obter o match
GROUP BY gen.gender

SELECT reg.region, COUNT(f.visit_page_date)
FROM sales.funnel as f LEFT JOIN sales.customers as c
	ON f.customer_id = c.customer_id
LEFT JOIN temp_tables.regions as reg
	ON LOWER(c.city) = LOWER(reg.city)
	AND LOWER(c.state) = LOWER(reg.state)
GROUP BY reg.region
ORDER BY COUNT(f.visit_page_date) DESC
