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
-- Table structure for table `players_has_top_scorers`
--

DROP TABLE IF EXISTS `players_has_top_scorers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players_has_top_scorers` (
  `Players_id` int NOT NULL,
  `Top_scorer_id` int NOT NULL,
  PRIMARY KEY (`Players_id`,`Top_scorer_id`),
  KEY `fk_Players_has_Top_scorers_Top_scorers1_idx` (`Top_scorer_id`),
  KEY `fk_Players_has_Top_scorers_Players1_idx` (`Players_id`),
  CONSTRAINT `fk_Players_has_Top_scorers_Players1` FOREIGN KEY (`Players_id`) REFERENCES `players` (`Players_id`),
  CONSTRAINT `fk_Players_has_Top_scorers_Top_scorers1` FOREIGN KEY (`Top_scorer_id`) REFERENCES `top_scorers` (`Top_scorer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players_has_top_scorers`
--

LOCK TABLES `players_has_top_scorers` WRITE;
/*!40000 ALTER TABLE `players_has_top_scorers` DISABLE KEYS */;
INSERT INTO `players_has_top_scorers` VALUES (542,1),(541,2),(542,3),(542,4),(542,5),(551,6),(542,7),(552,8),(553,9),(542,10),(58,11),(548,12),(542,13),(554,14),(542,15),(542,16),(542,17),(542,18),(542,19),(542,20),(542,21),(542,22),(541,23),(552,24),(555,25),(548,26),(556,27),(552,28),(557,29),(542,30),(542,31),(558,32),(548,33),(542,34),(542,35),(542,36),(542,37),(542,38),(542,39),(559,40),(541,41),(17,42),(560,43),(542,44),(542,45),(542,46),(552,47),(542,48),(542,49),(542,50),(548,51),(548,52),(549,53),(550,54),(541,55),(248,56),(194,57),(542,58),(542,59),(542,60),(545,61),(546,62),(547,63),(544,64),(543,65),(541,66),(541,67),(479,68),(194,69),(497,70);
/*!40000 ALTER TABLE `players_has_top_scorers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 12:17:00
