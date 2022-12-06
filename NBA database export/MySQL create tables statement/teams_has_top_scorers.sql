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
-- Table structure for table `teams_has_top_scorers`
--

DROP TABLE IF EXISTS `teams_has_top_scorers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams_has_top_scorers` (
  `Teams_id` int NOT NULL,
  `Top_scorer_id` int NOT NULL,
  PRIMARY KEY (`Teams_id`,`Top_scorer_id`),
  KEY `fk_Teams_has_Top_scorers_Top_scorers1_idx` (`Top_scorer_id`),
  KEY `fk_Teams_has_Top_scorers_Teams1_idx` (`Teams_id`),
  CONSTRAINT `fk_Teams_has_Top_scorers_Teams1` FOREIGN KEY (`Teams_id`) REFERENCES `teams` (`Teams_id`),
  CONSTRAINT `fk_Teams_has_Top_scorers_Top_scorers1` FOREIGN KEY (`Top_scorer_id`) REFERENCES `top_scorers` (`Top_scorer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_has_top_scorers`
--

LOCK TABLES `teams_has_top_scorers` WRITE;
/*!40000 ALTER TABLE `teams_has_top_scorers` DISABLE KEYS */;
INSERT INTO `teams_has_top_scorers` VALUES (1,1),(11,2),(1,3),(1,4),(1,5),(6,6),(1,7),(11,8),(27,9),(1,10),(21,11),(26,12),(7,13),(19,14),(1,15),(1,16),(1,17),(1,18),(11,19),(1,20),(1,21),(1,22),(11,23),(11,24),(1,25),(26,26),(1,27),(11,28),(11,29),(1,30),(1,31),(27,32),(26,33),(1,34),(1,35),(1,36),(1,37),(1,38),(7,39),(24,40),(11,41),(18,42),(11,43),(1,44),(1,45),(1,46),(11,47),(1,48),(1,49),(1,50),(26,51),(26,52),(19,53),(11,54),(11,55),(23,56),(2,57),(1,58),(1,59),(11,60),(18,61),(20,62),(21,63),(7,64),(13,65),(11,66),(11,67),(1,68),(2,69),(10,70);
/*!40000 ALTER TABLE `teams_has_top_scorers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 12:19:37
