SELECT mov.title, (box.domestic_sales + box.international_sales) / 1000000 AS "sum sales"
FROM Movies AS mov
LEFT JOIN Boxoffice AS box
ON mov.id = box.movie_id;

SELECT mov.title,  (box.rating * 10) as "percent"
FROM Movies AS mov
LEFT JOIN Boxoffice AS box
ON mov.id = box.movie_id;

SELECT mov.title, mov.year
FROM Movies as mov LEFT JOIN Boxoffice as box
ON mov.id = box.movie_id
WHERE mov.year % 2 = 0;
