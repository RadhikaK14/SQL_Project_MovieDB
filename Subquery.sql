USE project_moviedb;

-- SUBQUERY: movie list whose Imdb rating is greater than 'Forrest Gump'
SELECT movie_name,
		certificate_rating,
        movie_length,
        Imdb_rating
FROM movies
WHERE Imdb_rating > (SELECT Imdb_rating
						FROM movies
                        WHERE movie_name LIKE 'Forrest%')
ORDER BY Imdb_rating DESC;
