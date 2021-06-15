USE project_moviedb;

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