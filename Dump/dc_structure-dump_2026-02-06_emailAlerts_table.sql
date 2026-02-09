-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (arm64)
--
-- Host: 192.168.50.2    Database: dc
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.22.04.1

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
-- Table structure for table `emailAlerts`
--

DROP TABLE IF EXISTS `emailAlerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emailAlerts` (
  `idemailAlerts` int NOT NULL AUTO_INCREMENT,
  `email` text,
  `keywords_string` text,
  `denverTelevision` text,
  `realTimeAlerts` tinytext,
  `mediaTypeTelevision` tinyint DEFAULT NULL,
  `country` text,
  `stateProv` text,
  `city` text,
  `startDate` text,
  `startTime` text,
  `endDate` text,
  `endTime` text,
  `emails` text,
  `numOfResults` int DEFAULT NULL,
  `formatEmail` tinyint DEFAULT NULL,
  `formatDoc` tinyint DEFAULT NULL,
  `formatExcel` tinyint DEFAULT NULL,
  `formatPDF` tinyint DEFAULT NULL,
  `formatHTML` tinyint DEFAULT NULL,
  `digiViewType` tinyint DEFAULT NULL,
  `digiViewAndAnalysis` tinyint DEFAULT NULL,
  `textReport` tinyint DEFAULT NULL,
  `textReportAnalysis` tinyint DEFAULT NULL,
  `hitReport` tinyint DEFAULT NULL,
  `hitReportAndAnalysis` tinyint DEFAULT NULL,
  `positivePhrases` varchar(45) DEFAULT NULL,
  `negativePhrases` varchar(45) DEFAULT NULL,
  `phrases` varchar(45) DEFAULT NULL,
  `market` varchar(128) DEFAULT NULL,
  `magazineName` varchar(128) DEFAULT NULL,
  `newspaperName` varchar(128) DEFAULT NULL,
  `socialMediaName` varchar(128) DEFAULT NULL,
  `mediaType` varchar(128) DEFAULT NULL,
  `groupId` varchar(64) DEFAULT NULL,
  `alertId` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`idemailAlerts`)
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-08 19:27:32
