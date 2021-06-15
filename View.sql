USE project_moviedb;

-- VIEW: List of Genres of movies with their avg time and number of movies
CREATE VIEW Genre_list AS
(SELECT g.genre_name AS Genre, 
 		Truncate(AVG(m.movie_length),0) AS Avg_movie_length, 
         COUNT(m.movie_id) AS Movie_Count
FROM movies m
JOIN movie_genre mg 
	ON m.movie_id = mg.movie_id
JOIN genre g
	ON g.genre_id = mg.genre_id
GROUP BY Genre
ORDER BY Avg_movie_length);

SELECT * FROM Genre_list;

-- DROP VIEW Genre_list;