SELECT prod.brand, COUNT(fun.visit_page_date)
FROM sales.funnel as fun LEFT JOIN sales.products as prod
ON fun.product_id = prod.product_id
GROUP BY prod.brand
ORDER BY COUNT(fun.visit_page_date) DESC

SELECT stores.store_name, COUNT(fun.visit_page_date)
FROM sales.funnel as fun LEFT JOIN sales.stores as stores
ON stores.store_id = fun.store_id
GROUP BY stores.store_name
ORDER BY COUNT(fun.visit_page_date) DESC

SELECT r.size, COUNT(c.customer_id)
FROM sales.customers as c LEFT JOIN temp_tables.regions as r
ON LOWER(c.city) = LOWER(r.city)
GROUP BY r.size
ORDER BY COUNT(c.customer_id) DESC
