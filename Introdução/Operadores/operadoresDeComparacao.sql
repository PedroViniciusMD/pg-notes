-- =
-- >
-- <
-- >=
-- <=
-- <>

SELECT 
	first_name,
	professional_status,
	(professional_status = 'clt') AS clt_status
FROM sales.customers