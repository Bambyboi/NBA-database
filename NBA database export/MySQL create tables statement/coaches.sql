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
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaches` (
  `Coaches_id` int NOT NULL,
  `Teams_id` int NOT NULL,
  `Name` varchar(200) NOT NULL,
  PRIMARY KEY (`Coaches_id`),
  KEY `fk_Coaches_Teams_idx` (`Teams_id`),
  CONSTRAINT `fk_Coaches_Teams` FOREIGN KEY (`Teams_id`) REFERENCES `teams` (`Teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (1,25,'Mike Budenholzer'),(2,20,'Brad Stevens'),(3,14,'Kenny Atkinson'),(4,26,'Fred Hoiberg'),(5,10,'Steve Clifford'),(6,5,'Tyronn Lue'),(7,28,'Rick Carlisle'),(8,6,'Mike Malone'),(9,22,'Stan Van Gundy'),(10,1,'Steve Kerr'),(11,2,'Mike D\'Antoni'),(12,17,'Nate McMillan'),(13,9,'Doc Rivers'),(14,11,'Luke Walton'),(15,29,'David Fizdale'),(16,29,'J.B. Bickerstaff'),(17,23,'Erik Spoelstra'),(18,15,'Jason Kidd'),(19,15,'Joe Prunty'),(20,8,'Tom Thibodeau'),(21,3,'Alvin Gentry'),(22,18,'Jeff Hornacek'),(23,12,'Billy Donovan'),(24,24,'Frank Vogel'),(25,7,'Brett Brown'),(26,21,'Earl Watson'),(27,21,'Jay Triano'),(28,16,'Terry Stotts'),(29,30,'Dave Joerger'),(30,27,'Gregg Popovich'),(31,4,'Dwane Casey'),(32,19,'Quin Snyder'),(33,13,'Scott Brooks');
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 12:13:59
