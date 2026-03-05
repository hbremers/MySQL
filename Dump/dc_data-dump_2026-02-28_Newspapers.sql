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
-- Dumping data for table `Newspapers`
--

LOCK TABLES `Newspapers` WRITE;
/*!40000 ALTER TABLE `Newspapers` DISABLE KEYS */;
INSERT INTO `Newspapers` VALUES (1,'The New York Times','United States','New York','New York City','https://www.nytimes.com/'),(2,'The Washington Post','United States','District of Columbia','Washington D.C.','https://www.washingtonpost.com/'),(3,'The Wall Street Journal','United States','New York','New York City','https://www.wsj.com/'),(4,'Los Angeles Times','United States','California','Los Angeles','http://www.latimes.com/'),(5,'Chicago Tribune','United States','Illinois','Chicago','http://www.chicagotribune.com'),(18,'The Guardian','England','Greater London','London','https://www.theguardian.com/us'),(19,'Der Spiegel','Germany','Hamburg','Hamburg','http://www.spiegel.de'),(20,'El Mundo','Spain','Madrid','Madrid','http://www.elmundo.es'),(21,'USA Today','United States','Virginia','McLean','https://www.usatoday.com'),(26,'The Denver Post','United States','Colorado','Denver','https://www.denverpost.com'),(31,'Houston Chronicle','United States','Texas','Houston','https://www.chron.com'),(32,'Le Figaro','France','Île-de-France','Paris','http://www.lefigaro.fr/'),(33,'China Daily','China','Beijing Municipality','Beijing','http://usa.chinadaily.com.cn/'),(34,'The Mercury News','United States','California','San Jose','https://www.mercurynews.com/'),(35,'Tampa Bay Times','United States','Florida','Tampa','http://www.tampabay.com/'),(36,'The Plain Dealer','United States','Ohio','Cleveland','http://www.cleveland.com/plaindealer/'),(37,'The Philadelphia Inquirer','United States','Pennsylvania','Philadelphia','http://www.philly.com/'),(38,'New York Daily News','United States','New York','New York City','http://www.nydailynews.com/'),(39,'New York Post','United States','New York','New York City','https://nypost.com/'),(40,'Chicago Sun-Times','United States','Illinois','Chicago','https://chicago.suntimes.com/'),(41,'Newsday','United States','New York','Melville','https://www.newsday.com/'),(42,'Orange County Register','United States','California','Anaheim','https://www.ocregister.com/'),(43,'The Star-Ledger','United States','New Jersey','Newark','http://www.nj.com/starledger/'),(44,'Star Tribune','United States','Minnesota','Minneapolis','http://www.startribune.com/'),(45,'The Arizona Republic','United States','Arizona','Phoenix','https://www.azcentral.com/'),(46,'Honolulu Star-Advertiser','United States','Hawaii','Honolulu','http://www.staradvertiser.com/'),(47,'Las Vegas Review-Journal','United States','Nevada','Las Vegas','https://www.reviewjournal.com/'),(48,'The San Diego Union-Tribune','United States','California','San Diego','http://www.sandiegouniontribune.com/'),(49,'The Boston Globe','United States','Massachusetts','Boston','https://www.bostonglobe.com/'),(50,'San Francisco Chronicle','United States','California','San Francisco','https://www.sfchronicle.com/'),(51,'The Columbus Dispatch','United States','Ohio','Columbus','http://www.dispatch.com/'),(52,'The Indianapolis Star','United States','Indiana','Indianapolis','https://www.indystar.com/'),(53,'Toronto Star','Canada','Ontario','Toronto','https://www.thestar.com/'),(54,'The Daily Mail','England','Greater London','London','http://www.dailymail.co.uk/ushome/index.html'),(55,'The Times of India','India','Maharashtra','Mumbai','https://timesofindia.indiatimes.com/'),(56,'Chosun Ilbo','South Korea','Seoul','Seoul','chosun.com'),(58,'Cincinnati Enquirer','United States','Ohio','Cincinnati','https://www.cincinnati.com/');
/*!40000 ALTER TABLE `Newspapers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-28 15:57:41
