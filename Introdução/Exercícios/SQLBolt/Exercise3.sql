SELECT title, director FROM movies 
WHERE title LIKE 'Toy Story%';

SELECT title, director FROM movies 
WHERE director = 'John Lasseter';

--SELECT * FROM movies 
--WHERE director LIKE 'John Lasseter';

SELECT * FROM movies 
WHERE director NOT LIKE 'John Lasseter';

SELECT * FROM movies 
WHERE title LIKE 'WALL%';