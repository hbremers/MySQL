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
-- Table structure for table `TVConfigNew`
--

DROP TABLE IF EXISTS `TVConfigNew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TVConfigNew` (
  `HostName` varchar(30) NOT NULL,
  `Date_Time` datetime NOT NULL,
  `g_version` varchar(45) DEFAULT '4.3',
  `g_mod` int unsigned DEFAULT '60',
  `g_market` varchar(10) DEFAULT NULL,
  `g_confile` varchar(100) DEFAULT NULL,
  `g_record_dir` varchar(100) DEFAULT NULL,
  `g_arch_dir` varchar(100) DEFAULT NULL,
  `g_mount` varchar(100) DEFAULT NULL,
  `g_preset` varchar(20) DEFAULT NULL,
  `g_size` varchar(10) DEFAULT NULL,
  `g_show_cmd` int unsigned DEFAULT NULL,
  `g_Backup` int DEFAULT '0',
  `Station1` varchar(30) DEFAULT NULL,
  `Station2` varchar(30) DEFAULT NULL,
  `Station3` varchar(30) DEFAULT NULL,
  `Station4` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`HostName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Instructions for new configurations for TV backend processes';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-09 14:06:43
