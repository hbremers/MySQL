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
-- Table structure for table `Admins`
--

DROP TABLE IF EXISTS `Admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admins` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `role` int DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`email`),
  KEY `role_idx` (`role`),
  CONSTRAINT `RoleID` FOREIGN KEY (`role`) REFERENCES `AdminRoles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admins`
--

LOCK TABLES `Admins` WRITE;
/*!40000 ALTER TABLE `Admins` DISABLE KEYS */;
INSERT INTO `Admins` VALUES ('admin@test','$2b$10$1pWYpRTmOMXSL8XAx37v1ukJ9mdvBaeofw9pZ9sDeiNv6PqbwZX1u','Admin','Test',2,NULL,'active'),('amcalde9@asu.edu','$2b$05$gFx1Mcv2Y6LT4t2u8BmiluYV7oi7ybv0b.Z8e13u1GkpZx0miGlmm','Andrew','Calderon',24,NULL,'active'),('asu5@gmail.com','$2b$05$gFx1Mcv2Y6LT4t2u8BmiluYV7oi7ybv0b.Z8e13u1GkpZx0miGlmm','ASU','Team 5',2,NULL,'active'),('bobshapiro40@gmail.com','$2b$10$c5WAvqwKCH8Audwg.vKKsu30zYzS8Cor9SL7uPIwJODKmcZOspwc.','Bob','Shapiro',2,NULL,'active'),('devbackendanalyst@gmail.com','$2b$10$V/xTEphPzGFSi2hrHh9Yue90fK9JD/eHpygpeKT4sKg0IgKXmPDUG','BA','Dev',NULL,NULL,'active'),('devcustomersupport@gmail.com','$2b$10$0g5DknsXJEOIGNcxjmZTwOdcukdA1dmQXkn9ugxH3h/t1gSkl3Gbq','CS','Dev',4,NULL,'active'),('deverrormanager@gmail.com','$2b$10$eIw1YRaD/4b8aB/Qp15XbuXJjrJCQGDcgh1VWnqtq/yGHDoXwwaZi','EM','Dev',NULL,NULL,'active'),('devgraphs@gmail.com','$2b$10$FZHMTnTKZrbkT0iuyJJcrOOh8cpgB4DOrZ8BFw78yeCH1RTP0f292','G','Dev',4,NULL,'active'),('devoverlord@gmail.com','$2b$10$OlxqxrMpyzVf/ByI2MKDEOfexqSVHrSzwnrBG5WbRCj5HQyObHs/6','Overlord','Dev',18,NULL,'active'),('devoverseer@gmail.com','$2b$10$8WszI2ES6Yf/rPRJ7kIpI.a7EC7l4gEUF0rqX/KKMXxxqJjUr4mwe','Overseer','Dev',5,NULL,'active'),('devunauthorized@gmail.com','$2b$10$m9ZOaohbxuKkLIqDfAx2jumQC4pS1qaEnSRE1sUpxdZrj3eSYXHdy','U','Dev',1,NULL,'active'),('haile.61@osu.edu','$2b$10$Kp78gknsDOccf/LHwQfPn.lCCXYxoOCyzK2wR9RXCHqt6ThHuqPYW','Yohannes','Haile',2,NULL,'active'),('hbremers@gmail.com','$2b$10$0U6gC4KFUimufjbd.jENCeTeLd9srs2Ag5CVa7n5xC.iwnxJe/FCq','Henry','Bremers',2,NULL,'active'),('jbcohen4@asu.edu','$2b$05$gFx1Mcv2Y6LT4t2u8BmiluYV7oi7ybv0b.Z8e13u1GkpZx0miGlmm','Joseph','Cohen',24,NULL,'active'),('jcsulli5@asu.edu','$2b$10$Z4iZHI7BJWanhjJGo.wFNe.P2LRENqRdEPI91wrN4YecRwnPps49q','JonPaul','Sullivan',2,NULL,'active'),('li.12895@osu.edu','$2b$10$ZTBYePZHpF7DFkd1nLEuD.XkL6bJI8506klo7/pI9GZBl4vCHBDa2','Chenzhong','Li',2,NULL,'active'),('raejae@asu.edu','$2b$10$oWsCAgQAC5bUKgQBp2jSdOgCwj58schciaPi0PiMJY.kSWBi8ZjPi','Raejae','ASU',2,'2025-11-07 14:06:10','active'),('singh.1850@osu.edu','$2b$10$3T0P8bxoNNEAjsErbOQgK.HcWgJ1O2jSQLsEerH0/vuXTQJ8OvKuW','Abhayjeet','Singh',2,NULL,'active'),('team15@asu.edu','$2b$10$nR07f0n/WkVZIK5JJrWi6uSfhqMGr09y4SzS1ZSvVQDhd4DXQwHgy','Team15','Admin',4,NULL,'active'),('test@asu.edu','$2b$10$QpOnmEOdPuW3ugqZusbOCeFbif5oMHKBBhxK7pS4X/UjV870f50ay','test','test',2,'2025-11-05 17:57:43','active'),('test@gmail.com','$2b$10$vCBPKTRQpYmPgQQoZfXrpuqB9V.DGEcsdq13.CpOsJivJq3rJUul.','Test','Test',2,NULL,'active');
/*!40000 ALTER TABLE `Admins` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-09 15:13:22
