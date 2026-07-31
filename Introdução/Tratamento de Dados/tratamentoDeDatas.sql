-- INTERVAL
-- DATE_TRUNC
-- EXTRACT

--INTERVAL

SELECT CURRENT_DATE + 10 -- -> o slq trabalha com dias por padrão

SELECT CURRENT_DATE + INTERVAL '10 weeks' --> soma 10 semanas a partir da data atual
SELECT CURRENT_DATE + INTERVAL '10 months'
SELECT CURRENT_DATE + INTERVAL '10 hours'
--SELECT (CURRENT_DATE + INTERVAL '10 weeks')::DATE
--SELECT CAST(CURRENT_DATE + INTERVAL '10 weeks' as DATE)
--SELECT (current_date - '2018-06-01')
--SELECT (current_date - '2018-06-01') / 7
SELECT CURRENT_DATE - INTERVAL '10 hours'

-- DATE_TRUNC
SELECT DATE_TRUNC('month', visit_page_date)::DATE AS visit_page_month,
COUNT(*)
FROM sales.funnel
GROUP BY visit_page_month

--EXTRACT
SELECT '2022-01-30'::DATE,
	EXTRACT('dow' FROM '2022-01-30'::DATE)

