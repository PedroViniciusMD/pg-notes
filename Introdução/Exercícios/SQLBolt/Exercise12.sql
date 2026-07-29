SELECT director, COUNT(*) FROM movies
GROUP BY director;

SELECT
    director,
    SUM(domestic_sales + international_sales)
FROM Movies AS mov
LEFT JOIN Boxoffice AS box
    ON mov.id = box.movie_id
GROUP BY director;