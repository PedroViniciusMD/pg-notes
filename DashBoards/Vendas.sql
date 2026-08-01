-- Query 1
WITH leads as (
	SELECT DATE_TRUNC('month', visit_page_date)::DATE as visit_page_month,
	COUNT(*) as visit_page_count
	FROM sales.funnel
	GROUP BY visit_page_month
	ORDER BY COUNT(*) DESC
), 

payments as (
	SELECT  DATE_TRUNC('month', fun.paid_date)::DATE as paid_month,
	COUNT(*) as paid_count,
	SUM(pro.price * (1 + fun.discount)) as receita
	
	FROM sales.funnel as fun
	LEFT JOIN sales.products as pro
		ON fun.product_id = pro.product_id
	WHERE fun.paid_date IS NOT NULL
	GROUP BY paid_month
	ORDER BY paid_month
)

SELECT leads.visit_page_month as "mês",
		leads.visit_page_count as "leads",
		pay.paid_count as "vendas",
		(pay.receita / 1000) as "receita",
		(pay.paid_count::FLOAT / leads.visit_page_count::FLOAT) as "conversão",
		(pay.receita / pay.paid_count / 1000) as "ticket médio"
FROM leads LEFT JOIN payments as pay
	ON leads.visit_page_month = pay.paid_month

-- Query 2
SELECT 
	'BRAZIL' as país,
	cus.state as estado,
	COUNT(fun.paid_date) as vendas
FROM sales.funnel as fun
LEFT JOIN sales.customers as cus
	ON fun.customer_id = cus.customer_id
WHERE paid_date BETWEEN '2021-08-01' AND '2021-08-31'::DATE
GROUP BY país, estado
ORDER BY vendas DESC

-- Query 3
SELECT pro.brand as marca,
		COUNT(fun.paid_date) as vendas
FROM sales.products as pro LEFT JOIN sales.funnel as fun
	ON pro.product_id = fun.product_id
GROUP BY marca
ORDER BY vendas DESC

-- Query 4
SELECT sto.store_name as loja,
		COUNT(fun.paid_date) as vendas
FROM sales.stores as sto LEFT JOIN sales.funnel as fun
	ON sto.store_id = fun.store_id 
GROUP BY loja
ORDER BY vendas DESC

-- Query 5
SELECT COUNT (*) as visitas,
		EXTRACT('dow' FROM visit_page_date) as dia_semana,
		CASE
			WHEN EXTRACT ('dow' FROM visit_page_date)=0 THEN 'domingo'
			WHEN EXTRACT ('dow' FROM visit_page_date)=1 THEN 'segunda'
			WHEN EXTRACT ('dow' FROM visit_page_date)=2 THEN 'terça'
			WHEN EXTRACT ('dow' FROM visit_page_date)=3 THEN 'quarta'
			WHEN EXTRACT ('dow' FROM visit_page_date)=4 THEN 'quinta'
			WHEN EXTRACT ('dow' FROM visit_page_date)=5 THEN 'sexta'
			WHEN EXTRACT ('dow' FROM visit_page_date)=6 THEN 'sabado'
			ELSE NULL END as "dia da semana"
FROM sales.funnel
WHERE visit_page_date BETWEEN '2021-08-01' AND '2021-08-31'
GROUP BY dia_semana, "dia da semana"
