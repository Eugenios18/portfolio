-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: musica
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `AlbumID` int(11) NOT NULL AUTO_INCREMENT,
  `nomeAlb` varchar(45) NOT NULL,
  `anoLancamento` year(4) NOT NULL,
  `nomeBanda` varchar(45) NOT NULL,
  `bandaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AlbumID`),
  KEY `banda_idx` (`bandaID`),
  CONSTRAINT `banda` FOREIGN KEY (`bandaID`) REFERENCES `banda` (`bandaID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (6,'Concentrado',1980,'GNR',1),(7,'Brothers in Arms',1977,'Dire Straits',2),(8,'Making Movies',1977,'Dire Straits',2),(9,'Reckless 30th Anniversary',1959,'Brayn Adams',4),(10,'DiscO-Zone',2004,'O-zone',5);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `artistaID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `Nacionalidade` varchar(50) DEFAULT NULL,
  `bandaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`artistaID`),
  KEY `banda _idx` (`bandaID`),
  CONSTRAINT `bandaID` FOREIGN KEY (`bandaID`) REFERENCES `banda` (`bandaID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Dan Bãlan','Moldávia',5),(2,'Arsenie Toderas','Moldávia',5),(3,'Radu Sirbu','Moldávia',5);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banda`
--

DROP TABLE IF EXISTS `banda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banda` (
  `bandaID` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bandaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banda`
--

LOCK TABLES `banda` WRITE;
/*!40000 ALTER TABLE `banda` DISABLE KEYS */;
INSERT INTO `banda` VALUES (1,'GNR'),(2,'Dire Straits'),(4,'Bryan Adams'),(5,'O-zone');
/*!40000 ALTER TABLE `banda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canções`
--

DROP TABLE IF EXISTS `canções`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canções` (
  `cançaoID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `letra` longtext,
  `albumID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cançaoID`),
  KEY `album_idx` (`albumID`),
  CONSTRAINT `album` FOREIGN KEY (`albumID`) REFERENCES `album` (`AlbumID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canções`
--

LOCK TABLES `canções` WRITE;
/*!40000 ALTER TABLE `canções` DISABLE KEYS */;
INSERT INTO `canções` VALUES (1,'One Night Love Affair','Night Love',9),(2,'She s Only Happy When She s Dancin','Only Happy',9),(3,'Run to You','Run to You',9),(4,'Heaven','Heaven',9),(5,'Somebody','Somebody',9),(6,'Summer of 69','Summer',9),(7,'Kids Wanna Rock','KIds',9),(8,'It s Only Love','Only Love',9),(9,'Long Gone','Long Gone',9),(10,'Ain t Gonna Cry','Ain t Gonn',9),(12,'Walk of Life','Here comes Johnny singing oldies, goldies\n\"Be-Bop-A-Lula, \" \"Baby What I Say\"\nHere comes Johnny singing, \"I Gotta Woman\"\nDown in the tunnels, trying to make it pay\nHe got the action, he got the motion\nYeah, the boy can play\nDedication, devotion\nTurning all the night time into the day\nHe do the song about the sweet lovin\' woman\nHe do the song about the knife\nHe do the walk, do the walk of life\nYeah, he do the walk of life\nHere comes Johnny, gonna tell you the story\nHand me down my walkin\' shoes\nHere comes Johnny with the power and the glory\nBackbeat the talkin\' blues\nHe got the action, he got the motion\nYeah, the boy can play\nDedication, devotion\nTurning all the night time into the day\nThe song about the sweet lovin\' woman\nHe do the song about the knife\nThen he do the walk, he do the walk of life\nYeah, he do the walk of life\nHere comes Johnny singing oldies, goldies\n\"Be-Bop-A-Lula, \" \"Baby What I Say\"\nHere comes Johnny singing, \"I Gotta Woman\"\nDown in the tunnels, trying to make it pay\nHe got the action, he got the motion\nYeah, the boy can play\nDedication, devotion\nTurning all the night time into the day\nAnd after all the violence and double talk\nThere\'s just a song in all the trouble and the strife\nYou do the walk, yeah, you do the walk of life\nHmm, you do the walk of life',7),(13,'Reckless (Bonus Track, Previously Unreleased',NULL,9);
/*!40000 ALTER TABLE `canções` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cançõesview`
--

DROP TABLE IF EXISTS `cançõesview`;
/*!50001 DROP VIEW IF EXISTS `cançõesview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cançõesview` AS SELECT 
 1 AS `Nome`,
 1 AS `letra`,
 1 AS `nomeAlb`,
 1 AS `nomeBanda`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `cançõesview`
--

/*!50001 DROP VIEW IF EXISTS `cançõesview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cançõesview` AS select `c`.`Nome` AS `Nome`,`c`.`letra` AS `letra`,`a`.`nomeAlb` AS `nomeAlb`,`a`.`nomeBanda` AS `nomeBanda` from (`canções` `c` join `album` `a` on((`c`.`albumID` = `a`.`AlbumID`))) where (`c`.`Nome` = 'Walk of Life') */;
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

-- Dump completed on 2024-05-22 21:16:40
