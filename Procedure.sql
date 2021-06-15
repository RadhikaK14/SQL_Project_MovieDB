USE project_moviedb;

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
