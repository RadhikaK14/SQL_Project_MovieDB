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

