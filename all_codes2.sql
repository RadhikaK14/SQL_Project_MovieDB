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

-- Functions : is_good(movieID) based on ratings.

DELIMITER // 
CREATE FUNCTION is_good(Imdb_rating DEC(4,2))
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
DECLARE movie_status VARCHAR(10);

IF Imdb_rating > 9 THEN
SET movie_status = 'Very Good';

ELSEIF (Imdb_rating >= 8 AND Imdb_rating <= 9) THEN
SET movie_status = 'Good';

ELSEIF (Imdb_rating >= 7 AND Imdb_rating < 8) THEN
SET movie_status = 'Average';

ELSEIF (Imdb_rating < 7) THEN
SET movie_status = 'Not great';
END IF;

RETURN (movie_status);

END //

DELIMITER ;

SELECT 
    movie_name,
    release_date,
    movie_length,
    is_good(Imdb_rating) as Movie_status
FROM
    movies;

-- SUBQUERY: movie list whose Imdb rating is greater than 'Forrest Gump'
SELECT movie_name,
		certificate_rating,
        movie_length,
        Imdb_rating
FROM movies
WHERE Imdb_rating > (SELECT Imdb_rating
						FROM movies
                        WHERE movie_name LIKE 'Forrest%');

-- JOINS: List of companies that has produced film of highest revenue/profit?
CREATE VIEW company_profit AS
(SELECT p.company_name,
		m.movie_name, 
		(m.revenue_in_millions - m.budget_in_millions) as Profit
FROM movies m
JOIN production_house ph
	ON ph.movie_id = m.movie_id
JOIN production p
	ON p.production_id = ph.prod_id
ORDER BY Profit DESC);

-- List of movies grouped by Imdb_rating having budget >=50 millions
SELECT Imdb_rating, 
		SUM(budget_in_millions) as budget, 
        COUNT(movie_id) as Num_of_movies
FROM movies
GROUP BY Imdb_rating
HAVING budget >= 50
ORDER BY Imdb_rating DESC;

-- EVENT to create a backup table
SET GLOBAL event_scheduler = ON;
USE project_moviedb;

CREATE TABLE daily_movie_count
			(id INT PRIMARY KEY AUTO_INCREMENT, 
            Number_of_movies INT, 
            Updated_on DATE NOT NULL);

DELIMITER //

CREATE EVENT movies_count
ON SCHEDULE EVERY 1 DAY
DO BEGIN
		INSERT INTO daily_movie_count (Number_of_movies, Updated_on)
		(SELECT count(movie_id), NOW() from movies);
END//
-- Change Delimiter
DELIMITER ;

SELECT * from daily_movie_count;

-- DROP TABLE daily_movie_count;
DROP EVENT movies_count;
-- DELETE FROM daily_movie_count WHERE id =1;

-- PROCEDURE to display movie case

DELIMITER //

CREATE PROCEDURE display_cast(dir_movie_name VARCHAR(50)) 
BEGIN

	(SELECT m.movie_name,
			CONCAT(c.first_name, ' ', c.last_name) as Name, 
            r.role_name as Role
	FROM movies m
    JOIN movie_cast mc ON mc.movie_id = m.movie_id
    JOIN crew c ON c.crew_id = mc.crew_id
    JOIN role r ON r.role_id = mc.role_id
    WHERE mc.movie_id = (SELECT movie_id FROM movies WHERE movie_name = dir_movie_name));
    
END //

DELIMITER ;

CALL display_cast('the dark knight');

-- DROP PROCEDURE display_cast;

-- TRIGGER to create back up of movie count table
CREATE TABLE daily_movie_count_backup (
	id INT,
    Number_of_movies INT NOT NULL,
    old_updated_on DATE,
    deleted_on DATETIME);

DELIMITER //

CREATE TRIGGER backup_movie_count
BEFORE DELETE ON daily_movie_count
FOR EACH ROW
BEGIN
    INSERT INTO daily_movie_count_backup
    SET id = old.id,
		Number_of_movies = old.Number_of_movies,
        old_updated_on = old.Updated_on,
        deleted_on = NOW();
END//

DELIMITER ;

DELETE FROM daily_movie_count
WHERE id = 5;

SELECT * FROM daily_movie_count_backup;

-- DROP TRIGGER backup_movie_count;
-- DROP TABLE daily_movie_count_backup;

