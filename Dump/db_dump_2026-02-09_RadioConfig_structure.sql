-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
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
-- Table structure for table `RadioConfig`
--

DROP TABLE IF EXISTS `RadioConfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RadioConfig` (
  `dbHost` varchar(20) NOT NULL,
  `Date_Time` datetime NOT NULL,
  `dbUser` varchar(1024) DEFAULT NULL,
  `dbPass` varchar(1024) DEFAULT NULL,
  `dbName` varchar(1024) DEFAULT NULL,
  `dbPort` int unsigned DEFAULT NULL,
  `dbUnixSock` varchar(1024) DEFAULT NULL,
  `dbFlag` int unsigned DEFAULT NULL,
  `recShellScriptPath` varchar(1024) DEFAULT NULL,
  `recStorageLoc` varchar(1024) DEFAULT NULL,
  `recLap` int unsigned DEFAULT NULL,
  `arcPath` varchar(1024) DEFAULT NULL,
  `Station1` varchar(30) DEFAULT NULL,
  `Station2` varchar(30) DEFAULT NULL,
  `Station3` varchar(30) DEFAULT NULL,
  `Station4` varchar(30) DEFAULT NULL,
  `Station5` varchar(30) DEFAULT NULL,
  `Station6` varchar(30) DEFAULT NULL,
  `URL1` varchar(1024) DEFAULT NULL,
  `URL2` varchar(1024) DEFAULT NULL,
  `URL3` varchar(1024) DEFAULT NULL,
  `URL4` varchar(1024) DEFAULT NULL,
  `URL5` varchar(1024) DEFAULT NULL,
  `URL6` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`dbHost`,`Date_Time`),
  CONSTRAINT `dbHostName_FK` FOREIGN KEY (`dbHost`) REFERENCES `Hosts` (`Host_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-09 10:02:28
