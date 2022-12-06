-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: nba_database
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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `Players_id` int DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Pos` varchar(50) DEFAULT NULL,
  `Age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (2,'Quincy Acy','PF',27),(3,'Steven Adams','C',24),(4,'Bam Adebayo','C',20),(5,'Arron Afflalo','SG',32),(6,'Cole Aldrich','C',29),(7,'LaMarcus Aldridge','C',32),(8,'Jarrett Allen','C',19),(9,'Kadeem Allen','PG',25),(10,'Tony Allen','SF',36),(11,'Al-Farouq Aminu','PF',27),(12,'Justin Anderson','SF',24),(13,'Kyle Anderson','SF',24),(14,'Ryan Anderson','PF',29),(15,'Ike Anigbogu','C',19),(16,'Giannis Antetokounmpo','PF',23),(17,'Carmelo Anthony','PF',33),(18,'OG Anunoby','SF',20),(19,'Ryan Arcidiacono','PG',23),(20,'Trevor Ariza','SF',32),(21,'Darrell Arthur','PF',29),(22,'Jamel Artis','SG',25),(23,'Omer Asik','C',31),(24,'D.J. Augustin','PG',30),(25,'Luke Babbitt','SF',28),(26,'Dwayne Bacon','SG',22),(27,'Ron Baker','SG',24),(28,'Wade Baldwin','PG',21),(29,'Lonzo Ball','PG',20),(30,'J.J. Barea','PG',33),(31,'Harrison Barnes','PF',25),(32,'Will Barton','SG',27),(33,'Nicolas Batum','SG',29),(34,'Jerryd Bayless','SG',29),(35,'Aron Baynes','C',31),(36,'Kent Bazemore','SG',28),(37,'Bradley Beal','SG',24),(38,'Malik Beasley','SG',21),(39,'Michael Beasley','PF',29),(40,'Marco Belinelli','SG',31),(41,'Jordan Bell','C',23),(42,'DeAndre Bembry','SF',23),(43,'Dragan Bender','PF',20),(44,'Davis Bertans','PF',25),(45,'Patrick Beverley','SG',29),(46,'Khem Birch','C',25),(47,'Jabari Bird','SG',23),(48,'Bismack Biyombo','C',25),(49,'Nemanja Bjelica','PF',29),(50,'Tarik Black','C',26),(51,'Antonio Blakeney','SG',21),(52,'Eric Bledsoe','PG',28),(53,'Vander Blue','SG',25),(54,'Bogdan Bogdanovic','SG',25),(55,'Bojan Bogdanovic','SF',28),(56,'Andrew Bogut','C',33),(57,'Joel Bolomboy','PF',24),(58,'Devin Booker','SG',21),(59,'Trevor Booker','PF',30),(60,'Chris Boucher','PF',25),(61,'Avery Bradley','SG',27),(62,'Tony Bradley','C',20),(63,'Corey Brewer','SF-SG',31),(64,'Malcolm Brogdon','PG',25),(65,'Aaron Brooks','PG',33),(66,'Dillon Brooks','SF',22),(67,'MarShon Brooks','SG',29),(68,'Anthony Brown','SF',25),(69,'Bobby Brown','PG',33),(70,'Jaylen Brown','SG',21),(71,'Lorenzo Brown','PG',7),(72,'Markel Brown','SG',26),(73,'Sterling Brown','SG',22),(74,'Nicolas Brussino','SF',24),(75,'Thomas Bryant','C',20),(76,'Reggie Bullock','SF',26),(77,'Trey Burke','PG',25),(78,'Alec Burks','SG',26),(79,'Jimmy Butler','SG',28),(80,'Dwight Buycks','PG',28),(81,'Bruno Caboclo','SF',22),(82,'Jose Calderon','PG',36),(83,'Kentavious Caldwell-Pope','SG',24),(84,'Isaiah Canaan','PG-SG',26),(85,'Clint Capela','C',23),(86,'DeMarre Carroll','SF',31),(87,'Vince Carter','SF',41),(88,'Michael Carter-Williams','PG',26),(89,'Alex Caruso','PG',23),(90,'Omri Casspi','SF',29),(91,'Willie Cauley-Stein','C',24),(92,'Tyler Cavanaugh','PF',23),(93,'Mario Chalmers','PG',31),(94,'Tyson Chandler','C',35),(95,'Wilson Chandler','SF',30),(96,'Marquese Chriss','PF',20),(97,'Ian Clark','SG',26),(98,'Jordan Clarkson','SG',25),(99,'Gian Clavell','SG',24),(100,'Antonius Cleveland','SG',23),(101,'John Collins','PF',20),(102,'Zach Collins','C',20),(103,'Kyle Collinsworth','SF',26),(104,'Darren Collison','PG',30),(105,'Nick Collison','PF',370),(106,'Mike Conley','PG',30),(107,'Pat Connaughton','SG',25),(108,'Quinn Cook','PG',24),(109,'Charles Cooke','SG',23),(110,'Jack Cooley','PF',26),(111,'Matt Costello','C',24),(112,'DeMarcus Cousins','C',27),(113,'Robert Covington','SF',27),(114,'Allen Crabbe','SG',25),(115,'Torrey Craig','SF',27),(116,'Jamal Crawford','SG',37),(117,'Jordan Crawford','SG',29),(118,'Jae Crowder','SF',27),(119,'Dante Cunningham','SF',30),(120,'Stephen Curry','PG',29),(121,'Troy Daniels','SG',26),(122,'Anthony Davis','PF',24),(123,'Deyonta Davis','C',21),(124,'Ed Davis','C',28),(125,'Dewayne Dedmon','C',28),(126,'Sam Dekker','PF',23),(127,'Malcolm Delaney','PG',28),(128,'Matthew Dellavedova','PG',27),(129,'Luol Deng','SF',32),(130,'DeMar DeRozan','SG',28),(131,'Cheick Diallo','PF',21),(132,'Gorgui Dieng','C',28),(133,'Spencer Dinwiddie','PG',24),(134,'Tyler Dorsey','SG',21),(135,'Damyean Dotson','SG',23),(136,'Milton Doyle','SG',24),(137,'PJ Dozier','PG',21),(138,'Goran Dragic','PG',31),(139,'Larry Drew','PG',27),(140,'Andre Drummond','C',24),(141,'Jared Dudley','PF',32),(142,'Kris Dunn','PG',23),(143,'Kevin Durant','PF',29),(144,'Jarell Eddie','SF',26),(145,'Henry Ellenson','PF',21),(146,'Wayne Ellington','SG',30),(147,'Joel Embiid','C',23),(148,'James Ennis','SF',27),(149,'Tyler Ennis','PG',23),(150,'Jawun Evans','PG',21),(151,'Jeremy Evans','SF',30),(152,'Tyreke Evans','PG',28),(153,'Dante Exum','PG',22),(154,'Kenneth Faried','PF',28),(155,'Derrick Favors','C',26),(156,'Kay Felder','PG',22),(157,'Cristiano Felicio','C',25),(158,'Raymond Felton','PG',33),(159,'Terrance Ferguson','SG',19),(160,'Yogi Ferrell','SG',24),(161,'Dorian Finney-Smith','PF',24),(162,'Bryn Forbes','SG',24),(163,'Evan Fournier','SF',25),(164,'De\'Aaron Fox','PG',20),(165,'Tim Frazier','PG',27),(166,'Channing Frye','C',34),(167,'Markelle Fultz','SG',19),(168,'Danilo Gallinari','SF',29),(169,'Langston Galloway','SG',26),(170,'Marc Gasol','C',33),(171,'Pau Gasol','C',37),(172,'Rudy Gay','PF',31),(173,'Paul George','SF',27),(174,'Marcus Georges-Hunt','SG',23),(175,'Jonathan Gibson','PG',30),(176,'Taj Gibson','PF',32),(177,'Manu Ginobili','SG',40),(178,'Rudy Gobert','C',25),(179,'Aaron Gordon','PF',22),(180,'Eric Gordon','SG',29),(181,'Marcin Gortat','C',33),(182,'Treveon Graham','SG',24),(183,'Jerami Grant','PF',23),(184,'Jerian Grant','PG',25),(185,'Josh Gray','PG',24),(186,'Danny Green','SG',30),(187,'Draymond Green','PF',27),(188,'Gerald Green','SG',32),(189,'JaMychal Green','PF',27),(190,'Jeff Green','PF',31),(191,'Blake Griffin','PF',28),(192,'Daniel Hamilton','SG',22),(193,'Tim Hardaway','SG',25),(194,'James Harden','SG',28),(195,'Maurice Harkless','SF',24),(196,'Montrezl Harrell','C',24),(197,'Devin Harris','PG',34),(198,'Gary Harris','SG',23),(199,'Joe Harris','SG',26),(200,'Tobias Harris','PF',25),(201,'Aaron Harrison','SG',23),(202,'Andrew Harrison','PG',23),(203,'Shaquille Harrison','PG',24),(204,'Josh Hart','SG',22),(205,'Udonis Haslem','C',37),(206,'Nigel Hayes','SF',23),(207,'Gordon Hayward','SF',27),(208,'Reggie Hearn','SG',26),(209,'Myke Henry','SF',25),(210,'John Henson','C',27),(211,'Juan Hernangomez','PF',22),(212,'Willy Hernangomez','C',23),(213,'Mario Hezonja','SF',22),(214,'Isaiah Hicks','PF',23),(215,'Buddy Hield','SG',25),(216,'Nene Hilario','C',35),(217,'George Hill','PG',31),(218,'Solomon Hill','SF',26),(219,'Darrun Hilliard','SG',24),(220,'Jrue Holiday','SG',27),(221,'Justin Holiday','SG',28),(222,'John Holland','SF',29),(223,'Rondae Hollis-Jefferson','SF',23),(224,'Richaun Holmes','C',24),(225,'Rodney Hood','SG',25),(226,'Scotty Hopson','SG',28),(227,'Al Horford','C',31),(228,'Danuel House','SG',24),(229,'Dwight Howard','C',32),(230,'Josh Huestis','PF',26),(231,'R.J. Hunter','SG',24),(232,'Vince Hunter','PF',23),(233,'Serge Ibaka','PF',28),(234,'Andre Iguodala','SF',34),(235,'Ersan Ilyasova','PF',30),(236,'Joe Ingles','SF',30),(237,'Andre Ingram','SG',32),(238,'Brandon Ingram','SF',20),(239,'Kyrie Irving','PG',25),(240,'Jonathan Isaac','PF',20),(241,'Wesley Iwundu','SF',23),(242,'Jarrett Jack','PG',34),(243,'Aaron Jackson','PG',31),(244,'Demetrius Jackson','PG',23),(245,'Josh Jackson','SF',20),(246,'Justin Jackson','SF',22),(247,'Reggie Jackson','PG',27),(248,'LeBron James','PF',33),(249,'Mike James','PG',27),(250,'Al Jefferson','C',33),(251,'Richard Jefferson','SF',37),(252,'Brandon Jennings','PG',28),(253,'Jonas Jerebko','PF',30),(254,'Amir Johnson','C',30),(255,'Brice Johnson','PF',23),(256,'Dakari Johnson','C',22),(257,'James Johnson','PF',30),(258,'Joe Johnson','SF',36),(259,'Omari Johnson','PF',28),(260,'Stanley Johnson','SF',21),(261,'Tyler Johnson','PG',25),(262,'Wesley Johnson','SF',30),(263,'Nikola Jokic','C',22),(264,'Damian Jones','C',22),(265,'Derrick Jones','SF',20),(266,'Jalen Jones','SF',24),(267,'Tyus Jones','PG',21),(268,'DeAndre Jordan','C',29),(269,'Cory Joseph','PG',26),(270,'Frank Kaminsky','PF',24),(271,'Enes Kanter','C',25),(272,'Luke Kennard','SG',21),(273,'Michael Kidd-Gilchrist','SF',24),(274,'Sean Kilpatrick','SG',28),(275,'Maxi Kleber','PF',26),(276,'Furkan Korkmaz','SG',20),(277,'Luke Kornet','PF',22),(278,'Kyle Korver','SG',36),(279,'Kosta Koufos','C',28),(280,'Kyle Kuzma','PF',22),(281,'Mindaugas Kuzminskas','SF',28),(282,'Skal Labissiere','PF',21),(283,'Jeremy Lamb','SG',25),(284,'Shane Larkin','PG',25),(285,'Joffrey Lauvergne','C',26),(286,'Zach LaVine','SG',22),(287,'Jake Layman','SF',23),(288,'T.J. Leaf','PF',20),(289,'Courtney Lee','SG',32),(290,'Damion Lee','SG',25),(291,'Walt Lemon','PG',25),(292,'Alex Len','C',24),(293,'Kawhi Leonard','SF',26),(294,'Meyers Leonard','C',25),(295,'Jon Leuer','PF',28),(296,'Caris LeVert','SF',23),(297,'DeAndre Liggins','SG',29),(298,'Damian Lillard','PG',27),(299,'Jeremy Lin','PG',29),(300,'Shaun Livingston','PG',32),(301,'Kevon Looney','C',21),(302,'Brook Lopez','C',29),(303,'Robin Lopez','C',29),(304,'Kevin Love','C',29),(305,'Kyle Lowry','PG',31),(306,'Timothe Luwawu-Cabarrot','SF',22),(307,'Tyler Lydon','PF',21),(308,'Trey Lyles','PF',22),(309,'Shelvin Mack','PG',27),(310,'Josh Magette','PG',28),(311,'Ian Mahinmi','C',31),(312,'Thon Maker','C',20),(313,'Boban Marjanovic','C',29),(314,'Lauri Markkanen','PF',20),(315,'Jarell Martin','PF',23),(316,'Frank Mason','PG',23),(317,'Mangok Mathiang','C',25),(318,'Wesley Matthewsm','SF',31),(319,'Luc Mbah a Moute','PF',31),(320,'James Michael McAdoo','PF',25),(321,'Patrick McCaw','SG',22),(322,'CJ McCollum','SG',26),(323,'T.J. McConnell','PG',25),(324,'Erik McCree','SF',24),(325,'Chris McCullough','PF',22),(326,'Doug McDermott','SF',26),(327,'JaVale McGee','C',30),(328,'Rodney McGruder','SG',26),(329,'Trey McKinney-Jones','SG',27),(330,'Alfonzo McKinnie','SF',25),(331,'Ben McLemore','SG',24),(332,'Josh McRoberts','PF',30),(333,'Jodie Meeks','SG',30),(334,'Salah Mejri','C',31),(335,'Jordan Mickey','PF',23),(336,'Khris Middleton','SF',26),(337,'C.J. Miles','SF',30),(338,'Darius Miller','SF',27),(339,'Malcolm Miller','SF',24),(340,'Patty Mills','PG',29),(341,'Paul Millsap','PF',32),(342,'Nikola Mirotic','PF',26),(343,'Donovan Mitchell','SG',21),(344,'Naz Mitrou-Long','SG',24),(345,'Malik Monk','SG',19),(346,'Greg Monroe','C',27),(347,'Luis Montero','SG',24),(348,'Ben Moore','PF',22),(349,'E\'Twaun Moore','SG',28),(350,'Eric Moreland','PF',26),(351,'Jaylen Morris','SG',22),(352,'Marcus Morris','PF',28),(353,'Markieff Morris','PF',28),(354,'Monte Morris','PG',22),(355,'Johnathan Motley','PF',22),(356,'Timofey Mozgov','C',31),(357,'Emmanuel Mudiay','PG',21),(358,'Shabazz Muhammad','SF-SG',25),(359,'Xavier Munford','SG',25),(360,'Dejounte Murray','PG',21),(361,'Jamal Murray','PG',20),(362,'Mike Muscala','C',26),(363,'Abdel Nader','SF',24),(364,'Larry Nance','C',25),(365,'Shabazz Napier','PG',26),(366,'Jameer Nelson','PG',35),(367,'Raul Neto','PG',25),(368,'Georges Niang','PF',24),(369,'Joakim Noah','C',32),(370,'Nerlens Noel','C',23),(371,'Lucas Nogueira','C',25),(372,'Dirk Nowitzki','C',39),(373,'Frank Ntilikina','PG',19),(374,'Jusuf Nurkic','C',23),(375,'David Nwaba','SG',25),(376,'Johnny O\'Bryant','PF',24),(377,'Royce O\'Neale','SF',24),(378,'Kyle O\'Quinn','C',27),(379,'Semi Ojeleye','PF',23),(380,'Emeka Okafor','C',35),(381,'Jahlil Okafor','C',22),(382,'Victor Oladipo','SG',25),(383,'Kelly Olynyk','PF',26),(384,'Chinanu Onuaku','C',21),(385,'Cedi Osman','SF',22),(386,'Kelly Oubre','SF',22),(387,'Zaza Pachulia','C',33),(388,'Marcus Paige','PG',24),(389,'Georgios Papagiannis','C',20),(390,'Jabari Parker','PF',22),(391,'Tony Parker','PG',35),(392,'Chandler Parsons','SF',29),(393,'Patrick Patterson','PF',28),(394,'Justin Patton','C',20),(395,'Brandon Paul','SG',26),(396,'Chris Paul','PG',32),(397,'Adreian Payne','PF',26),(398,'Cameron Payne','PG',23),(399,'Elfrid Payton','PG',23),(400,'Gary Payton','PG',25),(401,'Kendrick Perkins','C',33),(402,'London Perrantes','PG',23),(403,'Alec Peters','PF',22),(404,'Marshall Plumlee','C',25),(405,'Mason Plumlee','C',27),(406,'Miles Plumlee','C',29),(407,'Jakob Poeltl','C',22),(408,'Quincy Pondexter','SF',29),(409,'Otto Porter','SF',24),(410,'Bobby Portis','PF',22),(411,'Kristaps Porzingis','PF',22),(412,'Dwight Powell','C',26),(413,'Norman Powell','SG',24),(414,'Alex Poythress','PF',24),(415,'Jacob Pullen','PG',28),(416,'Rodney Purvis','SG',23),(417,'Zhou Qi','C',22),(418,'Tim Quarterman','SG',23),(419,'Ivan Rabb','PF',20),(420,'Julius Randle','C',23),(421,'Zach Randolph','PF',36),(422,'Xavier Rathan-Mayes','SG',23),(423,'J.J. Redick','SG',33),(424,'Davon Reed','SG',22),(425,'Willie Reed','C',27),(426,'Josh Richardson','SF',24),(427,'Malachi Richardson','SG',22),(428,'Austin Rivers','SG',25),(429,'Andre Roberson','SG',26),(430,'Devin Robinson','SF',22),(431,'Glenn Robinson','SF',24),(432,'Rajon Rondo','PG',31),(433,'Derrick Rose','PG',29),(434,'Terrence Ross','SG',26),(435,'Terry Rozier','PG',23),(436,'Ricky Rubio','PG',27),(437,'D\'Angelo Russell','PG',21),(438,'Domantas Sabonis','C',21),(439,'JaKarr Sampson','SF',24),(440,'Dario Saric','PF',23),(441,'Tomas Satoransky','SG',26),(442,'Dennis Schroder','PG',24),(443,'Mike Scott','PF',29),(444,'Thabo Sefolosha','SF',33),(445,'Wayne Selden','SG',23),(446,'Ramon Sessions','PG',31),(447,'Iman Shumpert','SG',27),(448,'Pascal Siakam','PF',23),(449,'Xavier Silas','SG',30),(450,'Ben Simmons','PG',21),(451,'Jonathon Simmons','SG',28),(452,'Kobi Simmons','PG',20),(453,'Kyle Singler','SF',29),(454,'Marcus Smart','SG',23),(455,'Dennis Smith','PG',20),(456,'Ish Smith','PG',29),(457,'J.R. Smith','SG',32),(458,'Jason Smith','C',31),(459,'Josh Smith','PF',32),(460,'Tony Snell','SG',26),(461,'Marreese Speights','C',30),(462,'Nik Stauskas','SG',24),(463,'Lance Stephenson','SG',27),(464,'David Stockton','PG',26),(465,'Julyan Stone','SG',29),(466,'Edmond Sumner','PG',22),(467,'Caleb Swanigan','PF',20),(468,'Jayson Tatum','SF',19),(469,'Isaiah Taylor','PG',23),(470,'Jeff Teagu','PG',29),(471,'Marquis Teague','PG',24),(472,'Mirza Teletovic','PF',32),(473,'Garrett Temple','SG',31),(474,'Milos Teodosic','PG',30),(475,'Jason Terry','SG',40),(476,'Daniel Theis','C',25),(477,'Isaiah Thomas','PG',28),(478,'Lance Thomas','PF',29),(479,'Klay Thompson','SG',27),(480,'Tristan Thompson','C',26),(481,'Sindarius Thornwell','SG',23),(482,'Anthony Tolliver','PF',32),(483,'Karl-Anthony Towns','C',22),(484,'P.J. Tucker','PF',32),(485,'Evan Turner','SF',29),(486,'Myles Turner','C',21),(487,'Ekpe Udoh','C',30),(488,'Tyler Ulis','PG',22),(489,'Jonas Valanciunas','C',25),(490,'Denzel Valentine','SG',24),(491,'Fred VanVleet','PG',23),(492,'Rashad Vaughn','SG',21),(493,'Noah Vonleh','PF',22),(494,'Nikola Vucevic','C',27),(495,'Dwyane Wade','SG',36),(496,'Dion Waiters','SG',26),(497,'Kemba Walker','PG',27),(498,'John Wall','PG',27),(499,'Tyrone Wallace','PG',23),(500,'Taurean Waller-Prince','SF',23),(501,'Derrick Walton','PG',22),(502,'Jameel Warney','PF',24),(503,'T.J. Warren','SF',24),(504,'Travis Wear','SF',27),(505,'James Webb','SF',24),(506,'Briante Weber','PG',25),(507,'David West','C',37),(508,'Russell Westbrook','PG',29),(509,'Andrew White','SF',24),(510,'Derrick White','PG',23),(511,'Okaro White','PF',25),(512,'Isaiah Whitehead','PG',22),(513,'Hassan Whiteside','C',28),(514,'Andrew Wiggins','SF',22),(515,'Jacob Wiley','PF',23),(516,'Damien Wilkins','SF',38),(517,'Alan Williams','PF',25),(518,'C.J. Williams','SG',27),(519,'Derrick Williams','PF',26),(520,'Lou Williams','SG',31),(521,'Marvin Williams','PF',31),(522,'Matt Williams','SG',24),(523,'Troy Williams','SF',23),(524,'D.J. Wilson','PF',21),(525,'Jamil Wilson','SF',27),(526,'Justise Winslow','PF',21),(527,'Jeff Withey','C',27),(528,'Nate Wolters','PG',26),(529,'Brandan Wright','PF',30),(530,'Delon Wright','PG',25),(531,'Guerschon Yabusele','PF',22),(532,'James Young','SG',22),(533,'Joe Young','PG',25),(534,'Nick Young','SG',32),(535,'Thaddeus Young','PF',29),(536,'Cody Zeller','C',25),(537,'Tyler Zeller','C',28),(538,'Paul Zipser','SF',23),(539,'Ante Zizic','C',21),(540,'Ivica Zubac','C',20),(541,'Kobe Bryant','PG',42),(542,'Wilt Chamberlain','PF',45),(543,'Gilbert Arenas','C',62),(544,'Allen Iverson','SF',45),(545,'Bernard King','PG',35),(546,'Larry Bird','SF',32),(547,'Tom Chambers','C',45),(548,'Michael Jordan','PG',55),(549,'Karl Malone','SF',53),(550,'Shaquille O\'Neal','C',52),(551,'David Thompson','PF',42),(552,'Elgin Baylor','SF',460),(553,'David Robinson','C',41),(554,'Pete Maravich','PG',48),(555,'Rick Barry','C',46),(556,'Joe Fulks','SG',52),(557,'Jerry West','C',55),(558,'George Gervin','SG',57),(559,'Tracy McGrady','PG',54),(560,'George Mikan','C',49),(561,'Samuel Kaleopa','PG',21);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 15:29:39
