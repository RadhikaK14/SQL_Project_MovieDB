USE project_moviedb;

-- GROUP BY and Having : List of movies grouped by Imdb_rating having budget >=50 millions

SELECT Imdb_rating, 
		TRUNCATE(AVG(budget_in_millions),0) as budget_millions, 
        COUNT(movie_id) as Num_of_movies
FROM movies
GROUP BY Imdb_rating
HAVING budget_millions >= 50
ORDER BY Imdb_rating DESC;