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
-- Dumping data for table `Magazines`
--

LOCK TABLES `Magazines` WRITE;
/*!40000 ALTER TABLE `Magazines` DISABLE KEYS */;
INSERT INTO `Magazines` VALUES (1,'Time','United States','New York','New York City','http://time.com'),(2,'WIRED','United States','California','San Francisco','https://www.wired.com/'),(3,'Rolling Stone','United States','New York','New York City','https://www.rollingstone.com/'),(4,'New York Magazine','United States','New York','New York City','http://nymag.com/'),(5,'The New Yorker','United States','New York','New York City','https://www.newyorker.com/'),(8,'National Geographic','United States','District of Columbia','Washington D.C.','https://www.nationalgeographic.com'),(15,'AARP The Magazine','United States','District of Columbia','Washington D.C.','https://www.aarp.org/magazine/'),(18,'Good Housekeeping','United States','New York','New York City','https://www.goodhousekeeping.com/'),(19,'Game Informer','United States','Minnesota','Minneapolis','http://www.gameinformer.com/'),(20,'The Economist','England','Greater London','Westminster','https://www.economist.com/'),(24,'ESPN The Magazine','United States','Connecticut','Bristol','http://www.espn.com/'),(25,'Us Weekly','United States','New York','New York City','https://www.usmagazine.com/'),(26,'Sports Illustrated','United States','New York','New York City','https://www.si.com/'),(27,'Cosmos','Australia','Victoria','Melbourne','https://cosmosmagazine.com/'),(28,'Health','United States','Alabama','Birmingham','http://www.health.com/');
/*!40000 ALTER TABLE `Magazines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-28 15:12:11
