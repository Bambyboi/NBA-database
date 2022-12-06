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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `Teams_id` int NOT NULL,
  `TeamName` varchar(200) DEFAULT NULL,
  `TeamABBR` varchar(60) DEFAULT NULL,
  `Location` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Golden State Warriors','GSW','Oakland/California'),(2,'Houston Rockets','HOU','Houston/Texas'),(3,'New Orleans Pelicans','NOP','New Orleans/Louisiana'),(4,'Toronto Raptors','TOR','Toronto/Ontario'),(5,'Cleveland Cavaliers','CLE','Cleveland/Ohio'),(6,'Denver Nuggets','DEN','Denver/Colorado'),(7,'Philadelphia 76ers','PHI','Philadelphia/Pennsylvania'),(8,'Minnesota Timberwolves','MIN','Minneapolis/Minnesota'),(9,'Los Angeles Clippers','LAC','Los Angeles/California'),(10,'Charlotte Hornets','CHO','Charlotte/North Carolina'),(11,'Los Angeles Lakers','LAL','Los Angeles/California'),(12,'Oklahoma City Thunder','OKC','Oklahoma City/Oklahoma'),(13,'Washington Wizards','WAS','Washington DC'),(14,'Brooklyn Nets','BRK','Brooklyn/New York'),(15,'Milwaukee Bucks','MIL','Milwaukee/Wisconsin'),(16,'Portland Trail Blazers','POR','Portland / Oregon'),(17,'Indiana Pacers','IND','Indianapolis/Indiana'),(18,'New York Knicks','NYK','New York/New York'),(19,'Utah Jazz','UTA','Salt Lake City/Utah'),(20,'Boston Celtics','BOS','Boston/Massachusetts'),(21,'Phoenix Suns','PHO','Phoenix/Arizona'),(22,'Detroit Pistons','DET','Detroit/Michigan'),(23,'Miami Heat','MIA','Miami/Florida'),(24,'Orlando Magic','ORL','Orlando/Florida'),(25,'Atlanta Hawks','ATL','Atlanta/Georgia'),(26,'Chicago Bulls','CHI','Chicago/Illinois'),(27,'San Antonio Spurs','SAS','San Antonio/Texas'),(28,'Dallas Mavericks','DAL','Dallas/Texas'),(29,'Memphis Grizzlies','MEM','Memphis/Tennesee'),(30,'Sacramento Kings','SAC','Sacramento/California');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 12:18:47
