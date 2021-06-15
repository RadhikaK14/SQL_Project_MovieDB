USE project_moviedb;
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