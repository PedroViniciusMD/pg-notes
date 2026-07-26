SELECT title, domestic_sales, international_sales
FROM Boxoffice as box LEFT JOIN Movies as mov
ON box.movie_id = mov.id;

SELECT title, domestic_sales, international_sales
FROM Boxoffice as box LEFT JOIN Movies as mov
ON box.movie_id = mov.id
WHERE box.domestic_sales < box.international_sales;

SELECT title, domestic_sales, international_sales, rating
FROM Boxoffice as box LEFT JOIN Movies as mov
ON box.movie_id = mov.id
ORDER BY rating DESC;