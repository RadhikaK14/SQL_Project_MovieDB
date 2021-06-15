use project_moviedb;

CREATE TABLE `project_moviedb`.`crew` (
  `crew_id` VARCHAR(15) NOT NULL,
  `first_name` VARCHAR(25) NOT NULL,
  `last_name` VARCHAR(25) NULL,
  `dob` DATE NULL,
  `gender` VARCHAR(10) NULL,
  PRIMARY KEY (`crew_id`));
  
  CREATE TABLE `project_moviedb`.`role` (
  `role_id` VARCHAR(6) NOT NULL,
  `role_name` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`role_id`));
  
  CREATE TABLE `project_moviedb`.`genre` (
  `genre_id` VARCHAR(7) NOT NULL,
  `genre_name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`genre_id`));

CREATE TABLE `project_moviedb`.`production` (
  `production_id` VARCHAR(8) NOT NULL,
  `company_name` VARCHAR(70) NULL,
  PRIMARY KEY (`production_id`));

CREATE TABLE `project_moviedb`.`movies` (
  `movie_id` INT NOT NULL,
  `movie_name` VARCHAR(50) NOT NULL,
  `certificate_rating` VARCHAR(5) NULL,
  `release_date` YEAR NULL,
  `movie_length` INT NOT NULL,
  `language` VARCHAR(10) NULL,
  `budget_in_millions` DECIMAL(6,2) NULL,
  `revenue_in_millions` DECIMAL(6,2) NULL,
  `Imdb_rating` DECIMAL(4,2) NULL,
  PRIMARY KEY (`movie_id`));

CREATE TABLE `project_moviedb`.`movie_cast` (
  `mc_id` VARCHAR(15) NOT NULL,
  `crew_id` VARCHAR(10) NOT NULL,
  `movie_id` INT NOT NULL,
  `role_id` VARCHAR(6) NULL,
  PRIMARY KEY (`mc_id`),
  FOREIGN KEY (`crew_id`)
  REFERENCES `project_moviedb`.`crew` (`crew_id`),
  FOREIGN KEY (`movie_id`)
  REFERENCES `project_moviedb`.`movies` (`movie_id`),
  FOREIGN KEY (`role_id`)
  REFERENCES `project_moviedb`.`role` (`role_id`));

CREATE TABLE `project_moviedb`.`movie_genre` (
  `mg_id` VARCHAR(15) NOT NULL,
  `movie_id` INT NOT NULL,
  `genre_id` VARCHAR(7) NOT NULL,
  PRIMARY KEY (`mg_id`),
  FOREIGN KEY (`genre_id`)
  REFERENCES `project_moviedb`.`genre` (`genre_id`),
  FOREIGN KEY (`movie_id`)
  REFERENCES `project_moviedb`.`movies` (`movie_id`));

CREATE TABLE `project_moviedb`.`production_house` (
  `ph_id` VARCHAR(15) NOT NULL,
  `movie_id` INT NOT NULL,
  `prod_id` VARCHAR(8) NULL,
  PRIMARY KEY (`ph_id`),
  FOREIGN KEY (`prod_id`)
  REFERENCES `project_moviedb`.`production` (`production_id`),
  FOREIGN KEY (`movie_id`)
  REFERENCES `project_moviedb`.`movies` (`movie_id`));



	
  
  