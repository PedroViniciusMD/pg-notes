SELECT * FROM Movies
WHERE title = "A Bug's Life" --coletando o id do filme
UPDATE Movies
SET director = 'John Lasseter'
WHERE id = 2

SELECT * FROM Movies 
WHERE title = 'Toy Story 2'
UPDATE movies
SET year = 1999
WHERE id = 3;

SELECT * FROM Movies 
WHERE title = 'Toy Story 8'
UPDATE Movies
SET title = 'Toy Story 3',
    director = 'Lee Unkrich'
WHERE id = 11
