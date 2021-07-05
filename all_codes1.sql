-- MySQL dump 10.13  Distrib 8.0.23, for macos10.15 (x86_64)
--
-- Host: localhost    Database: project_moviedb
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `project_moviedb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `project_moviedb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `project_moviedb`;

--
-- Temporary view structure for view `company_profit`
--

DROP TABLE IF EXISTS `company_profit`;
/*!50001 DROP VIEW IF EXISTS `company_profit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `company_profit` AS SELECT 
 1 AS `company_name`,
 1 AS `movie_name`,
 1 AS `Profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crew` (
  `crew_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`crew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
INSERT INTO `crew` VALUES ('CR1','Jeffrey','Jacob Abrams','1966-06-27','Male'),('CR10','Christopher','Nolan','1970-07-30','Male'),('CR100','Morgan','Freeman','1937-06-01','Male'),('CR101','Stephen','Chbosky','1970-01-25','Male'),('CR102','Logan','Lerman','1992-01-19','Male'),('CR103','Emma','Watson','1990-04-15','Female'),('CR104','Esra','Miller','1992-09-30','Male'),('CR105','Christian','Bale','1974-01-30','Male'),('CR106','Heath','Ledger','1979-04-04','Male'),('CR107','Aaron','Eckhart','1968-03-12','Male'),('CR108','Clint','Eastwood','1930-05-31','Male'),('CR109','Angelina','Jolie','1975-06-04','Female'),('CR11','Paul','Thomas Anderson','1970-06-26','Male'),('CR110','Colm','Feore','1958-08-22','Male'),('CR111','Amy','Ryan','1968-05-03','Female'),('CR112','Michael','Caton-Jones','1957-10-15','Male'),('CR113','Ellen','Barkin','1954-04-16','Female'),('CR114','Frank','Capra','1111-11-01','Male'),('CR115','James','Stewart','1908-05-20','Male'),('CR116','Donna','Reed','1921-01-27','Female'),('CR117','Lionel','Barrymore','1111-11-01','Male'),('CR118','Jonathan','Demme','1944-02-22','Male'),('CR119','Anthony','Hopkins','1937-12-31','Male'),('CR12','Jonathan','Levine','1111-11-01','Male'),('CR120','Lawrence','A. Bonney','1111-11-01','Male'),('CR121','Curtis','Hanson','1945-03-24','Male'),('CR122','Eminem','','1972-10-17','Male'),('CR123','Brittany','Murphy','1977-11-10','Female'),('CR124','Kim','Basinger','1953-12-08','Female'),('CR125','John','Hughes','1950-02-18','Male'),('CR126','Emilio','Estevez','1962-05-12','Male'),('CR127','Judd','Nelson','1959-11-28','Male'),('CR128','Molly','Ringwald','1968-02-18','Female'),('CR129','Quentin','Tarantino','1963-03-27','Male'),('CR13','Jim','Sheridan','1949-02-06','Male'),('CR130','Jamie','Foxx','1967-12-13','Male'),('CR131','Christoph','Waltz','1956-10-04','Male'),('CR132','David','O Russel','1958-08-20','Male'),('CR133','Bradley','Cooper','1975-01-05','Male'),('CR134','Jennifer','Lawrence','1990-08-15','Female'),('CR135','Stanley','Kubrick','1928-07-26','Male'),('CR136','Jack','Nicholson','1937-04-22','Male'),('CR137','Shelley','Duvall','1949-07-07','Female'),('CR138','Danny','Llyod','1972-10-13','Male'),('CR139','David','Fincher','1962-08-28','Male'),('CR14','Edward','Zwick','1952-10-08','Male'),('CR140','Brad','Pitt','1963-12-18','Male'),('CR141','Kevin','Spacey','1959-07-26','Male'),('CR142','Sam','Mendes','1965-08-01','Male'),('CR143','Annette','Bening','1958-05-29','Female'),('CR144','Thora','Birch','1982-03-11','Female'),('CR145','John','Travolta','1954-02-18','Male'),('CR146','Uma','Thurman','1970-04-29','Female'),('CR147','Samuel','L Jackson','1948-12-21','Male'),('CR148','Kathryn','Bigelow','1951-11-27','Female'),('CR149','Jessica','Chastain','1977-03-24','Female'),('CR15','Ridley','Scott','1937-11-30','Male'),('CR150','Joel','Edgerton','1974-06-23','Male'),('CR151','Chris','Pratt','1979-06-21','Male'),('CR152','Ben','Affleck','1972-08-15','Male'),('CR153','Bryan','Cranston','1956-03-07','Male'),('CR154','John','Goodman','1952-06-20','Male'),('CR155','Jeremy','Renner','1971-01-07','Male'),('CR156','Antony','Mackie','1978-09-23','Male'),('CR157','Brian','Geraghty','1975-05-13','Male'),('CR158','Francis','Ford Coppola','1939-04-07','Male'),('CR159','Marlon','Brando','1924-04-03','Male'),('CR16','F. Gary','Gray','1969-07-17','Male'),('CR160','Al','Pacino','1940-04-25','Male'),('CR161','James','Caan','1940-03-26','Male'),('CR17','Neil','LaBute','1963-03-19','Male'),('CR18','James','Gartner','1111-11-01','Male'),('CR19','Mary','Elle Fanning','1998-04-09','Female'),('CR2','Samuel','Alexander Mendes','1965-08-01','Male'),('CR20','Amanda','Michalka','1991-04-10','Female'),('CR21','Kyle','M. Chandler','1965-09-17','Male'),('CR22','Joel','Courtney','1996-01-31','Male'),('CR23','Jacob','Benjamin Gyllenhaal','1980-12-19','Male'),('CR24','Jamie','Foxx','1967-12-13','Male'),('CR25','Lucas','York Black','1982-11-29','Male'),('CR26','Scott','MacDonald','1111-11-01','Male'),('CR27','James','Caan','1940-03-26','Male'),('CR28','Kathy','Bates','1948-06-28','Female'),('CR29','Richard','Farnsworth','1920-09-01','Male'),('CR3','Robert','Reiner','1947-03-06','Male'),('CR30','Frances','Hussey Sternhagen','1930-01-13','Female'),('CR31','Brad','Pitt','1963-12-18','Male'),('CR32','Edward','Harrison Norton','1969-08-18','Male'),('CR33','Meat','Loaf','1947-09-27','Male'),('CR34','Zach','Grenier','1954-02-12','Male'),('CR35','Leonardo','DiCaprio','1974-11-11','Male'),('CR36','Emily','Emily Kathleen Anne Mortimer','1971-10-06','Female'),('CR37','Mark','Ruffalo','1967-11-22','Male'),('CR38','Ben','Kingsley','1943-12-31','Male'),('CR39','Tom','Hardy','1977-09-15','Male'),('CR4','David','Fincher','1962-08-28','Male'),('CR40','Shia','Saide LaBeouf','1986-06-11','Male'),('CR41','Guy','Edward Pearce','1967-10-05','Male'),('CR42','Jason','Clarke','1969-07-17','Male'),('CR43','Jennifer','Lawrence','1990-08-15','Female'),('CR44','John','Hawkes','1959-09-11','Male'),('CR45','Garret','Dillahunt','1964-11-24','Male'),('CR46','Isaiah','Stone','1111-11-01','Female'),('CR47','Robert','De Niro','1943-08-17','Male'),('CR48','Jodie','Foster','1962-11-19','Female'),('CR49','Cybill','Lynne Shepherd','1950-02-18','Female'),('CR5','Martin','Charles Scorsese','1942-11-17','Male'),('CR50','Albert','Brooks','1947-07-22','Male'),('CR51','Thomas','Jeffrey Hanks','1956-07-09','Male'),('CR52','Matthew','Paige Damon','1970-10-08','Male'),('CR53','Tom','Sizemore','1961-11-29','Male'),('CR54','Edward','Fitzgerald Burns','1968-01-29','Male'),('CR55','Natalie','Portman','1981-06-09','Female'),('CR56','Mila','Kunis','1983-08-14','Female'),('CR57','Vincent','Cassel','1966-11-23','Male'),('CR58','Winona','Ryder','1971-10-29','Female'),('CR59','Joseph','Leonard Gordon-Levitt','1981-02-17','Male'),('CR6','John','Hillcoat','1905-05-14','Male'),('CR60','Elliot','Page','1987-02-21','Female'),('CR61','Ken','Watanabe','1959-10-21','Male'),('CR62','Mark','Wahlberg','1971-06-05','Male'),('CR63','Julianne','Moore','1960-12-03','Female'),('CR64','Burt','Reynolds','1936-02-11','Male'),('CR65','Luis','Guzman','1956-08-28','Male'),('CR66','Seth','Rogen','1982-04-15','Male'),('CR67','Anna','Kendrick','1985-08-09','Female'),('CR68','Bryce','Dallas Howard','1981-03-02','Female'),('CR69','Natalie','Portman','1981-06-09','Female'),('CR7','Debra','Granik','1963-02-06','Female'),('CR70','Tobias','Vincent Maguire','1975-06-27','Male'),('CR71','Sam','Shepard','1943-11-05','Male'),('CR72','Djimon','Hounsou','1964-04-24','Male'),('CR73','Jennifer','Connelly','1970-12-12','Female'),('CR74','Kagiso','Kuypers','1111-11-01','Male'),('CR75','Tom','Cruise','1962-07-03','Male'),('CR76','Jack','Nicholson','1937-04-22','Male'),('CR77','Demi','Moore','1962-11-11','Female'),('CR78','Kevin','Norwood Bacon','1958-07-08','Male'),('CR79','Russell','Ira Crowe','1964-04-07','Male'),('CR8','Steven','Spielberg','1946-12-18','Male'),('CR80','Joaquin','Phoenix','1974-10-28','Male'),('CR81','Connie','Nielsen','1965-07-03','Female'),('CR82','Oliver','Reed','1938-02-13','Female'),('CR83','Gerard','James Butler','1969-11-13','Male'),('CR84','Leslie','Louise Bibb','1974-11-17','Female'),('CR85','Colm','Meaney','1953-05-30','Male'),('CR86','Samuel','L. Jackson','1948-12-21','Male'),('CR87','Patrick','Joseph Wilson','1973-07-03','Male'),('CR88','Kerry','Washington','1977-01-31','Female'),('CR89','Ron','Glass','1945-07-10','Male'),('CR9','Darren','Aronofsky','1969-02-12','Male'),('CR90','Josh','Lucas','1971-06-20','Male'),('CR91','Derek','Luke','1974-04-24','Male'),('CR92','Austin','Nichols','1980-04-24','Male'),('CR93','Jon','Voight','1938-12-29','Male'),('CR94','Robert','Zemeckis','1951-05-14','Male'),('CR95','Tom','Hanks','1956-07-09','Male'),('CR96','Robin ','Wright','1966-04-06','Female'),('CR97','Gari','Sinise','1955-03-17','Male'),('CR98','Frank','Darabont','1959-01-28','Male'),('CR99','Tim','Robbins','1958-10-16','Male');
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_movie_count`
--

DROP TABLE IF EXISTS `daily_movie_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_movie_count` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Number_of_movies` int DEFAULT NULL,
  `Updated_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_movie_count`
--

LOCK TABLES `daily_movie_count` WRITE;
/*!40000 ALTER TABLE `daily_movie_count` DISABLE KEYS */;
INSERT INTO `daily_movie_count` VALUES (1,39,'2021-06-09'),(2,39,'2021-06-09'),(4,39,'2021-06-09'),(6,39,'2021-06-09');
/*!40000 ALTER TABLE `daily_movie_count` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `backup_movie_count` BEFORE DELETE ON `daily_movie_count` FOR EACH ROW BEGIN
    INSERT INTO daily_movie_count_backup
    SET id = old.id,
		Number_of_movies = old.Number_of_movies,
        old_updated_on = old.Updated_on,
        deleted_on = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `daily_movie_count_backup`
--

DROP TABLE IF EXISTS `daily_movie_count_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_movie_count_backup` (
  `id` int DEFAULT NULL,
  `Number_of_movies` int NOT NULL,
  `old_updated_on` date DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_movie_count_backup`
--

LOCK TABLES `daily_movie_count_backup` WRITE;
/*!40000 ALTER TABLE `daily_movie_count_backup` DISABLE KEYS */;
INSERT INTO `daily_movie_count_backup` VALUES (5,39,'2021-06-09','2021-06-09 10:42:07');
/*!40000 ALTER TABLE `daily_movie_count_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_id` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `genre_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES ('Genre1','Action'),('Genre10','Crime'),('Genre11','Fantasy'),('Genre12','Romance'),('Genre13','Animation'),('Genre14','Biography'),('Genre15','War'),('Genre16','Sport'),('Genre17','History'),('Genre18','Music'),('Genre2','Thriller'),('Genre3','Comedy'),('Genre4','Sci-Fi'),('Genre5','Rom-Com'),('Genre6','Horror'),('Genre7','Mystery'),('Genre8','Adventure'),('Genre9','Drama');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `genre_list`
--

DROP TABLE IF EXISTS `genre_list`;
/*!50001 DROP VIEW IF EXISTS `genre_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `genre_list` AS SELECT 
 1 AS `Genre`,
 1 AS `Avg_movie_length`,
 1 AS `Movie_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_cast` (
  `mc_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `crew_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `movie_id` int NOT NULL,
  `role_id` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mc_id`),
  KEY `crew_id` (`crew_id`),
  KEY `movie_id` (`movie_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `movie_cast_ibfk_1` FOREIGN KEY (`crew_id`) REFERENCES `crew` (`crew_id`),
  CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  CONSTRAINT `movie_cast_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_cast`
--

LOCK TABLES `movie_cast` WRITE;
/*!40000 ALTER TABLE `movie_cast` DISABLE KEYS */;
INSERT INTO `movie_cast` VALUES ('MovCast1','CR1',21,'Role3'),('MovCast10','CR9',30,'Role3'),('MovCast100','CR93',40,'Role1'),('MovCast101','CR94',1,'Role3'),('MovCast102','CR95',1,'Role1'),('MovCast103','CR96',1,'Role2'),('MovCast104','CR97',1,'Role1'),('MovCast105','CR98',2,'Role3'),('MovCast106','CR99',2,'Role1'),('MovCast107','CR100',2,'Role1'),('MovCast108','CR101',3,'Role3'),('MovCast109','CR102',3,'Role1'),('MovCast11','CR10',31,'Role3'),('MovCast110','CR103',3,'Role2'),('MovCast111','CR104',3,'Role1'),('MovCast112','CR10',4,'Role3'),('MovCast113','CR105',4,'Role1'),('MovCast114','CR106',4,'Role1'),('MovCast115','CR107',4,'Role1'),('MovCast116','CR108',5,'Role3'),('MovCast117','CR109',5,'Role2'),('MovCast118','CR110',5,'Role1'),('MovCast119','CR111',5,'Role2'),('MovCast12','CR11',32,'Role3'),('MovCast124','CR114',7,'Role3'),('MovCast125','CR115',7,'Role1'),('MovCast126','CR116',7,'Role2'),('MovCast127','CR117',7,'Role1'),('MovCast128','CR118',8,'Role3'),('MovCast129','CR119',8,'Role1'),('MovCast13','CR12',33,'Role3'),('MovCast130','CR120',8,'Role1'),('MovCast131','CR48',8,'Role2'),('MovCast132','CR121',9,'Role3'),('MovCast133','CR122',9,'Role1'),('MovCast134','CR123',9,'Role2'),('MovCast135','CR124',9,'Role2'),('MovCast136','CR125',10,'Role3'),('MovCast137','CR126',10,'Role1'),('MovCast138','CR127',10,'Role1'),('MovCast139','CR128',10,'Role2'),('MovCast14','CR13',34,'Role3'),('MovCast140','CR129',11,'Role3'),('MovCast141','CR130',11,'Role1'),('MovCast142','CR131',11,'Role1'),('MovCast143','CR35',11,'Role1'),('MovCast144','CR132',12,'Role3'),('MovCast145','CR133',12,'Role1'),('MovCast146','CR134',12,'Role2'),('MovCast147','CR47',12,'Role1'),('MovCast148','CR135',13,'Role3'),('MovCast149','CR136',13,'Role1'),('MovCast15','CR14',35,'Role3'),('MovCast150','CR137',13,'Role2'),('MovCast151','CR138',13,'Role1'),('MovCast152','CR139',14,'Role3'),('MovCast153','CR140',14,'Role1'),('MovCast154','CR141',14,'Role1'),('MovCast155','CR100',14,'Role1'),('MovCast156','CR142',15,'Role3'),('MovCast157','CR143',15,'Role2'),('MovCast158','CR144',15,'Role2'),('MovCast159','CR141',15,'Role1'),('MovCast16','CR15',36,'Role3'),('MovCast160','CR129',16,'Role3'),('MovCast161','CR145',16,'Role1'),('MovCast162','CR146',16,'Role2'),('MovCast163','CR147',16,'Role1'),('MovCast164','CR148',17,'Role3'),('MovCast165','CR149',17,'Role2'),('MovCast166','CR150',17,'Role1'),('MovCast167','CR151',17,'Role1'),('MovCast168','CR152',18,'Role3'),('MovCast169','CR153',18,'Role1'),('MovCast17','CR3',37,'Role3'),('MovCast170','CR154',18,'Role1'),('MovCast171','CR152',18,'Role1'),('MovCast172','CR148',19,'Role3'),('MovCast173','CR155',19,'Role1'),('MovCast174','CR156',19,'Role1'),('MovCast175','CR157',19,'Role1'),('MovCast176','CR158',20,'Role3'),('MovCast177','CR159',20,'Role1'),('MovCast178','CR160',20,'Role1'),('MovCast179','CR161',20,'Role1'),('MovCast18','CR16',38,'Role3'),('MovCast19','CR17',39,'Role3'),('MovCast2','CR2',22,'Role3'),('MovCast20','CR18',40,'Role3'),('MovCast21','CR19',21,'Role2'),('MovCast22','CR20',21,'Role2'),('MovCast23','CR21',21,'Role1'),('MovCast24','CR22',21,'Role1'),('MovCast25','CR23',22,'Role1'),('MovCast26','CR24',22,'Role1'),('MovCast27','CR25',22,'Role1'),('MovCast28','CR26',22,'Role1'),('MovCast29','CR27',23,'Role1'),('MovCast3','CR3',23,'Role3'),('MovCast30','CR28',23,'Role2'),('MovCast31','CR29',23,'Role1'),('MovCast32','CR30',23,'Role2'),('MovCast33','CR31',24,'Role1'),('MovCast34','CR32',24,'Role1'),('MovCast35','CR33',24,'Role1'),('MovCast36','CR34',24,'Role1'),('MovCast37','CR35',25,'Role1'),('MovCast38','CR36',25,'Role2'),('MovCast39','CR37',25,'Role1'),('MovCast4','CR4',24,'Role3'),('MovCast40','CR38',25,'Role1'),('MovCast41','CR39',26,'Role1'),('MovCast42','CR40',26,'Role1'),('MovCast43','CR41',26,'Role1'),('MovCast44','CR42',26,'Role1'),('MovCast45','CR43',27,'Role2'),('MovCast46','CR44',27,'Role1'),('MovCast47','CR45',27,'Role1'),('MovCast48','CR46',27,'Role2'),('MovCast49','CR47',28,'Role1'),('MovCast5','CR5',25,'Role3'),('MovCast50','CR48',28,'Role2'),('MovCast51','CR49',28,'Role2'),('MovCast52','CR50',28,'Role1'),('MovCast53','CR51',29,'Role1'),('MovCast54','CR52',29,'Role1'),('MovCast55','CR53',29,'Role1'),('MovCast56','CR54',29,'Role1'),('MovCast57','CR55',30,'Role2'),('MovCast58','CR56',30,'Role2'),('MovCast59','CR57',30,'Role1'),('MovCast6','CR6',26,'Role3'),('MovCast60','CR58',30,'Role2'),('MovCast61','CR35',31,'Role1'),('MovCast62','CR59',31,'Role1'),('MovCast63','CR60',31,'Role2'),('MovCast64','CR61',31,'Role1'),('MovCast65','CR62',32,'Role1'),('MovCast66','CR63',32,'Role2'),('MovCast67','CR64',32,'Role1'),('MovCast68','CR65',32,'Role1'),('MovCast69','CR59',33,'Role1'),('MovCast7','CR7',27,'Role3'),('MovCast70','CR66',33,'Role1'),('MovCast71','CR67',33,'Role2'),('MovCast72','CR68',33,'Role2'),('MovCast73','CR23',34,'Role1'),('MovCast74','CR69',34,'Role2'),('MovCast75','CR70',34,'Role1'),('MovCast76','CR71',34,'Role1'),('MovCast77','CR35',35,'Role1'),('MovCast78','CR72',35,'Role1'),('MovCast79','CR73',35,'Role2'),('MovCast8','CR5',28,'Role3'),('MovCast80','CR74',35,'Role1'),('MovCast81','CR75',36,'Role1'),('MovCast82','CR76',36,'Role1'),('MovCast83','CR77',36,'Role2'),('MovCast84','CR78',36,'Role1'),('MovCast85','CR79',37,'Role1'),('MovCast86','CR80',37,'Role1'),('MovCast87','CR81',37,'Role2'),('MovCast88','CR82',37,'Role2'),('MovCast89','CR83',38,'Role1'),('MovCast9','CR8',29,'Role3'),('MovCast90','CR24',38,'Role1'),('MovCast91','CR84',38,'Role2'),('MovCast92','CR85',38,'Role1'),('MovCast93','CR86',39,'Role1'),('MovCast94','CR87',39,'Role1'),('MovCast95','CR88',39,'Role2'),('MovCast96','CR89',39,'Role1'),('MovCast97','CR90',40,'Role1'),('MovCast98','CR91',40,'Role1'),('MovCast99','CR92',40,'Role1');
/*!40000 ALTER TABLE `movie_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genre` (
  `mg_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `movie_id` int NOT NULL,
  `genre_id` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mg_id`),
  KEY `genre_id` (`genre_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`),
  CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES ('MovGen1',21,'Genre7'),('MovGen10',25,'Genre7'),('MovGen11',25,'Genre2'),('MovGen12',26,'Genre10'),('MovGen13',26,'Genre9'),('MovGen14',27,'Genre9'),('MovGen15',27,'Genre7'),('MovGen16',28,'Genre10'),('MovGen17',28,'Genre9'),('MovGen18',29,'Genre9'),('MovGen19',29,'Genre15'),('MovGen2',21,'Genre4'),('MovGen20',30,'Genre9'),('MovGen21',30,'Genre2'),('MovGen22',31,'Genre2'),('MovGen23',31,'Genre8'),('MovGen24',31,'Genre4'),('MovGen25',32,'Genre9'),('MovGen26',33,'Genre3'),('MovGen27',33,'Genre9'),('MovGen28',33,'Genre12'),('MovGen29',34,'Genre1'),('MovGen3',21,'Genre2'),('MovGen30',34,'Genre9'),('MovGen31',34,'Genre2'),('MovGen32',35,'Genre8'),('MovGen33',35,'Genre9'),('MovGen34',35,'Genre2'),('MovGen35',36,'Genre9'),('MovGen36',36,'Genre2'),('MovGen37',37,'Genre1'),('MovGen38',37,'Genre8'),('MovGen39',37,'Genre9'),('MovGen4',22,'Genre1'),('MovGen40',38,'Genre1'),('MovGen41',38,'Genre10'),('MovGen42',38,'Genre9'),('MovGen43',39,'Genre10'),('MovGen44',39,'Genre9'),('MovGen45',39,'Genre2'),('MovGen46',40,'Genre14'),('MovGen47',40,'Genre9'),('MovGen48',40,'Genre16'),('MovGen49',20,'Genre10'),('MovGen5',22,'Genre14'),('MovGen50',20,'Genre9'),('MovGen51',19,'Genre9'),('MovGen52',19,'Genre2'),('MovGen53',19,'Genre15'),('MovGen54',18,'Genre14'),('MovGen55',18,'Genre9'),('MovGen56',18,'Genre2'),('MovGen57',17,'Genre9'),('MovGen58',17,'Genre2'),('MovGen59',17,'Genre17'),('MovGen6',22,'Genre9'),('MovGen60',16,'Genre10'),('MovGen61',16,'Genre9'),('MovGen62',15,'Genre9'),('MovGen63',14,'Genre9'),('MovGen64',14,'Genre10'),('MovGen65',14,'Genre7'),('MovGen66',13,'Genre6'),('MovGen67',13,'Genre9'),('MovGen68',12,'Genre3'),('MovGen69',12,'Genre9'),('MovGen7',23,'Genre9'),('MovGen70',12,'Genre12'),('MovGen71',11,'Genre9'),('MovGen72',10,'Genre3'),('MovGen73',10,'Genre9'),('MovGen74',9,'Genre9'),('MovGen75',9,'Genre18'),('MovGen76',8,'Genre9'),('MovGen77',8,'Genre10'),('MovGen78',8,'Genre2'),('MovGen79',7,'Genre9'),('MovGen8',23,'Genre2'),('MovGen80',7,'Genre11'),('MovGen83',5,'Genre10'),('MovGen84',5,'Genre14'),('MovGen85',5,'Genre9'),('MovGen86',4,'Genre10'),('MovGen87',4,'Genre1'),('MovGen88',4,'Genre9'),('MovGen89',3,'Genre9'),('MovGen9',24,'Genre9'),('MovGen90',3,'Genre12'),('MovGen91',2,'Genre9'),('MovGen92',1,'Genre9'),('MovGen93',1,'Genre12');
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int NOT NULL,
  `movie_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `certificate_rating` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `release_date` year DEFAULT NULL,
  `movie_length` int NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget_in_millions` decimal(6,2) DEFAULT NULL,
  `revenue_in_millions` decimal(6,2) DEFAULT NULL,
  `Imdb_rating` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Forrest gump','PG-13',1994,142,'English',55.00,683.10,8.80),(2,'The Shawshank Redemption','R',1994,142,'English',25.00,58.30,9.30),(3,'The Perks of Being a Wallflower','PG-13',2012,103,'English',13.00,33.40,8.00),(4,'The Dark Knight','PG-13',2008,152,'English',185.00,1005.00,9.00),(5,'Changeling','R',2008,141,'English',55.00,113.40,7.70),(7,'It\'s a Wonderful Life','PG',1946,130,'English',3.18,3.30,8.60),(8,'The Silence of the Lambs','R',1991,118,'English',19.00,272.70,8.60),(9,'8 Mile','R',2002,110,'English',41.00,242.90,7.10),(10,'The Breakfast Club','R',1985,97,'English',1.00,51.50,7.80),(11,'Django Unchained','R',2012,165,'English',100.00,425.40,8.40),(12,'Silver Linings Playbook','R',2012,122,'English',21.00,236.40,7.70),(13,'The Shining','R',1980,146,'English',19.00,47.00,8.40),(14,'Seven','R',1995,127,'English',33.00,327.30,8.60),(15,'American Beauty','R',1999,122,'English',15.00,356.30,8.30),(16,'Pulp Fiction','R',1994,154,'English',8.50,213.90,8.90),(17,'Zero Dark Thirty','R',2012,157,'English',40.00,132.80,7.40),(18,'Argo','R',2012,120,'English',44.50,232.30,7.70),(19,'The Hurt Locker','R',2008,131,'English',15.00,49.20,7.50),(20,'The Godfather','R',1972,175,'English',7.20,287.00,9.20),(21,'Super 8','PG-13',2011,112,'English',50.00,260.10,7.00),(22,'Jarhead','R',2005,125,'English',72.00,97.10,7.00),(23,'Misery','R',1990,107,'English',20.00,61.30,7.80),(24,'Fight Club','R',1999,139,'English',63.00,101.20,8.80),(25,'Shutter Island','R',2010,138,'English',80.00,294.80,8.20),(26,'Lawless','R',2012,116,'English',26.00,54.40,7.30),(27,'Winter\'s Bone','R',2010,100,'English',2.00,16.10,7.20),(28,'Taxi Driver','R',1976,114,'English',1.90,28.40,8.30),(29,'Saving Private Ryan','R',1998,169,'English',70.00,482.30,8.60),(30,'Black Swan','R',2010,108,'English',13.00,329.40,8.00),(31,'Inception','PG-13',2010,148,'English',160.00,836.80,8.80),(32,'Boogie Nights','R',1997,155,'English',15.00,43.10,7.90),(33,'50/50','R',2011,100,'English',8.00,41.10,7.60),(34,'Brothers','R',2009,105,'English',26.00,43.50,7.10),(35,'Blood Diamond','R',2006,143,'English',100.00,171.70,8.00),(36,'A Few Good Men','R',1992,138,'English',40.00,243.20,7.70),(37,'Gladiator','R',2000,155,'English',103.00,460.50,8.50),(38,'Law Abiding Citizen','R',2009,109,'English',53.00,126.70,7.40),(39,'Lakeview Terrace','PG-13',2008,110,'English',20.00,44.70,6.10),(40,'Glory Road','PG',2006,118,'English',30.00,42.90,7.20);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production` (
  `production_id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`production_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES ('Prod1','Warner Bros.'),('Prod10','DreamWorks Pictures'),('Prod11','BBC films'),('Prod12','Netflix'),('Prod13','StudioCanal'),('Prod14','Cine Plus'),('Prod15','CNC'),('Prod16','Columbia Pictures'),('Prod17','Roadside Attractions'),('Prod18','Fox Searchlight Pictures'),('Prod19','New Line Cinema'),('Prod2','Sony Pictures Motion Picture Group'),('Prod20','Summit Entertainment'),('Prod21','Overture Films'),('Prod22','Buena Vista Pictures'),('Prod23','Liberty Films'),('Prod24','Orion Pictures'),('Prod25','The Weinstein Company'),('Prod26','Miramax Films'),('Prod3','Walt Disney Studios'),('Prod4','Universal Pictures'),('Prod5','20th Century Fox'),('Prod6','Paramount Pictures'),('Prod7','Lionsgate Films'),('Prod8','The Weinstein Company'),('Prod9','Metro-Goldwyn-Mayer Studios');
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_house`
--

DROP TABLE IF EXISTS `production_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_house` (
  `ph_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `movie_id` int NOT NULL,
  `prod_id` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ph_id`),
  KEY `prod_id` (`prod_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `production_house_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `production` (`production_id`),
  CONSTRAINT `production_house_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_house`
--

LOCK TABLES `production_house` WRITE;
/*!40000 ALTER TABLE `production_house` DISABLE KEYS */;
INSERT INTO `production_house` VALUES ('ProdHouse1',21,'Prod6'),('ProdHouse10',30,'Prod18'),('ProdHouse11',31,'Prod1'),('ProdHouse12',32,'Prod19'),('ProdHouse13',33,'Prod20'),('ProdHouse14',34,'Prod7'),('ProdHouse15',35,'Prod1'),('ProdHouse16',36,'Prod16'),('ProdHouse17',37,'Prod4'),('ProdHouse18',38,'Prod21'),('ProdHouse19',39,'Prod2'),('ProdHouse2',22,'Prod4'),('ProdHouse20',40,'Prod22'),('ProdHouse21',29,'Prod10'),('ProdHouse22',1,'Prod6'),('ProdHouse23',2,'Prod16'),('ProdHouse24',3,'Prod20'),('ProdHouse25',4,'Prod1'),('ProdHouse26',5,'Prod4'),('ProdHouse28',7,'Prod23'),('ProdHouse29',8,'Prod24'),('ProdHouse3',23,'Prod16'),('ProdHouse30',9,'Prod4'),('ProdHouse31',10,'Prod4'),('ProdHouse32',11,'Prod16'),('ProdHouse33',12,'Prod25'),('ProdHouse34',13,'Prod1'),('ProdHouse35',14,'Prod19'),('ProdHouse36',15,'Prod10'),('ProdHouse37',16,'Prod26'),('ProdHouse38',17,'Prod16'),('ProdHouse39',18,'Prod1'),('ProdHouse4',24,'Prod5'),('ProdHouse40',19,'Prod20'),('ProdHouse41',20,'Prod6'),('ProdHouse5',25,'Prod6'),('ProdHouse6',26,'Prod8'),('ProdHouse7',27,'Prod17'),('ProdHouse8',28,'Prod16'),('ProdHouse9',29,'Prod6');
/*!40000 ALTER TABLE `production_house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `role_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('Role1','Actor-Male'),('Role2','Actor-Female'),('Role3','Director');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `project_moviedb`
--

USE `project_moviedb`;

--
-- Final view structure for view `company_profit`
--

/*!50001 DROP VIEW IF EXISTS `company_profit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_profit` AS select `p`.`company_name` AS `company_name`,`m`.`movie_name` AS `movie_name`,(`m`.`revenue_in_millions` - `m`.`budget_in_millions`) AS `Profit` from ((`movies` `m` join `production_house` `ph` on((`ph`.`movie_id` = `m`.`movie_id`))) join `production` `p` on((`p`.`production_id` = `ph`.`prod_id`))) order by (`m`.`revenue_in_millions` - `m`.`budget_in_millions`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `genre_list`
--

/*!50001 DROP VIEW IF EXISTS `genre_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `genre_list` AS select `g`.`genre_name` AS `Genre`,truncate(avg(`m`.`movie_length`),0) AS `Avg_movie_length`,count(`m`.`movie_id`) AS `Movie_Count` from ((`movies` `m` join `movie_genre` `mg` on((`m`.`movie_id` = `mg`.`movie_id`))) join `genre` `g` on((`g`.`genre_id` = `mg`.`genre_id`))) group by `Genre` order by `Avg_movie_length` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-09 15:37:12