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
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `email` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'unassigned',
  PRIMARY KEY (`email`),
  CONSTRAINT `fk_user_roles_email` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES ('aidtomjohn624@gmail.com','unassigned'),('ananyaseth@vt.edu','unassigned'),('annywang0106@gmail.com','unassigned'),('bennettgodinhonelson@gmail.com','unassigned'),('bjiao1@asu.edu','unassigned'),('bob.digiclips@gmail.com','unassigned'),('bobshapiro40@gmail.com','unassigned'),('calebmblack12@gmail.com','unassigned'),('chinthareddyeshanth@gmail.com','unassigned'),('demotest1@gmail.com','unassigned'),('demotest@gmail.com','unassigned'),('dfsmith070796@yahoo.com','unassigned'),('gjobiper@asu.edu','unassigned'),('gmanflash12@gmail.com','unassigned'),('hbremers@gmail.com','unassigned'),('hello@123.com','unassigned'),('hello@12345.com','unassigned'),('hellocat@gmail.com','unassigned'),('hgaldoniii@gmail.com','unassigned'),('jaydeewalter456@gmail.com','unassigned'),('jenniferalarcon96@gmail.com','unassigned'),('johe8497@colorado.edu','unassigned'),('joshclyde11@gmail.com','unassigned'),('kbethel@drew.edu','unassigned'),('laptop@gmail.com','unassigned'),('lengemannp@gmail.com','unassigned'),('newtest@yahoo.com','unassigned'),('nrush@drew.edu','unassigned'),('obobsummer@gmail.com','unassigned'),('pc@gmail.com','unassigned'),('pratee.de@icloud.com','unassigned'),('priyanka.chopra1612@gmail.com','unassigned'),('rawr2@gmail.com','unassigned'),('rshapiro2@msn.com','unassigned'),('sarah@keckfamily.org','unassigned'),('spiderman@gmail.com','unassigned'),('summerso@oregonstate,edu','unassigned'),('test123@456.com','unassigned'),('test2@gmail.com','unassigned'),('test@gmail.com','unassigned'),('testuser@gmail.com','unassigned'),('test_digi@yopmail.com','unassigned'),('virus@IM.com','unassigned');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-09 15:13:20
