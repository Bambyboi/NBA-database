CREATE DATABASE  IF NOT EXISTS `nba` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nba`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: nba
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `top_scorers`
--

DROP TABLE IF EXISTS `top_scorers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top_scorers` (
  `Top_scorer_id` int NOT NULL,
  `Points` int DEFAULT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Year` int DEFAULT NULL,
  `TeamName` varchar(200) DEFAULT NULL,
  `OppTeamName` varchar(200) DEFAULT NULL,
  `TeamScore` int DEFAULT NULL,
  `OppTeamScore` int DEFAULT NULL,
  `MinsPlayed` int DEFAULT NULL,
  PRIMARY KEY (`Top_scorer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_scorers`
--

LOCK TABLES `top_scorers` WRITE;
/*!40000 ALTER TABLE `top_scorers` DISABLE KEYS */;
INSERT INTO `top_scorers` VALUES (1,100,'Wilt Chamberlain',1962,'Golden State Warriors','New York Knicks',169,147,48),(2,81,'Kobe Bryant',2006,'Los Angeles Lakers','Toronto Raptors',122,104,42),(3,78,'Wilt Chamberlain',1961,'Golden State Warriors','Los Angeles Lakers',147,151,63),(4,73,'Wilt Chamberlain',1962,'Golden State Warriors','Chicago Packers',135,117,48),(5,73,'Wilt Chamberlain',1962,'Golden State Warriors','New York Knicks',127,111,48),(6,73,'David Thompson',1978,'Denver Nuggets','Detroit Pistons',137,139,43),(7,72,'Wilt Chamberlain',1962,'Golden State Warriors','Los Angeles',115,127,0),(8,71,'Elgin Baylor',1960,'Los Angeles Lakers','New York Knicks',123,108,45),(9,71,'David Robinson',1994,'San Antonio Spurs','Los Angeles Clippers',112,97,44),(10,70,'Wilt Chamberlain',1963,'Golden State Warriors','Syracuse Nationals',148,163,48),(11,70,'Devin Booker',2017,'Phoenix Suns','Boston Celtics',120,130,45),(12,69,'Michael Jordan',1990,'Chicago Bulls','Cleveland Cavaliers',117,113,50),(13,68,'Wilt Chamberlain',1967,'Philadelphia 76ers','Chicago Bulls',143,123,0),(14,68,'Pete Maravich',1977,'Utah Jazz','New York Knicks',124,107,43),(15,67,'Wilt Chamberlain',1961,'Golden State Warriors','New York Knicks',135,126,0),(16,67,'Wilt Chamberlain',1962,'Golden State Warriors','St Louis Hawks',121,128,48),(17,67,'Wilt Chamberlain',1962,'Golden State Warriors','New York Knicks',135,149,48),(18,67,'Wilt Chamberlain',1963,'Golden State Warriors','Los Angeles Lakers',129,134,0),(19,66,'Wilt Chamberlain',1969,'Los Angeles Lakers','Phoenix Suns',134,116,48),(20,65,'Wilt Chamberlain',1962,'Golden State Warriors','Cincinnati Royals',132,152,48),(21,65,'Wilt Chamberlain',1962,'Golden State Warriors','St Louis Hawks',147,137,48),(22,65,'Wilt Chamberlain',1966,'Golden State Warriors','Los Angeles Lakers',132,125,0),(23,65,'Kobe Bryant',2007,'Los Angeles Lakers','Portland Trail Blazers',116,111,50),(24,64,'Elgin Baylor',1959,'Los Angeles Lakers','Boston Celtics',136,115,0),(25,64,'Rick Barry',1974,'Golden State Warriors','Portland Trail Blazers',143,120,43),(26,64,'Michael Jordan',1993,'Chicago Bulls','Orlando Magic',124,128,47),(27,64,'Joe Fulks',1949,'Golden State Warriors','Indianapolis Jets',108,87,0),(28,63,'Elgin Baylor',1961,'Los Angeles Lakers','Philadelphia Warriors',151,147,0),(29,63,'Jerry West',1962,'Los Angeles Lakers','New York Knicks',129,121,39),(30,63,'Wilt Chamberlain',1962,'Golden State Warriors','Los Angeles Lakers',118,120,0),(31,63,'Wilt Chamberlain',1964,'Golden State Warriors','Philadelphia 76ers',117,128,0),(32,63,'George Gervin',1978,'San Antonio Spurs','New Orleans Jazz',132,153,33),(33,63,'Michael Jordan',1986,'Chicago Bulls','Boston Celtics',131,135,53),(34,62,'Wilt Chamberlain',1962,'Golden State Warriors','Boston Celtics',136,145,48),(35,62,'Wilt Chamberlain',1962,'Golden State Warriors','St Louis Hawks',136,130,53),(36,62,'Wilt Chamberlain',1962,'Golden State Warriors','Syracuse Nationals',139,132,53),(37,62,'Wilt Chamberlain',1963,'Golden State Warriors','New York Knicks',123,103,0),(38,62,'Wilt Chamberlain',1964,'Golden State Warriors','Cincinnati Royals',122,106,0),(39,62,'Wilt Chamberlain',1966,'Philadelphia 76ers','San Francisco Warriors',135,125,0),(40,62,'Tracy McGrady',2004,'Orlando Magic','Washington Wizards',108,99,46),(41,62,'Kobe Bryant',2005,'Los Angeles Lakers','Dallas Mavericks',112,90,33),(42,62,'Carmelo Anthony',2014,'New York Knicks','Charlotte Bobcats',125,96,39),(43,61,'George Mikan',1952,'Los Angeles Lakers','Rochester Royals',91,81,0),(44,61,'Wilt Chamberlain',1961,'Golden State Warriors','Chicago Packers',135,113,48),(45,61,'Wilt Chamberlain',1962,'Golden State Warriors','St Louis Hawks',139,121,48),(46,61,'Wilt Chamberlain',1962,'Golden State Warriors','Chicago Packers',128,119,48),(47,61,'Elgin Baylor',1962,'Los Angeles Lakers','Boston Celtics',126,121,0),(48,61,'Wilt Chamberlain',1962,'Golden State Warriors','Cincinnati Royals',139,143,0),(49,61,'Wilt Chamberlain',1962,'Golden State Warriors','Syracuse Nationals',136,124,0),(50,61,'Wilt Chamberlain',1962,'Golden State Warriors','St Louis Hawks',130,110,0),(51,61,'Michael Jordan',1987,'Chicago Bulls','Detroit Pistons',125,120,43),(52,61,'Michael Jordan',1987,'Chicago Bulls','Atlanta Hawks',114,117,41),(53,61,'Karl Malone',1990,'Utah Jazz','Milwaukee Bucks',144,96,33),(54,61,'Shaquille O\'Neal',2000,'Los Angeles Lakers','Los Angeles Clippers',123,103,45),(55,61,'Kobe Bryant',2009,'Los Angeles Lakers','New York Knicks',126,117,37),(56,61,'Lebron James',2014,'Miami Heat','Charlotte Bobcats',124,107,42),(57,60,'James Harden',2019,'Houston Rockets','New York Knicks',114,110,40),(58,60,'Wilt Chamberlain',1961,'Golden State Warriors','Los Angeles Lakers',138,117,48),(59,60,'Wilt Chamberlain',1961,'Golden State Warriors','Los Angeles Lakers',123,118,48),(60,60,'Wilt Chamberlain',1969,'Los Angeles Lakers','Cincinnati Royals',126,113,0),(61,60,'Bernard King',1984,'New York Knicks','New Jersey Nets',114,120,41),(62,60,'Larry Bird',1985,'Boston Celtics','Atlanta Hawks',126,115,43),(63,60,'Tom Chambers',1990,'Phoenix Suns','Seattle SuperSonics',121,95,42),(64,60,'Allen Iverson',2005,'Philadelphia 76ers','Orlando Magic',112,99,43),(65,60,'Gilbert Arenas',2006,'Washington Wizards','Los Angeles Lakers',147,141,49),(66,60,'Kobe Bryant',2007,'Los Angeles Lakers','Memphis Grizzlies',121,119,46),(67,60,'Kobe Bryant',2016,'Los Angeles Lakers','Utah Jazz',101,96,42),(68,60,'Klay Thompson',2016,'Golden State Warriors','Indiana Pacers',142,106,29),(69,60,'James Harden',2018,'Houston Rockets','Orlando Magic',114,107,47),(70,60,'Kemba Walker',2018,'Charlotte Hornets','Philadelphia 76ers',119,122,46);
/*!40000 ALTER TABLE `top_scorers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 12:20:14
