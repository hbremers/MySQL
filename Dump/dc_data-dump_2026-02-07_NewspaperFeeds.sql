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
-- Dumping data for table `NewspaperFeeds`
--

LOCK TABLES `NewspaperFeeds` WRITE;
/*!40000 ALTER TABLE `NewspaperFeeds` DISABLE KEYS */;
INSERT INTO `NewspaperFeeds` VALUES ('http://estaticos.elmundo.es/elmundo/rss/espana.xml','El Mundo','http://www.elmundo.es'),('http://feeds.washingtonpost.com/rss/politics','The Washington Post','https://www.washingtonpost.com/'),('http://rss.nytimes.com/services/xml/rss/nyt/World.xml','The New York Times','https://www.nytimes.com/'),('http://rssfeeds.azcentral.com/phoenix/local','The Arizona Republic','https://www.azcentral.com/'),('http://rssfeeds.cincinnati.com/cincinnati-home','Cincinnati Enquirer','https://www.cincinnati.com/'),('http://rssfeeds.indystar.com/indystar/todaystopstories','The Indianapolis Star','https://www.indystar.com/'),('http://rssfeeds.usatoday.com/usatoday-newstopstories&x=1','USA Today','https://www.usatoday.com'),('http://www.chicagotribune.com/news/feeds/rss2.0.xml','Chicago Tribune','http://www.chicagotribune.com'),('http://www.chinadaily.com.cn/rss/china_rss.xml','China Daily','http://usa.chinadaily.com.cn/'),('http://www.dailymail.co.uk/news/index.rss','The Daily Mail','http://www.dailymail.co.uk/ushome/index.html'),('http://www.latimes.com/local/crime/rss2.0.xml','Los Angeles Times','http://www.latimes.com/'),('http://www.lefigaro.fr/rss/figaro_actualites.xml','Le Figaro','http://www.lefigaro.fr/'),('http://www.nydailynews.com/cmlink/NYDN.News.rss','New York Daily News','http://www.nydailynews.com/'),('http://www.sandiegouniontribune.com/news/rss2.0.xml','The San Diego Union-Tribune','http://www.sandiegouniontribune.com/'),('http://www.startribune.com/rss/?sf=1&s=/','Star Tribune','http://www.startribune.com/'),('http://www.thestar.com/content/thestar/feed.RSSManagerServlet.topstories.rss','Toronto Star','https://www.thestar.com/'),('https://feeds.a.dj.com/rss/RSSWorldNews.xml','The Wall Street Journal - World News','https://www.wsj.com/'),('https://feeds.a.dj.com/rss/WSJcomUSBusiness.xml','The Wall Stree Journal - US Business','https://www.wsj.com/'),('https://nypost.com/feed/','New York Post','https://nypost.com/'),('https://www.boston.com/tag/national-news/feed','The Boston Globe','https://www.bostonglobe.com/'),('https://www.broomfieldenterprise.com/feed/','Broomfield Enterprise','https://www.broomfieldenterprise.com/'),('https://www.chron.com/rss/feed/News-270.php','Houston Chronicle','https://www.chron.com'),('https://www.dailycamera.com/feed/','Boulder Camera','https://www.dailycamera.com/'),('https://www.denverpost.com/feed/','Denver Post','https://www.denverpost.com/'),('https://www.mercurynews.com/feed/','The Mercury News','https://www.mercurynews.com/'),('https://www.ocregister.com/news/feed/','Orange County Register','https://www.ocregister.com/'),('https://www.sfgate.com/bayarea/feed/Bay-Area-News-429.php','San Francisco Chronicle','https://www.sfchronicle.com/'),('https://www.theguardian.com/us-news/rss','The Guardian','https://www.theguardian.com/us');
/*!40000 ALTER TABLE `NewspaperFeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dc'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `delete_old_srt` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb3 */ ;;
/*!50003 SET character_set_results = utf8mb3 */ ;;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `delete_old_srt` ON SCHEDULE EVERY 1 DAY STARTS '2017-05-01 13:13:08' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
DELETE FROM dc.SRT WHERE DATDIFF(NOW(), Created_at) >= 10;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'dc'
--
/*!50003 DROP FUNCTION IF EXISTS `restart_recording` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`172.19.13.%` FUNCTION `restart_recording`() RETURNS int
    NO SQL
    DETERMINISTIC
RETURN 1 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `split_str` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `split_str`(
  x VARCHAR(255),
  delim VARCHAR(12),
  pos INT
) RETURNS varchar(255) CHARSET utf8mb3
    NO SQL
    DETERMINISTIC
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '') ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `additional_cc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `additional_cc`(
MP4_file_name    TEXT,
Channel_id       INT,
Lower_cc_num     INT,
Upper_cc_num     INT
)
BEGIN 
    SELECT CONCAT_WS(' ', Line1, Line2, Line3, Line4) AS Result_Line

           FROM SRT
           WHERE
			Channel_id = SRT.Channel_Id AND MP4_file_name = SRT.Mp4_File_Name AND SRT.CC_num BETWEEN Lower_cc_num AND Upper_cc_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_active_TV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_active_TV`()
BEGIN
SELECT 
    dc.Hosts.Host_name,
    dc.Checkin.Station,
    TIMEDIFF(NOW(), dc.Checkin.Finished_at) AS Elapsed_Time,
    dc.Checkin.Finished_at
FROM
    dc.Checkin
        RIGHT OUTER JOIN
    dc.Hosts ON dc.Hosts.Host_Name = dc.Checkin.Host_name
        AND TIMEDIFF(NOW(), dc.Checkin.Finished_at) <= '00:40:00'
ORDER BY dc.Hosts.Host_name , dc.Checkin.Station , dc.Checkin.Finished_at;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_delfile_srt21` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_delfile_srt21`(
file_name VARCHAR(256)
)
BEGIN
DELETE FROM dc.SRT21 
WHERE
    Mp4_File_Name = file_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_del_err` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_del_err`(
older_than_days INT
)
BEGIN
SET SQL_SAFE_UPDATES = 0;
DELETE FROM dc.Errors 
WHERE
    DATEDIFF(NOW(), Date_Time) >= older_than_days;
SET SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_del_radio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_del_radio`(
older_than_days INT
)
BEGIN
SET SQL_SAFE_UPDATES = 0;
DELETE FROM dc.RadioClips 
WHERE
    DATEDIFF(NOW(), TStamp) >= older_than_days;
SET SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_del_srt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_del_srt`(
older_than_days INT
)
BEGIN
SET SQL_SAFE_UPDATES = 0;
DELETE FROM dc.SRT 
WHERE
    DATEDIFF(NOW(), Created_at) >= older_than_days;
SET SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_del_srt21` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_del_srt21`(
older_than_days INT
)
BEGIN
SET SQL_SAFE_UPDATES = 0;
DELETE FROM dc.SRT21 
WHERE
    DATEDIFF(NOW(), Created_at) >= older_than_days;
SET SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_del_srt21b` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_del_srt21b`(
older_than_days INT
)
BEGIN
SET SQL_SAFE_UPDATES = 0;
DELETE FROM dc.SRT21b 
WHERE
    DATEDIFF(NOW(), Created_at) >= older_than_days;
SET SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Bool_Search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Bool_Search`(
Search_Query_param    TEXT,
Channel_param         TEXT,
All_Channels_param    BOOL,
Limit_param           INT,
Start_Date_param	  DATE,
End_Date_param		  DATE,
Start_Time_param	  TIME,
End_Time_param		  TIME
)
BEGIN
	DECLARE Bool_String TEXT DEFAULT "";
    DECLARE Prev_CC_Num INT(10) DEFAULT 0;
    DECLARE Double_Limit_var INT(10);
    DECLARE Channel_Id_var INT(10);
    DECLARE Channel_Name_var VARCHAR(20);
    DECLARE Channel_Host_Name_var VARCHAR(20);
    DECLARE Mp4_File_Name_var VARCHAR(100);
    DECLARE CC_Num_var INT(10);
    DECLARE TimeCode_var VARCHAR(32);
    DECLARE Created_at_var DATETIME;
	DECLARE Result_Line_var VARCHAR(2004);
	DECLARE row_not_found TINYINT DEFAULT FALSE;
	DECLARE Search_Results_cursor CURSOR FOR SELECT * FROM Search_Results;
    DECLARE CONTINUE HANDLER FOR NOT FOUND
		SET row_not_found = TRUE;
    SET Double_Limit_var := 2 * Limit_param;
	-- INSERT INTO dc.Debug (Param) VALUES (CONCAT_WS(' ', Start_Date_param, End_Date_param, Start_Time_param, End_Time_param));
	SELECT REPLACE(Search_Query_param, '/&&/', '+') INTO Bool_String;
    -- INSERT INTO dc.Debug (Param) VALUES (Bool_String);

    DROP TEMPORARY TABLE IF EXISTS Search_Results;
    CREATE TEMPORARY TABLE Search_Results
    SELECT
		Channels.Channel_Id, 
        Channels.Channel_Name,
        Channels.Host_Name,
        Mp4_File_Name,
        CC_Num,
        TimeCode,
        Created_at,
        Six_frames AS Result_Line

        FROM SRT JOIN Channels ON SRT.Channel_Id = Channels.Channel_Id
			WHERE 
				((All_Channels_param OR Channel_Name = Channel_param) AND
                (Channels.Host_Name != 'CBLCAP1') AND
                (Channels.Host_Name != 'codentv1a') AND                
                (Start_Date_param <= DATE(SRT.Finished_at)) AND
                (End_Date_param >= DATE(SRT.Created_at)) AND
                (Start_Time_param <= TIME(SRT.Finished_at)) AND
                (End_Time_param >= TIME(SRT.Created_at)) AND                
				MATCH (Six_frames) 
                AGAINST (Bool_String IN BOOLEAN MODE))
		   ORDER BY Channels.Channel_Id, Mp4_File_Name, CC_Num
		   LIMIT Double_Limit_var;
	
    SET SQL_SAFE_UPDATES = 0;
    
    OPEN Search_Results_cursor;
    
    WHILE row_not_found = FALSE DO
		FETCH Search_Results_cursor INTO Channel_Id_var, Channel_Name_var, Channel_Host_Name_var, Mp4_File_Name_var, CC_Num_var, TimeCode_var, Created_at_var, Result_Line_var;
     -- INSERT INTO dc.Debug (Param) VALUES (concat_ws(' - ', CC_Num_var, Prev_CC_Num));
		IF (CC_Num_var - Prev_CC_Num) = 3 THEN
			UPDATE Search_Results
				SET CC_Num = 0
                WHERE Channel_Id_var = Channel_Id AND Channel_Name_var = Channel_Name AND Mp4_File_Name_var = Mp4_File_Name AND CC_Num_var = CC_Num;
            SET Prev_CC_Num := 0;
		ELSE
			SET Prev_CC_Num := CC_Num_var;
		END IF;
	END WHILE;

	CLOSE Search_Results_cursor;
    
    SET SQL_SAFE_UPDATES = 1;
	
	SELECT 
    *
FROM
    Search_Results
WHERE
    CC_Num != 0
LIMIT LIMIT_PARAM;
    
	DROP TEMPORARY TABLE Search_Results;    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Checkin_Historic` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`localhost`@`root` PROCEDURE `Checkin_Historic`()
BEGIN
SELECT 
    Host_name, Station,Finished_at
FROM
    Checkin ORDER BY Host_name , Station ,Finished_at;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cleanup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `cleanup`()
BEGIN
  DELETE FROM `dc`.`users` WHERE email = 'aelkmiti@asu.edu';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CleanupOldSRT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `CleanupOldSRT`(
    IN retention_days INT
)
BEGIN
    DECLARE deleted_count INT DEFAULT 0;
    
    -- Show what will be deleted
    SELECT 
        COUNT(*) as records_to_delete,
        MIN(Created_at) as oldest_record,
        MAX(Created_at) as newest_in_range
    FROM SRT
    WHERE Created_at < DATE_SUB(NOW(), INTERVAL retention_days DAY);
    
    -- Delete and capture count
    DELETE FROM SRT
    WHERE Created_at < DATE_SUB(NOW(), INTERVAL retention_days DAY);
    
    SET deleted_count = ROW_COUNT();
    
    -- Report results
    SELECT 
        deleted_count as records_deleted,
        NOW() as cleanup_timestamp,
        retention_days as retention_policy_days;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteTranslation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteTranslation`(
    IN p_translation_id INT
)
BEGIN
    DELETE
    FROM archive_translations
    WHERE id = p_translation_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delete_Admin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete_Admin`(
	emailParam VARCHAR(255)
)
BEGIN
	DELETE FROM Admins
	WHERE email = emailParam
    AND role != 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delete_AdminRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete_AdminRole`(
	idParam INT
)
BEGIN
	DELETE FROM AdminRoles
	WHERE id = idParam
    AND id > 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delete_AlertID_From_Alert_Articles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete_AlertID_From_Alert_Articles`(
	alertID		INT
)
BEGIN

	DELETE FROM EmailAlertArticles WHERE AlertID = alertID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delete_TVConfig` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `Delete_TVConfig`(
    IN Host_Name VARCHAR(255),
    IN Date_t DATETIME
)
BEGIN
    DELETE FROM dc.TVConfig
    WHERE HostName = Host_Name
      AND Date_Time = Date_t;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Delete_TVConfigNew` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `Delete_TVConfigNew`(
    IN Host_Name VARCHAR(255),
    IN Date_t DATETIME
)
BEGIN
    DELETE FROM dc.TVConfigNew
    WHERE HostName = Host_Name
      AND Date_Time = Date_t;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchAdapterError` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchAdapterError`()
BEGIN
SELECT Adaptor_No, count(Media_Error) as Frequency FROM errortable_vw group by Adaptor_No ORDER BY Adaptor_No;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fetchAllErrorData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fetchAllErrorData`()
BEGIN
	SELECT Adaptor_No, count(Media_Error) as Frequency
    FROM errortable_vw
    group by Adaptor_No
    ORDER BY Adaptor_No;

	SELECT Host_Name ,Station, count(Station) as Frequency
    FROM errortable_vw
    group by Host_Name,Station
    ORDER BY Host_Name;

    
    SELECT YEAR(Date_Time) as year,DATE_FORMAT(Date_Time, '%b') as month, count(Media_Error) as Frequency
    FROM errortable_vw
    group by year,month
    ORDER BY year,month;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchErrorFrequency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchErrorFrequency`()
BEGIN
SELECT Host_Name ,Station, count(Station) as Frequency FROM errortable_vw group by Host_Name,Station ORDER BY Host_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchErrorYearFreq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchErrorYearFreq`()
BEGIN
SELECT YEAR(Date_Time) as year,DATE_FORMAT(Date_Time, '%b') as month, count(Media_Error) as Frequency FROM errortable_vw group by year,month ORDER BY year,month;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchErrorYearrFreq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchErrorYearrFreq`()
BEGIN
SELECT YEAR(Date_Time) as year,DATE_FORMAT(Date_Time, '%b') as month, count(Media_Error) as Frequency FROM errortable_vw group by year,month ORDER BY year,month;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchErrorYrMnWeekFreq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchErrorYrMnWeekFreq`()
BEGIN
SELECT YEAR(Date_Time) as year,DATE_FORMAT(Date_Time, '%b') as month, DATE_FORMAT(Date_Time, '%a') as days,count(Media_Error) as Frequency FROM errortable_vw group by year,month, days ORDER BY year, month, days asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchffmpegAdapterYearrFreq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchffmpegAdapterYearrFreq`()
BEGIN
SELECT YEAR(Date_Time) as year,Adapter_Type, count(`Error_Source`) as Frequency FROM ffmpegtable_vw group by year,Adapter_Type ORDER BY year;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchffmpegErrorYearFreq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchffmpegErrorYearFreq`()
BEGIN
SELECT YEAR(Date_Time) as year,DATE_FORMAT(Date_Time, '%b') as month, count(`Error_Source`) as Frequency FROM ffmpegtable_vw group by year,month ORDER BY year,month;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchffmpegFrequency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchffmpegFrequency`()
BEGIN
SELECT Host_Name,Station, count(Error_Source) as Frequency FROM `ffmpegtable_vw` group by Host_Name,Station ORDER BY Host_Name desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchffmpegStationFrequency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchffmpegStationFrequency`()
BEGIN
SELECT Station, count(Error_Source) as Frequency FROM `ffmpegtable_vw` group by Station ORDER BY Frequency desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchLockedTimeoutFreq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchLockedTimeoutFreq`()
BEGIN
SELECT Host_Name , Station, count(Station) as Frequency FROM `locked_timeout_table_vw` group by Host_Name,Station ORDER BY Frequency desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchPreviousWarning` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchPreviousWarning`()
BEGIN
SELECT Station, count(Error_Str) as Frequency FROM warningtable_vw where Date_Time >= DATE(NOW()) - INTERVAL 14 DAY group by Station ORDER BY Frequency desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchPreviousWeekserror` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchPreviousWeekserror`()
BEGIN
SELECT Station, count(Media_Error) as Frequency FROM errortable_vw where Date_Time >= DATE(NOW()) - INTERVAL 14 DAY group by Station ORDER BY Station;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchSetLineFreq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchSetLineFreq`()
BEGIN
SELECT Host_Name , Station, count(Station) as Frequency FROM `set_table_vw` group by Host_Name,Station ORDER BY Frequency desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchStationFrequency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchStationFrequency`()
BEGIN
SELECT Station, count(Media_Error) as Frequency FROM errortable_vw group by Station ORDER BY Station;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchStationWarningFrequency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchStationWarningFrequency`()
BEGIN
SELECT Station, count(Error_Str) as Frequency FROM `warningtable_vw` group by Station ORDER BY Frequency desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FetchWarningFrequency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FetchWarningFrequency`()
BEGIN
SELECT Host_Name , Station, count(Station) as Frequency FROM `warningtable_vw` group by Host_Name,Station ORDER BY Frequency desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_Checkin_History` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_Checkin_History`()
BEGIN
select Host_Name, Station,Elapse_Time ,(case when Elapse_Time < 40.00 then 'RUNNING' else 'OFFLINE'
end)Status
from (select Host_Name, Station, Finished_at, Lag_Date,(Finished_at-Lag_Date)/60 as Elapse_Time from (select Host_Name, Station, Finished_at, lag(Finished_at,1) over (order by Station, Host_Name) as Lag_Date From dc.Checkin) as tbl)tbl2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_Previous_RadioError` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_Previous_RadioError`()
BEGIN
SELECT Error_Str, count(Error_Str) as Frequency 
FROM Radio_Errors 
where Date_Time >= DATE(NOW()) - INTERVAL 14 DAY 
Group by Error_Str 
ORDER BY Frequency desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_Previous_RadioErrorStation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_Previous_RadioErrorStation`()
BEGIN
SELECT Station, count(Error_Str) as Frequency 
FROM Radio_Errors 
Where Date_Time >= DATE(NOW()) - INTERVAL 14 DAY 
Group by Station 
ORDER BY Frequency desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_RadioError_DayWeekFreq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_RadioError_DayWeekFreq`()
BEGIN
SELECT YEAR(Date_Time) as year,DATE_FORMAT(Date_Time, '%b') as month, DATE_FORMAT(Date_Time, '%a') as days,count(Error_Str) as Frequency 
FROM Radio_Errors 
Group by year,month, days 
ORDER BY year, month, days ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_RadioError_Freq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_RadioError_Freq`()
BEGIN
SELECT Station, Error_Str, Count(Error_Str) as Frequency 
FROM Radio_Errors 
Group by Station, Error_Str 
ORDER BY Station, Error_Str, Frequency ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_RadioError_YearFreq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_RadioError_YearFreq`()
BEGIN
SELECT YEAR(Date_Time) as year,DATE_FORMAT(Date_Time, '%b') as month, DAY(Date_Time) as day, Station, Error_Str, count(Error_Str) as Frequency FROM Radio_Errors 
Group by year,month, day, Station, Error_Str 
ORDER BY year,month, day;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_SentimentAnlyPolarity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_SentimentAnlyPolarity`()
BEGIN
select Station,YEAR(Finished_at) as year, DATE_FORMAT(Finished_at, '%b') as month, DAY(Finished_at) as day, compound, comp_score 
from SentimentAnlyResult 
Order by Station;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_SentimentAnlySubjectivity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_SentimentAnlySubjectivity`()
BEGIN
select Station,YEAR(Finished_at) as year, DATE_FORMAT(Finished_at, '%b') as month, DAY(Finished_at) as day, SubjScores, Subjectivity 
from SentimentAnlyResult 
Order by Station;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_TVMonitorHistoricalHours` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_TVMonitorHistoricalHours`()
BEGIN
select Host_Name, Station,YEAR(Finished_at) as year, DATE_FORMAT(Finished_at, '%b') as month,DAY(Finished_at) as day,sum(RUNNING)/60 as RUNNING, sum(NotRunning)/60 as 'OFFLINE' from (
select Host_Name, Station,DATE(Finished_at) as Finished_at,Elapse_Time ,(case when Elapse_Time <= 40.00 then Elapse_Time else 0 end)RUNNING, (case when Elapse_Time > 40.00 then Elapse_Time else 0 end )NotRunning from (
select Host_Name, Station, Finished_at, Lag_Date,timestampdiff(MINUTE, Lag_Date,Finished_at)as Elapse_Time from (select Host_Name, Station, Finished_at, lag(Finished_at,1) over (order by Station, Host_Name,Finished_at ASC) as Lag_Date From dc.Checkin order by Host_Name, Station) as tbl)tbl2)tbl3 group by Host_Name, Station,year,month,day;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_TVMonitorStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_TVMonitorStatus`()
BEGIN
Select  a.Host_name, a.Station , a.Elapsed_Time, a.Finished_at, 

(Case when a.Elapsed_Time is not null then 1 Else 0 End)Status 

from 

( 

SELECT  

    dc.Hosts.Host_name, 

    dc.Checkin.Station, 

    TIMEDIFF(NOW(), dc.Checkin.Finished_at) AS Elapsed_Time, 

    dc.Checkin.Finished_at 

FROM 

    dc.Checkin 

        RIGHT OUTER JOIN 

    dc.Hosts ON dc.Hosts.Host_Name = dc.Checkin.Host_name 

        AND TIMEDIFF(NOW(), dc.Checkin.Finished_at) <= '00:40:00' 

ORDER BY dc.Hosts.Host_name , dc.Checkin.Station , dc.Checkin.Finished_at)a;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_TVMonitorStatusHistorical` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_TVMonitorStatusHistorical`()
BEGIN
select Host_Name, Station,YEAR(Finished_at) as year, DATE_FORMAT(Finished_at, '%b') as month,DAY(Finished_at) as day, sum(notRunning) as 'OFFLINE', sum(RUNNING) as RUNNING from (
select Host_Name, Station,Finished_at, (case when Status2 = 0 then 1 else 0 end) notRunning, (case when Status2 = 40 then 1 else 0 end)RUNNING from (
select Host_Name, Station,DATE(Finished_at) as Finished_at,Elapse_Time ,(case when Elapse_Time <= 40.00 then 'RUNNING' else 'NotRunning' end)Status, (case when Elapse_Time <= 40.00 then 40 else 0 end )Status2 from (
select Host_Name, Station, Finished_at, Lag_Date,timestampdiff(MINUTE, Lag_Date,Finished_at)as Elapse_Time from (select Host_Name, Station, Finished_at, lag(Finished_at,1) over (order by Station, Host_Name,Finished_at ASC) as Lag_Date From dc.Checkin order by Host_Name, Station) as tbl)tbl2)tbl3)tbl4 group by Host_Name, Station,year, month, day;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Fetch_TVMonitorStatusPrevious` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Fetch_TVMonitorStatusPrevious`()
BEGIN
select Host_Name, Station,YEAR(Finished_at) as year, DATE_FORMAT(Finished_at, '%b') as month,DAY(Finished_at) as day, sum(NotRunning)as 'OFFLINE', sum(RUNNING) as RUNNING from (
select Host_Name, Station,Finished_at, (case when Status2 = 0 then 1 else 0 end)NotRunning, (case when Status2 = 40 then 1 else 0 end)RUNNING from (
select Host_Name, Station,DATE(Finished_at) as Finished_at,Elapse_Time ,(case when Elapse_Time <= 40.00 then 'RUNNING' else 'NotRunning' end)Status, (case when Elapse_Time <= 40.00 then 40 else 0 end )Status2 from (
select Host_Name, Station, Finished_at, Lag_Date,timestampdiff(MINUTE, Lag_Date,Finished_at)as Elapse_Time from (select Host_Name, Station, Finished_at, lag(Finished_at,1) over (order by Station, Host_Name,Finished_at ASC) as Lag_Date From dc.Checkin order by Host_Name, Station) as tbl)tbl2)tbl3)tbl4 where Finished_at >= DATE(NOW()) - INTERVAL 30 DAY group by Host_Name, Station,year, month, day;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAdminRoleByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `GetAdminRoleByID`(IN roleId INT)
BEGIN
    SELECT id, name, permissions
    FROM adminroles
    WHERE id = roleId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetChannelByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `GetChannelByName`(IN channelName VARCHAR(100))
BEGIN
    SELECT Channel_Id, Market_Id, Channel_Name, Host_Name, IP, Affiliate, Call_Sign
    FROM channels
    WHERE Channel_Name = channelName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetEmailRequestByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `GetEmailRequestByID`(IN requestId INT)
BEGIN
    SELECT id, organization, name, state
    FROM Email_Request
    WHERE id = requestId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTranslations` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTranslations`(
    IN p_mp4_file_name VARCHAR(100)
)
BEGIN
    SELECT *
    FROM archive_translations
    WHERE mp4_file_name = p_mp4_file_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Admin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Admin`(
	emailParam VARCHAR(255)
)
BEGIN 
	SELECT *
        FROM Admins
        WHERE email = emailParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_AdminRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_AdminRole`(
	idParam INT
)
BEGIN 
	SELECT *
        FROM AdminRoles
        WHERE id = idParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_AdminRoles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_AdminRoles`()
BEGIN 
    SELECT *
        FROM AdminRoles
        ORDER BY name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Admins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `Get_Admins`()
BEGIN
    SELECT 
        email,
        firstName,
        lastName,
        role,
        status,
        last_login
    FROM Admins;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Admin_Role_Data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Admin_Role_Data`(
	emailParam VARCHAR(255)
)
BEGIN 
	SELECT AdminRoles.*
        FROM Admins JOIN AdminRoles ON Admins.role = AdminRoles.id
        WHERE email = emailParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Alert_Articles_By_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Alert_Articles_By_ID`(
	theAlertID VARCHAR(45)
)
BEGIN

	SELECT MediaTable, ArticleGUID FROM EmailAlertArticles WHERE (AlertID = theAlertID);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Alert_Email_By_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `Get_Alert_Email_By_ID`(theAlertID INT)
BEGIN
SELECT * FROM updated_Email_Alert WHERE (alertID = theAlertID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Alert_List` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Alert_List`(userEmail TEXT)
BEGIN
	SELECT *
    FROM emailAlerts
    WHERE email = userEmail;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Alert_List_Cron_Job` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Alert_List_Cron_Job`()
BEGIN
	SELECT *
    FROM emailAlerts;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Channels` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Channels`()
BEGIN 
    SELECT DISTINCT Channel_Name
        FROM Channels
        WHERE Channel_Name IS NOT NULL 
        ORDER BY Channel_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_channels_with_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_channels_with_data`(
-- Ask Bob / Henry if they want all channels with active data or specify criteria instead
)
BEGIN
  SELECT DISTINCT Channels.Channel_Name, Channels.`Virtual` FROM Channels JOIN SRT ON Channels.Channel_Id = SRT.Channel_Id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_channel_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_channel_id`(IN Market_Id_param INT,
	IN Channel_Name_param VARCHAR(20), IN Host_Name_param VARCHAR(1024), OUT Channel_Id_param INT)
BEGIN
    DECLARE channel_ID_var		INT;
    DECLARE row_not_found		TINYINT DEFAULT FALSE;
    
    DECLARE channel_cursor CURSOR FOR    
		SELECT Channel_Id FROM dc.Channels WHERE Market_Id = Market_Id_param AND Channel_Name = Channel_Name_param AND Host_Name = Host_Name_param;

	DECLARE channel_cursor1 CURSOR FOR    
		SELECT Channel_Id FROM dc.Channels WHERE Market_Id = Market_Id_param AND Channel_Name = Channel_Name_param AND Host_Name = Host_Name_param;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND
		SET row_not_found = TRUE;
        
	START TRANSACTION;        
		OPEN channel_cursor;
    
		FETCH channel_cursor INTO channel_ID_var;
    
		IF row_not_found = TRUE THEN
			INSERT INTO dc.Channels (Market_Id, Channel_Name, Host_Name)
			VALUES (Market_Id_param, Channel_Name_param, Host_Name_param);
			SET row_not_found = TRUE;
			OPEN channel_cursor1;
			FETCH channel_cursor1 INTO channel_ID_var;
			IF row_not_found = TRUE THEN
				SET Channel_Id_param = 0;
			ELSE
				SET Channel_Id_param = channel_ID_var;
			END IF;
		ELSE
			SET Channel_Id_param = channel_ID_var;
		END IF;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Cities` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Cities`()
BEGIN 
    SELECT DISTINCT City
        FROM Locations
        ORDER BY City;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Countries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Countries`()
BEGIN 
    SELECT DISTINCT Country
        FROM Locations
        ORDER BY Country;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_ID_and_GUID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_ID_and_GUID`(
	tableName		VARCHAR(45)
)
BEGIN

	SELECT ID, GUID FROM tableName;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_ID_and_GUID_Magazine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_ID_and_GUID_Magazine`()
BEGIN
	SELECT ID, GUID FROM MagazineResults;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_ID_and_GUID_Newspaper` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_ID_and_GUID_Newspaper`()
BEGIN

	SELECT ID, GUID FROM NewspaperResults;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_InfoContactRequests` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_InfoContactRequests`()
BEGIN
    SELECT *
 	    FROM Get_InfoContactRequests
        ORDER BY lastName, firstName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Magazines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Magazines`()
BEGIN 
    SELECT DISTINCT MagazineName
        FROM Magazines
        WHERE MagazineName IS NOT NULL 
        ORDER BY MagazineName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Magazine_Feeds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Magazine_Feeds`()
BEGIN

	SELECT URL, MagazineName, MagazineLink
    FROM MagazineFeeds;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Newspapers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Newspapers`()
BEGIN 
    SELECT DISTINCT NewspaperName
        FROM Newspapers
        WHERE NewspaperName IS NOT NULL 
        ORDER BY NewspaperName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Newspaper_Feeds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Newspaper_Feeds`()
BEGIN

	SELECT URL, NewspaperName, NewspaperLink
    FROM NewspaperFeeds;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Radios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Radios`()
BEGIN 
    SELECT DISTINCT StationName
        FROM RadioStation
        WHERE StationName IS NOT NULL 
        ORDER BY StationName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Radio_config` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Radio_config`()
BEGIN
    SELECT *
		FROM RadioConfig
        ORDER BY HostName, Date_Time;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Radio_configNew` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Radio_configNew`()
BEGIN
    SELECT *
		FROM RadioConfigNew
        ORDER BY HostName, Date_Time;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Roles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `Get_Roles`()
BEGIN
  SELECT id, name
  FROM AdminRoles;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_States` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_States`()
BEGIN 
    SELECT DISTINCT StateProvince
        FROM Locations
        ORDER BY StateProvince;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_TV_config` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_TV_config`()
BEGIN
    SELECT *
 	    FROM TVConfig
        ORDER BY HostName, Date_Time;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_TV_configNew` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_TV_configNew`()
BEGIN
    SELECT *
		FROM TVConfigNew
        ORDER BY HostName, Date_Time;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertComment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`%` PROCEDURE `InsertComment`(
    IN p_email VARCHAR(100),
    IN p_commentText MEDIUMTEXT,
    IN p_appSource VARCHAR(20)
)
BEGIN
    -- Insert the comment
    INSERT INTO Comments (
        email,
        commentText,
        appSource
    ) VALUES (
        p_email,
        p_commentText,
        p_appSource
    );
    
    -- Return the created comment
    SELECT email, createdAt 
    FROM Comments 
    WHERE email = p_email 
    ORDER BY createdAt DESC 
    LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertTranslation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertTranslation`(
    IN p_channel_id      INT,
    IN p_mp4_file_name   VARCHAR(100),
    IN p_original_id     INT,
    IN p_timecode        VARCHAR(32),
    IN p_translated_text TEXT,
    IN p_language        VARCHAR(10)
)
BEGIN
    INSERT INTO archive_translations (
        channel_id,
        mp4_file_name,
        original_id,
        timecode,
        translated_text,
        language
    ) VALUES (
        p_channel_id,
        p_mp4_file_name,
        p_original_id,
        p_timecode,
        p_translated_text,
        p_language
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Admin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `Insert_Admin`(
    IN p_email VARCHAR(255),
    IN p_password VARCHAR(255),
    IN p_firstName VARCHAR(255),
    IN p_lastName VARCHAR(255),
    IN p_role INT,
    IN p_status ENUM('active','inactive')
)
BEGIN
  INSERT INTO Admins (email, password, firstName, lastName, role, status)
  VALUES (p_email, p_password, p_firstName, p_lastName, p_role, p_status);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_AdminRole` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_AdminRole`(
nameParam VARCHAR(255),
permissionsParam VARCHAR(255)
)
BEGIN
	INSERT INTO dc.AdminRoles (name, permissions) 
	VALUES (nameParam, permissionsParam);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Alert_Article` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Alert_Article`(
	AlertID				int,
    MediaTable		varchar(45),
    ArticleGUID		varchar(1000)
)
BEGIN

	INSERT INTO EmailAlertArticles (AlertID, MediaTable,ArticleGUID)
    VALUES (AlertID, MediaTable,ArticleGUID);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_channel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_channel`(Channel_Name_param	VARCHAR(20))
BEGIN

INSERT INTO dc.Channels (Channel_Name)

VALUES

(Channel_Name_param);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Checkin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Checkin`(
Checkin_finished_At_param	DATETIME,
Checkin_Host_Name_param		VARCHAR(30),
Checkin_Station_param		VARCHAR(30)
)
BEGIN

INSERT INTO dc.Checkin
	(Finished_at, Host_name, Station)
VALUES
	(Checkin_finished_At_param, Checkin_Host_Name_param, Checkin_Station_param);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Email_Alert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Email_Alert`(
	AlertFrequency VARCHAR(45),
    Keywords VARCHAR(100),
    MediaType VARCHAR(45),
    EmailParam VARCHAR(45)
)
BEGIN
	INSERT INTO dc.EmailAlertList (AlertFrequency, Keywords, MediaType, Email) VALUES (AlertFrequency, Keywords, MediaType, EmailParam);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Err` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Err`(
Err_Date_Time_param		DATETIME,
Err_Host_param			VARCHAR(30),
Err_Station_param		VARCHAR(30),
Err_Error_param			VARCHAR(200),
Err_LineNum_param		INT,
Err_Severity_param		VARCHAR(10)
)
BEGIN

INSERT INTO dc.Errors
	(Date_Time, Host_Name, Station, Error_Str, LineNum, Severity)
VALUES
	(Err_Date_Time_param, Err_Host_param, Err_Station_param, Err_Error_param, Err_LineNum_param, Err_Severity_param);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_InfoContactRequests` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_InfoContactRequests`(
  param_lastName VARCHAR(45),
  param_firstName VARCHAR(45),
  param_email VARCHAR(35),
  param_message VARCHAR(500))
BEGIN
REPLACE INTO `dc`.`InfoContactRequests`
(lastName, firstName, email, message)
VALUES
(param_lastName, param_firstName, param_email, param_message);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_InfoServiceRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_InfoServiceRequest`(
param_lastName VARCHAR(45),
param_firstName VARCHAR(45),
param_email VARCHAR(35),
param_phone VARCHAR(20),
param_cell VARCHAR(20),
param_org VARCHAR(45),
param_address1 VARCHAR(50),
param_address2 VARCHAR(50),
param_city VARCHAR(45),
param_state CHAR(2),
param_country VARCHAR(45),
param_zipCode VARCHAR(20),
param_orderType VARCHAR(200),
param_markets VARCHAR(200),
param_affiliates VARCHAR(200),
param_keywords VARCHAR(200),
param_stations VARCHAR(200),
param_startDateTime DATETIME,
param_finishDateTime DATETIME,
param_additionalDetails VARCHAR(200)
)
BEGIN
REPLACE INTO `dc`.`InfoServiceRequest`
(lastName, firstName, email, phone, cell, org, address1, address2, city,
state, country, zipCode, orderType, markets, affiliates, keywords, stations,
startDateTime, finishDateTime, additionalDetails)
VALUES
(param_lastName, param_firstName, param_email, param_phone, param_cell, param_org,
param_address1, param_address2, param_city, param_state, param_country,
param_zipCode, param_orderType, param_markets, param_affiliates, param_keywords,
param_stations, param_startDateTime, param_finishDateTime, param_additionalDetails);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Info_Err` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Info_Err`(
Err_Date_Time_param	DATETIME,
Err_Host_param		VARCHAR(30),
Err_Module_param	VARCHAR(45),
Err_Error_param		VARCHAR(200),
Err_LineNum_param	INT,
Err_Severity_param	VARCHAR(10)
)
BEGIN

INSERT INTO dc.InfoErrors
	(Date_Time, Host_Name, Module, Error_Str, LineNum, Severity)
VALUES
	(Err_Date_Time_param, Err_Host_param, Err_Module_param, Err_Error_param, Err_LineNum_param, Err_Severity_param);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Magazine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Magazine`(
New_Magazine_Name    				TEXT,
URL_Param						    TEXT,
RSS_Param 	  						TEXT,
Country_Param						TEXT,
State_Province_Param				TEXT,						
City_Param							TEXT
)
BEGIN
	INSERT INTO dc.Magazines (MagazineName, Country, StateProvince, City, URL) 
	VALUES (New_Magazine_Name, Country_Param, State_Province_Param, City_Param, URL_Param)
		ON DUPLICATE KEY UPDATE URL = URL_Param;
	
    INSERT INTO dc.Locations (Country, StateProvince, City)
    VALUES (Country_Param, State_Province_Param, City_Param)
		ON DUPLICATE KEY UPDATE Country = Country_Param;
        
	INSERT INTO dc.MagazineFeeds (URL, MagazineName, MagazineLink)
    VALUES (RSS_Param, New_Magazine_Name, URL_Param)
		ON DUPLICATE KEY UPDATE MagazineLink = URL_Param;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Newspaper` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Newspaper`(
New_Newspaper_Name    				TEXT,
URL_Param						    TEXT,
RSS_Param 	  						TEXT,
Country_Param						TEXT,
State_Province_Param				TEXT,						
City_Param							TEXT
)
BEGIN
	INSERT INTO dc.Newspapers (NewspaperName, Country, StateProvince, City, URL) 
	VALUES (New_Newspaper_Name, Country_Param, State_Province_Param, City_Param, URL_Param)
		ON DUPLICATE KEY UPDATE URL = URL_Param;
	
    INSERT INTO dc.Locations (Country, StateProvince, City)
    VALUES (Country_Param, State_Province_Param, City_Param)
		ON DUPLICATE KEY UPDATE Country = Country_Param;
        
	INSERT INTO dc.NewspaperFeeds (URL, NewspaperName, NewspaperLink)
    VALUES (RSS_Param, New_Newspaper_Name, URL_Param)
		ON DUPLICATE KEY UPDATE NewspaperLink = URL_Param;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Radio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`172.19.13.%` PROCEDURE `Insert_Radio`(
I_ID			INT,
I_FName			VARCHAR(100),
I_TStamp		VARCHAR(100),
I_SName			VARCHAR(100),
I_Texts			TEXT,
I_Categories	TEXT,
I_Download_Link	TEXT
)
BEGIN
INSERT INTO dc.RadioClips
	(ID,FName,TStamp,SName,TEXTS,Categories,DownloadLink)
VALUES
	(I_ID,I_FName,I_TStamp,I_SName,I_Texts,I_Categories, I_Download_Link);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_RadioB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`172.19.13.%` PROCEDURE `Insert_RadioB`(
I_ID			INT,
I_FName			VARCHAR(100),
I_TStamp		VARCHAR(100),
I_SName			VARCHAR(100),
I_Texts			TEXT,
I_Categories	TEXT,
I_Download_Link	TEXT
)
BEGIN
INSERT INTO dc.RadioClipsB
	(ID,FName,TStamp,SName,TEXTS,Categories,DownloadLink)
VALUES
	(I_ID,I_FName,I_TStamp,I_SName,I_Texts,I_Categories, I_Download_Link);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_RadioConfig` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_RadioConfig`(
  db_Host VARCHAR(30),
  Date_t DATETIME,
  db_User VARCHAR(1024) ,
  db_Pass VARCHAR(1024),
  db_Name VARCHAR(1024),
  db_Port INT,
  db_UnixSock VARCHAR(1024) ,
  db_Flag INT,
  rec_ShellScriptPath VARCHAR(1024),
  rec_StorageLoc VARCHAR(1024),
  rec_Lap INT,
  arc_Path VARCHAR(1024),
  station_1 VARCHAR(30),
  station_2 VARCHAR(30),
  station_3 VARCHAR(30),
  station_4 VARCHAR(30),
  station_5 VARCHAR(30),
  station_6 VARCHAR(30),
  url_1 VARCHAR(1024),
  url_2 VARCHAR(1024),
  url_3 VARCHAR(1024),
  url_4 VARCHAR(1024),
  url_5 VARCHAR(1024),
  url_6 VARCHAR(1024))
BEGIN
REPLACE INTO `dc`.`RadioConfig`
(dbHost, Date_Time, dbUser, dbPass, dbName, dbPort, dbUnixSock, dbFlag, recShellScriptPath,
recStorageLoc, recLap, arcPath, Station1, Station2, Station3, Station4, Station5, Station6,
URL1, URL2, URL3, URL4, URL5, URL6)
VALUES
(db_Host, Date_t, db_User, db_Pass, db_Name, db_Port, db_UnixSock , db_Flag,rec_ShellScriptPath,
 rec_StorageLoc, rec_Lap, arc_Path, station_1, station_2, station_3, station_4, station_5,
 station_6, url_1, url_2, url_3, url_4, url_5, url_6);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_RadioConfigNew` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_RadioConfigNew`(
  db_Host VARCHAR(30),
  Date_t DATETIME,
  db_User VARCHAR(1024) ,
  db_Pass VARCHAR(1024),
  db_Name VARCHAR(1024),
  db_Port INT,
  db_UnixSock VARCHAR(1024),
  db_Flag INT,
  rec_ShellScriptPath VARCHAR(1024),
  rec_StorageLoc VARCHAR(1024),
  rec_Lap INT,
  arc_Path VARCHAR(1024),
  station_1 VARCHAR(30),
  station_2 VARCHAR(30),
  station_3 VARCHAR(30),
  station_4 VARCHAR(30),
  station_5 VARCHAR(30),
  station_6 VARCHAR(30),
  url_1 VARCHAR(1024),
  url_2 VARCHAR(1024),
  url_3 VARCHAR(1024),
  url_4 VARCHAR(1024),
  url_5 VARCHAR(1024),
  url_6 VARCHAR(1024))
BEGIN

REPLACE INTO `dc`.`RadioConfig`
(dbHost, Date_Time, dbUser, dbPass, dbName, dbPort, dbUnixSock, dbFlag, recShellScriptPath,
 recStorageLoc, recLap, arcPath, Station1, Station2, Station3, Station4, Station5, Station6, URL1,
 URL2, URL3, URL4, URL5, URL6) 
VALUES
(db_Host, Date_t, db_User, db_Pass, db_Name, db_Port, db_UnixSock , db_Flag, rec_ShellScriptPath,
 rec_StorageLoc, rec_Lap, arc_Path, station_1, station_2, station_3, station_4, station_5, station_6,
 url_1, url_2, url_3, url_4, url_5, url_6);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_RadioStation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_RadioStation`(
New_RadioStation_Name    				TEXT,
URL_Param						    TEXT,
Country_Param						TEXT,
State_Province_Param				TEXT,						
City_Param							TEXT
)
BEGIN
	INSERT INTO dc.RadioStation (StationName, Country, StateProvince, City, Link) 
	VALUES (New_RadioStation_Name, Country_Param, State_Province_Param, City_Param, URL_Param)
		ON DUPLICATE KEY UPDATE Link = URL_Param;
	
    INSERT INTO dc.Locations (Country, StateProvince, City)
    VALUES (Country_Param, State_Province_Param, City_Param)
		ON DUPLICATE KEY UPDATE Country = Country_Param;
       
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Radio_Err` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Radio_Err`(
Err_Date_Time_param	DATETIME,
Err_Host_param		VARCHAR(30),
Err_Station_param	VARCHAR(30),
Err_Error_param		VARCHAR(200)
)
BEGIN
INSERT INTO dc.Radio_Errors
	(Date_Time, Host_Name, Station, Error_Str)
VALUES
	(Err_Date_Time_param, Err_Host_param, Err_Station_param, Err_Error_param);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Radio_Manual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`172.19.13.%` PROCEDURE `Insert_Radio_Manual`(
I_ID			INT,
I_FName			VARCHAR(100),
#I_TStamp		VARCHAR(100),
I_SName			VARCHAR(100),
I_Texts			TEXT,
I_Categories	TEXT,
I_Download_Link	TEXT
)
BEGIN
INSERT INTO dc.RadioClips
	(ID,FName,TStamp,SName,TEXTS,Categories,DownloadLink)
VALUES
	(I_ID,I_FName,DATE_SUB(NOW(), INTERVAL I_ID DAY),I_SName,I_Texts,I_Categories, I_Download_Link);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Recommendation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Recommendation`(
Date_Time_param	DATETIME,
Email_param		VARCHAR(60),
LastName_param VARCHAR(45),
FirstName_param	VARCHAR(45),
RecText_param		VARCHAR(200),
Approval_param	BOOL
)
BEGIN

INSERT INTO dc.Recommendation
	(DateTime, Email, LastName, FirstName, RecText, Approval)
VALUES
	(Date_Time_param, Email_param, LastName_param, FirstName_param, RecText_param, Approval_param);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_SE_Err` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_SE_Err`(
Err_Date_Time_param	DATETIME,
Err_Host_param		VARCHAR(30),
Err_Module_param	VARCHAR(45),
Err_Error_param		VARCHAR(200),
Err_LineNum_param	INT,
Err_Severity_param	VARCHAR(10)
)
BEGIN

INSERT INTO dc.SEErrors
	(Date_Time, Host_Name, Module, Error_Str, LineNum, Severity)
VALUES
	(Err_Date_Time_param, Err_Host_param, Err_Module_param, Err_Error_param, Err_LineNum_param, Err_Severity_param);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_srt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_srt`(
Channel_Id_param	INT UNSIGNED,
Mp4_File_Name_param	VARCHAR(100),
CC_Num_param		INT UNSIGNED,
Timecode_param		VARCHAR(32),
Line1_param			VARCHAR(70),
Line2_param			VARCHAR(70),
Line3_param			VARCHAR(70),
Line4_param			VARCHAR(70),
Created_at_param    DATETIME,
Finished_at_param	DATETIME,
Six_frames_param	VARCHAR(2030),
TableName_param		VARCHAR(20)
)
BEGIN
/*DECLARE Channel_Id_param	INT UNSIGNED;
DECLARE Mp4_File_Name_param	VARCHAR(32);
DECLARE CC_Num_param		INT UNSIGNED;
DECLARE Timecode_param		VARCHAR(32);
DECLARE Line1_param			VARCHAR(32);
DECLARE Line2_param			VARCHAR(32);
DECLARE Line3_param			VARCHAR(32);
DECLARE Created_at_param	DATETIME;*/

IF TableName_param = 'dc.SRTb' THEN	-- If it is a backup machine send to SRTb table else to SRT table
	INSERT INTO dc.SRTb
		(Channel_Id, Mp4_File_Name, CC_Num, Timecode, Line1, Line2, Line3, Line4, Created_at, Finished_at, Six_frames)
	VALUES
		(Channel_Id_param, Mp4_File_Name_param, CC_Num_param, Timecode_param, Line1_param, Line2_param, Line3_param, Line4_param, Created_at_param, Finished_at_param, Six_frames_param);
ELSE
	INSERT INTO dc.SRT
		(Channel_Id, Mp4_File_Name, CC_Num, Timecode, Line1, Line2, Line3, Line4, Created_at, Finished_at, Six_frames)
	VALUES
		(Channel_Id_param, Mp4_File_Name_param, CC_Num_param, Timecode_param, Line1_param, Line2_param, Line3_param, Line4_param, Created_at_param, Finished_at_param, Six_frames_param);    
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_srt21` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_srt21`(
Channel_Id_param	INT UNSIGNED,
Mp4_File_Name_param	VARCHAR(100),
CC_Num_param		INT UNSIGNED,
Timecode_param		VARCHAR(32),
Created_at_param    DATETIME,
Finished_at_param	DATETIME,
Cat_Frames_param	VARCHAR(2030),
Backup_param		INT
)
BEGIN

IF ( Backup_param = 1 ) THEN	-- If it is a backup machine send to SRT21b table else to SRT21 table
	INSERT INTO dc.SRT21b
		(Channel_Id, Mp4_File_Name, CC_Num, Timecode, Created_at, Finished_at, Cat_Frames)
	VALUES
		(Channel_Id_param, Mp4_File_Name_param, CC_Num_param, Timecode_param, Created_at_param, Finished_at_param, Cat_Frames_param);
ELSE
	INSERT INTO dc.SRT21
		(Channel_Id, Mp4_File_Name, CC_Num, Timecode, Created_at, Finished_at, Cat_Frames)
	VALUES
		(Channel_Id_param, Mp4_File_Name_param, CC_Num_param, Timecode_param, Created_at_param, Finished_at_param, Cat_Frames_param);    
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_TVConfig` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_TVConfig`(
  Host_Name VARCHAR(30),
  Date_t DATETIME,
  gVersion VARCHAR(45),
  gMod INT,
  gMarket VARCHAR(10),
  gConfile VARCHAR(100) ,
  gRecord_dir VARCHAR(100) ,
  gArch_dir VARCHAR(100) ,
  g_mount VARCHAR(100),
  gPreset VARCHAR(20),
  gSize VARCHAR(10),
  gShow_cmd INT,
  gBackup INT,
  station_1 VARCHAR(30),
  station_2 VARCHAR(30),
  station_3 VARCHAR(30),
  station_4 VARCHAR(30))
BEGIN
REPLACE INTO `dc`.`TVConfig`
	(HostName, Date_Time, g_version, g_mod, g_market, g_confile, g_record_dir, g_arch_dir,
	g_mount, g_preset, g_size, g_show_cmd, g_Backup, Station1 , Station2, Station3, Station4)
VALUES
	(Host_Name, Date_t, gVersion, gMod, gMarket, gConfile, gRecord_dir, gArch_dir,
    g_mount, gPreset, gSize, gShow_cmd, gBackup, station_1, station_2 , station_3, station_4);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_TVConfigNew` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_TVConfigNew`(
  Host_Name VARCHAR(30),
  Date_t DATETIME,
  gVersion VARCHAR(45),
  gMod INT,
  gMarket VARCHAR(10),
  gConfile VARCHAR(100) ,
  gRecord_dir VARCHAR(100) ,
  gArch_dir VARCHAR(100) ,
  g_mount VARCHAR(100),
  gPreset VARCHAR(20),
  gSize VARCHAR(10),
  gShow_cmd INT,
  gBackup INT,
  station_1 VARCHAR(30),
  station_2 VARCHAR(30),
  station_3 VARCHAR(30),
  station_4 VARCHAR(30))
BEGIN
REPLACE INTO `dc`.`TVConfigNew`
	(HostName, Date_Time, g_version, g_mod, g_market, g_confile, g_record_dir, g_arch_dir,
	g_mount, g_preset, g_size, g_show_cmd, g_Backup, Station1 , Station2, Station3, Station4)
VALUES
	(Host_Name, Date_t, gVersion, gMod, gMarket, gConfile, gRecord_dir, gArch_dir,
    g_mount, gPreset, gSize, gShow_cmd, gBackup, station_1, station_2 , station_3, station_4);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_TvSTT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`172.19.13.%` PROCEDURE `Insert_TvSTT`(
I_ID			INT,
I_FName			VARCHAR(100),
I_TStamp		VARCHAR(100),
I_SName			VARCHAR(100),
I_Texts			TEXT,
I_Categories	TEXT,
I_Download_Link	TEXT
)
BEGIN
INSERT INTO dc.TvSTT
	(ID,FName,TStamp,SName,TEXTS,Categories,DownloadLink)
VALUES
	(I_ID,I_FName,I_TStamp,I_SName,I_Texts,I_Categories, I_Download_Link);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_TvVTT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`172.19.13.%` PROCEDURE `Insert_TvVTT`(
I_ID			INT,
I_FName			VARCHAR(100),
I_TStamp		VARCHAR(100),
I_SName			VARCHAR(100),
I_Texts			TEXT,
I_Categories	TEXT,
I_Download_Link	TEXT
)
BEGIN
INSERT INTO dc.TvVTT
	(ID,FName,TStamp,SName,TEXTS,Categories,DownloadLink)
VALUES
	(I_ID,I_FName,I_TStamp,I_SName,I_Texts,I_Categories, I_Download_Link);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MagazineResult` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MagazineResult`(
title	VARCHAR(1000),
link	VARCHAR(1000),
pubdate	DATETIME,
updatedate	DATETIME,
author	VARCHAR(100),
imagetitle		VARCHAR(250),
imageurl		VARCHAR(1000),
categories	VARCHAR(1000),
guid		VARCHAR(1000),
summary	VARCHAR(5000),
magazine	VARCHAR(150),
magazinelink	VARCHAR(1000)
)
BEGIN

	INSERT INTO MagazineResults (Title,Link,Author,Summary,Magazine,PublishDate,MagazineLink,ImageTitle,ImageURL,UpdateDate,Categories,GUID,AddedDate)
    VALUES (title,link,author,summary,magazine,pubdate,magazinelink,imagetitle,imageurl,updatedate,categories,guid,NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Magazine_Cleanup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Magazine_Cleanup`(
	Days    				INT
)
BEGIN
	DELETE FROM dc.MagazineResults
	WHERE (DATEDIFF(NOW(), AddedDate) >= Days) AND (ID <> 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Magazine_Search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Magazine_Search`(
Search_Query_param    				TEXT,
Selected_Magazine_param            	TEXT,
All_Magazines_param 	  			BOOL,
Selected_Country					TEXT,
All_Countries						BOOL,
Selected_State_Province				TEXT,
All_States							BOOL,
Selected_City						TEXT,
All_Cities							BOOL,
Start_DateTime						TEXT,
End_DateTime						TEXT,
Limit_param           				INT
)
BEGIN
	SELECT 	MagazineResults.ID AS ID,
			Title,  
			Link,
            Author,
			Magazine,
			MagazineLink,
			PublishDate,
			SUBSTRING(Summary, 1, 400) AS Summary
            
	FROM 	MagazineResults,
			Magazines
            
	WHERE 	(All_Magazines_param OR Selected_Magazine_param = Magazine) AND
			MATCH (Summary, Title, Categories) AGAINST (Search_Query_param IN BOOLEAN MODE)
            AND Magazine = MagazineName
            AND ((Selected_City = City) OR
				(All_Cities AND (Selected_State_Province = StateProvince)) OR
                ((All_Cities AND All_States) AND (Selected_Country = Country)) OR 
                (All_Cities AND All_States AND All_Countries))
			AND ((STR_TO_DATE(Start_DateTime, '%m/%d/%Y %h:%i %p') <= PublishDate) OR (Start_DateTime = ''))
            AND	((PublishDate <= STR_TO_DATE(End_DateTime, '%m/%d/%Y %h:%i %p')) OR (End_DateTime = ''))
	ORDER BY PublishDate DESC
	LIMIT 	Limit_param;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Magazine_Search_Emailalerts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Magazine_Search_Emailalerts`(
Search_Query_param    				TEXT,
Selected_Magazine_param            	TEXT,
All_Magazines_param 	  			BOOL,
Selected_Country					TEXT,
All_Countries						BOOL,
Selected_State_Province				TEXT,
All_States							BOOL,
Selected_City						TEXT,
All_Cities							BOOL,
Start_DateTime						TEXT,
End_DateTime						TEXT,
Limit_param           				INT,
emailAlertID 						INT
)
BEGIN
    SELECT *
    FROM (
        SELECT 	MagazineResults.ID AS ID,
			Title,  
			Link,
            Author,
			Magazine,
			MagazineLink,
			PublishDate,
			SUBSTRING(Summary, 1, 400) AS Summary
            
	    FROM 	MagazineResults,
			    Magazines
            
	    WHERE 	(All_Magazines_param OR Selected_Magazine_param = Magazine) AND
			MATCH (Summary, Title, Categories) AGAINST (Search_Query_param IN BOOLEAN MODE)
            AND Magazine = MagazineName
            AND ((Selected_City = City) OR
				(All_Cities AND (Selected_State_Province = StateProvince)) OR
                ((All_Cities AND All_States) AND (Selected_Country = Country)) OR 
                (All_Cities AND All_States AND All_Countries))
			AND ((STR_TO_DATE(Start_DateTime, '%m/%d/%Y %h:%i %p') <= PublishDate) OR (Start_DateTime = ''))
            AND	((PublishDate <= STR_TO_DATE(End_DateTime, '%m/%d/%Y %h:%i %p')) OR (End_DateTime = ''))
	    ORDER BY PublishDate DESC
	    LIMIT 	Limit_param
    ) AS P
    WHERE NOT EXISTS (
	    SELECT *
        FROM magazineReported as R
        WHERE emailAlertID = R.idemailAlert AND P.ID = R.magazineID
    )
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MediaRetentionCleanup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `MediaRetentionCleanup`()
BEGIN
    -- Declare variables for tracking
    DECLARE srt_total, srt_deleted INT;
    DECLARE srt_log_message VARCHAR(255);

    -- Create a centralized cleanup log
    CREATE TABLE IF NOT EXISTS media_retention_log (
        id INT AUTO_INCREMENT PRIMARY KEY,
        table_name VARCHAR(100),
        total_records INT,
        deleted_records INT,
        deletion_percentage DECIMAL(5,2),
        cleanup_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

    -- SRT Tables Cleanup
    SET srt_total = (SELECT COUNT(*) FROM SRT);
    
    -- Delete SRT records older than 90 days
    DELETE FROM SRT 
    WHERE Created_at < DATE_SUB(NOW(), INTERVAL 90 DAY);
    
    SET srt_deleted = ROW_COUNT();
    SET srt_log_message = CONCAT(
        'Deleted ', srt_deleted, ' out of ', srt_total, 
        ' records (', ROUND(srt_deleted * 100.0 / srt_total, 2), '%)'
    );

    -- Log SRT cleanup
    INSERT INTO media_retention_log 
    (table_name, total_records, deleted_records, deletion_percentage)
    VALUES (
        'SRT', 
        srt_total, 
        srt_deleted, 
        (srt_deleted * 100.0 / NULLIF(srt_total, 0))
    );

    -- RadioClips Handling (Different Approach)
    -- Since no standard date column, we'll use a different strategy
    -- Option 1: If TStamp is a valid timestamp
    BEGIN
        DECLARE radio_total, radio_deleted INT;
        
        -- Check if TStamp is a valid date format
        SET radio_total = (SELECT COUNT(*) FROM RadioClips);
        
        -- Attempt to delete based on TStamp if it's a valid date format
        DELETE FROM RadioClips 
        WHERE STR_TO_DATE(TStamp, '%Y-%m-%d %H:%i:%s') < DATE_SUB(NOW(), INTERVAL 90 DAY);
        
        SET radio_deleted = ROW_COUNT();

        -- Log RadioClips cleanup
        INSERT INTO media_retention_log 
        (table_name, total_records, deleted_records, deletion_percentage)
        VALUES (
            'RadioClips', 
            radio_total, 
            radio_deleted, 
            (radio_deleted * 100.0 / NULLIF(radio_total, 0))
        );
    END;

    -- Display cleanup summary
    SELECT 
        table_name, 
        total_records, 
        deleted_records, 
        deletion_percentage,
        cleanup_timestamp
    FROM media_retention_log
    ORDER BY cleanup_timestamp DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `NewspaperResult` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NewspaperResult`(
title	VARCHAR(1000),
link	VARCHAR(1000),
pubdate	DATETIME,
updatedate	DATETIME,
author	VARCHAR(100),
imagetitle		VARCHAR(250),
imageurl		VARCHAR(1000),
categories	VARCHAR(1000),
guid		VARCHAR(1000),
summary	VARCHAR(5000),
newspaper	VARCHAR(150),
newspaperlink	VARCHAR(1000)
)
BEGIN

	INSERT INTO NewspaperResults (Title,Link,Author,Summary,Newspaper,PublishDate,NewspaperLink,ImageTitle,ImageURL,UpdateDate,Categories,GUID,AddedDate)
    VALUES (title,link,author,summary,newspaper,pubdate,newspaperlink,imagetitle,imageurl,updatedate,categories,guid,NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Newspaper_Cleanup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Newspaper_Cleanup`(
	Days    				INT
)
BEGIN
	DELETE FROM dc.NewspaperResults
	WHERE (DATEDIFF(NOW(), AddedDate) >= Days) AND (ID <> 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Newspaper_Search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Newspaper_Search`(
Search_Query_param    				TEXT,
Selected_Newspaper_param            TEXT,
All_Papers_param 	  				BOOL,
Selected_Country					TEXT,
All_Countries						BOOL,
Selected_State_Province				TEXT,
All_States							BOOL,
Selected_City						TEXT,
All_Cities							BOOL,
Start_DateTime						TEXT,
End_DateTime						TEXT,
Limit_param           				INT
)
BEGIN
	SELECT 	NewspaperResults.ID AS ID,
			Title,  
			Link,
            Author,
			Newspaper,
			NewspaperLink,
			PublishDate,
			SUBSTRING(Summary, 1, 400) AS Summary
            
	FROM 	NewspaperResults,
			Newspapers
            
	WHERE 	(All_Papers_param OR Selected_Newspaper_param = Newspaper) AND
			MATCH (Summary, Title, Categories) AGAINST (Search_Query_param IN BOOLEAN MODE)
            AND Newspaper = NewspaperName
            AND ((Selected_City = City) OR
				(All_Cities AND (Selected_State_Province = StateProvince)) OR
                ((All_Cities AND All_States) AND (Selected_Country = Country)) OR 
                (All_Cities AND All_States AND All_Countries))
			AND ((STR_TO_DATE(Start_DateTime, '%m/%d/%Y %h:%i %p') <= PublishDate) OR (Start_DateTime = ''))
            AND	((PublishDate <= STR_TO_DATE(End_DateTime, '%m/%d/%Y %h:%i %p')) OR (End_DateTime = ''))
	ORDER BY PublishDate DESC
	LIMIT 	Limit_param;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Newspaper_Search_Emailalerts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Newspaper_Search_Emailalerts`(
Search_Query_param    				TEXT,
Selected_Newspaper_param            TEXT,
All_Papers_param 	  				BOOL,
Selected_Country					TEXT,
All_Countries						BOOL,
Selected_State_Province				TEXT,
All_States							BOOL,
Selected_City						TEXT,
All_Cities							BOOL,
Start_DateTime						TEXT,
End_DateTime						TEXT,
Limit_param           				INT,
emailAlertID						INT
)
BEGIN
    SELECT *
    FROM (
        SELECT 	NewspaperResults.ID AS ID,
			Title,  
			Link,
            Author,
			Newspaper,
			NewspaperLink,
			PublishDate,
			SUBSTRING(Summary, 1, 400) AS Summary
            
	   FROM 	NewspaperResults,
			    Newspapers
            
	    WHERE 	(All_Papers_param OR Selected_Newspaper_param = Newspaper) AND
			MATCH (Summary, Title, Categories) AGAINST (Search_Query_param IN BOOLEAN MODE)
            AND Newspaper = NewspaperName
            AND ((Selected_City = City) OR
				(All_Cities AND (Selected_State_Province = StateProvince)) OR
                ((All_Cities AND All_States) AND (Selected_Country = Country)) OR 
                (All_Cities AND All_States AND All_Countries))
			AND ((STR_TO_DATE(Start_DateTime, '%m/%d/%Y %h:%i %p') <= PublishDate) OR (Start_DateTime = ''))
            AND	((PublishDate <= STR_TO_DATE(End_DateTime, '%m/%d/%Y %h:%i %p')) OR (End_DateTime = ''))
	    ORDER BY PublishDate DESC
	    LIMIT 	Limit_param
    ) AS P
    WHERE NOT EXISTS (
        SELECT *
        FROM newspaperReported as R
        WHERE emailAlertID = R.idemailAlert AND P.ID = R.newspaperID
    )
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Radio_Search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Radio_Search`(
 Search_Query_param    				TEXT,
 Selected_Radio_param            TEXT,
 All_Radios_param 	  				BOOL,
 Selected_Country					TEXT,
 All_Countries						BOOL,
 Selected_State_Province				TEXT,
 All_States							BOOL,
 Selected_City						TEXT,
 All_Cities							BOOL,
 Start_DateTime						TEXT,
 End_DateTime						TEXT,
 Limit_param           				INT
 )
BEGIN
 	SELECT 	RadioClips.ID AS ID,
 			FName,  
            SName,
 			DownloadLink,
 			TStamp,
 			TEXTS
             
 	FROM 	RadioClips,
 			RadioStation
             
 	WHERE 	(All_Radios_param OR (Selected_Radio_param = SName AND SName = StationName)) AND
 			MATCH (TEXTS, FName, Categories) AGAINST (Search_Query_param IN natural language MODE)
              AND SName = StationName
             AND ((Selected_City = City) OR
 				(All_Cities AND (Selected_State_Province = StateProvince)) OR
                 ((All_Cities AND All_States) AND (Selected_Country = Country)) OR 
                 (All_Cities AND All_States AND All_Countries))
 			AND ((STR_TO_DATE(Start_DateTime, '%m/%d/%Y %h:%i %p') <= TStamp) OR (Start_DateTime = ''))
             AND	((TStamp <= STR_TO_DATE(End_DateTime, '%m/%d/%Y %h:%i %p')) OR (End_DateTime = ''))
 	ORDER BY TStamp DESC
 	LIMIT 	Limit_param;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Radio_Search_Emailalerts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Radio_Search_Emailalerts`(
 Search_Query_param    				TEXT,
 Selected_Radio_param            TEXT,
 All_Radios_param 	  				BOOL,
 Selected_Country					TEXT,
 All_Countries						BOOL,
 Selected_State_Province				TEXT,
 All_States							BOOL,
 Selected_City						TEXT,
 All_Cities							BOOL,
 Start_DateTime						TEXT,
 End_DateTime						TEXT,
 Limit_param           				INT,
 emailAlertID						INT
 )
BEGIN
    SELECT *
    FROM (
        SELECT 	RadioClips.ID AS ID,
 			FName,  
            SName,
 			DownloadLink,
 			TStamp,
 			TEXTS
             
 	    FROM 	RadioClips,
 			    RadioStation
             
 	    WHERE 	(All_Radios_param OR (Selected_Radio_param = SName AND SName = StationName)) AND
 			MATCH (TEXTS, FName, Categories) AGAINST (Search_Query_param IN natural language MODE)
              AND SName = StationName
             AND ((Selected_City = City) OR
 				(All_Cities AND (Selected_State_Province = StateProvince)) OR
                 ((All_Cities AND All_States) AND (Selected_Country = Country)) OR 
                 (All_Cities AND All_States AND All_Countries))
 			AND ((STR_TO_DATE(Start_DateTime, '%m/%d/%Y %h:%i %p') <= TStamp) OR (Start_DateTime = ''))
             AND	((TStamp <= STR_TO_DATE(End_DateTime, '%m/%d/%Y %h:%i %p')) OR (End_DateTime = ''))
 	    ORDER BY TStamp DESC
 	    LIMIT 	Limit_param) AS P
    WHERE NOT EXISTS (
	    SELECT *
        FROM radioReported as R
        WHERE emailAlertID = R.idemailAlert AND P.ID = R.radioID
    )
 	;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Relevance_Search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Relevance_Search`(
Search_Query_param    TEXT,
Channel_param         TEXT,
All_Channels_param    BOOL,
Limit_param           INT
)
BEGIN 
    SELECT Channels.Channel_Id, 
           Channels.Channel_Name,
           Mp4_File_Name,
           CC_Num,
           TimeCode,
           Created_at,
           CONCAT_WS('\n', Line1, Line2, Line3, Line4) AS Result_Line,
           
           MATCH (Line1, Line2, Line3, Line4) 
                    AGAINST (Search_Query_param IN BOOLEAN MODE) AS Relevance

           FROM SRT JOIN Channels ON SRT.Channel_Id = Channels.Channel_Id
           WHERE 
               (All_Channels_param OR Channel_Name = Channel_param) AND
               MATCH (Line1, Line2, Line3, Line4) 
                    AGAINST (Search_Query_param IN BOOLEAN MODE) order by Relevance DESC
           LIMIT Limit_param;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Search_Engine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Search_Engine`(
Start_Day_param     DATETIME,
End_Day_param       DATETIME,
Start_Time_param    DATETIME,
End_Time_param      DATETIME,
Include_Days_param        VARCHAR(100),
Include_Channels_param    TEXT,
Search_Query_param TEXT,
Limit_param         INT
)
BEGIN
	DECLARE pos INT Default 0;
	DECLARE channel_name VARCHAR(255);
	INSERT INTO dc.Debug (Param) VALUES (Search_Query_param);
	-- get all channels that have the same id
      
	DROP TEMPORARY TABLE IF EXISTS filtered_channels;
	CREATE TEMPORARY TABLE filtered_channels (
		Channel_Id INT UNSIGNED,
        Channel_Name VARCHAR(20)
    );
      
	-- TODO: Improve loop so that CALL get_channel_id will return chan_id and chan_name
    -- Avoiding select statement in doing so.
	channel_name_loop: LOOP
		SET pos=pos+1;
		SET channel_name = SPLIT_STR(Include_Channels_param,",",pos);
		IF channel_name = '' THEN
			LEAVE channel_name_loop;
		END IF;
		CALL get_channel_id(channel_name, 'digi-frontend', @chan_id);
		INSERT INTO filtered_channels SELECT Channel_Id, Channel_Name FROM Channels WHERE Channel_Id = @chan_id;
	END LOOP channel_name_loop;

	-- Case insensitive
SELECT 
    Channels.Channel_Id,
    Channels.Channel_Name,
    Mp4_File_Name,
    CC_Num,
    TimeCode,
    CONCAT_WS(' ', Line1, Line2, Line3, Line4) AS Result_Line
FROM
    SRT
        JOIN
    Channels ON SRT.Channel_Id = Channels.Channel_Id
WHERE
    MATCH (Line1 , Line2 , Line3 , Line4) AGAINST (Search_Query_param IN BOOLEAN MODE)
        AND Channels.Channel_Id IN (SELECT 
            Channel_Id
        FROM
            filtered_channels)
        AND (DATE(Created_at) BETWEEN DATE(Start_Day_param) AND DATE(End_Day_Param))
        AND (TIME(Created_at) BETWEEN TIME(Start_Time_param) AND TIME(End_Time_param))
        AND FIND_IN_SET(DAYOFWEEK(Created_at),
            Include_Days_param)
LIMIT LIMIT_PARAM;
    
    -- Case sensitive
    
	DROP TEMPORARY TABLE filtered_channels;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Search_TV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Search_TV`(
Search_Query_param	TEXT,
Channel_param		TEXT,
All_Channels_param	BOOL,
Limit_param			INT,
Start_Date_param	DATE,
End_Date_param		DATE,
Start_Time_param	TIME,
End_Time_param		TIME
)
BEGIN
	DECLARE Plus_String TEXT DEFAULT "";
    
	SELECT REPLACE(Search_Query_param, '/&&/', '+') INTO Plus_String;
    
    SELECT
		Channels.Channel_Id, 
        Channels.Channel_Name,
        Channels.Host_Name,
        SRT21.Mp4_File_Name,
        SRT21.CC_Num,
        SRT21.TimeCode,
        SRT21.Created_at,
        SRT21.Cat_Frames AS Result_Line

        FROM dc.SRT21 JOIN dc.Channels ON dc.SRT21.Channel_Id = dc.Channels.Channel_Id
			WHERE 
				((All_Channels_param OR BINARY Channel_Name LIKE Channel_param) AND
                (Start_Date_param <= DATE(SRT21.Created_at)) AND
                (End_Date_param >= DATE(SRT21.Finished_at)) AND
                (Start_Time_param <= TIME(SRT21.Created_at)) AND
                (End_Time_param >= TIME(SRT21.Finished_at)) AND
				(MATCH (Cat_Frames) 
                AGAINST (Plus_String IN BOOLEAN MODE)))
		   ORDER BY Channels.Channel_Id, Mp4_File_Name, CC_Num
           LIMIT Limit_param;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Search_TV_es` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Search_TV_es`(
Search_Query_param	TEXT,
Channel_param		TEXT,
All_Channels_param	BOOL,
Limit_param			INT,
Start_Date_param	DATE,
End_Date_param		DATE,
Start_Time_param	TIME,
End_Time_param		TIME
)
BEGIN
	DECLARE Plus_String TEXT DEFAULT "";
    
	SET Plus_String = CONCAT('+', REPLACE(Search_Query_param, ' ', ' +'));

    
    SELECT
		Channels.Channel_Id, 
        Channels.Channel_Name,
        Channels.Host_Name,
        SRT21.Mp4_File_Name,
        SRT21.CC_Num,
        SRT21.TimeCode,
        SRT21.Created_at,
        SRT21.Spanish_Translation AS Result_Line

        FROM dc.SRT21 JOIN dc.Channels ON dc.SRT21.Channel_Id = dc.Channels.Channel_Id
			WHERE 
				((All_Channels_param OR BINARY Channel_Name LIKE Channel_param) AND
                (Start_Date_param <= DATE(SRT21.Created_at)) AND
                (End_Date_param >= DATE(SRT21.Finished_at)) AND
                (Start_Time_param <= TIME(SRT21.Created_at)) AND
                (End_Time_param >= TIME(SRT21.Finished_at)) AND
				(MATCH (Spanish_Translation) 
                AGAINST (Plus_String IN BOOLEAN MODE)))
		   ORDER BY Channels.Channel_Id, Mp4_File_Name, CC_Num
           LIMIT Limit_param;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Simple_Search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Simple_Search`(
Search_Query_param    TEXT,
Channel_param         TEXT,
All_Channels_param    BOOL,
Limit_param           INT
)
BEGIN
	DECLARE Plus_String TEXT DEFAULT "";
    DECLARE Prev_CC_Num INT(10) DEFAULT 0;
    DECLARE Channel_Id_var INT(10);
    DECLARE Channel_Name_var VARCHAR(20);
    DECLARE Mp4_File_Name_var VARCHAR(100);
    DECLARE CC_Num_var INT(10);
    DECLARE TimeCode_var VARCHAR(32);
    DECLARE Created_at_var DATETIME;
	DECLARE Result_Line_var VARCHAR(2004);
	DECLARE row_not_found TINYINT DEFAULT FALSE;
	DECLARE Search_Results_cursor CURSOR FOR SELECT * FROM Search_Results;
    DECLARE CONTINUE HANDLER FOR NOT FOUND
		SET row_not_found = TRUE;
    
	INSERT INTO dc.Debug (Param) VALUES (Search_Query_param);
	SELECT REPLACE(Search_Query_param, '/&&/', '+') INTO Plus_String;
    -- INSERT INTO dc.Debug (Param) VALUES (Plus_String);
    
    DROP TEMPORARY TABLE IF EXISTS Search_Results;
    CREATE TEMPORARY TABLE Search_Results
    SELECT
    
		Channels.Channel_Id, 
        Channels.Channel_Name,
        Mp4_File_Name,
        CC_Num,
        TimeCode,
        Created_at,
        Cat_frames AS Result_Line

        FROM SRT21 JOIN Channels ON SRT21.Channel_Id = Channels.Channel_Id
			WHERE 
				((All_Channels_param OR Channel_Name = Channel_param) AND
				MATCH (Cat_frames) 
                AGAINST (Plus_String IN BOOLEAN MODE))
		   ORDER BY Channels.Channel_Id, Mp4_File_Name, CC_Num
           LIMIT Limit_param;
	
    SET SQL_SAFE_UPDATES = 0;
    
    OPEN Search_Results_cursor;
    
    WHILE row_not_found = FALSE DO
		FETCH Search_Results_cursor INTO Channel_Id_var, Channel_Name_var, Mp4_File_Name_var, CC_Num_var, TimeCode_var,Created_at_var, Result_Line_var;
     -- INSERT INTO dc.Debug (Param) VALUES (concat_ws(' - ', CC_Num_var, Prev_CC_Num));
		IF (CC_Num_var - Prev_CC_Num) = 3 THEN
			UPDATE Search_Results
				SET CC_Num = 0
                WHERE Channel_Id_var = Channel_Id AND Channel_Name_var = Channel_Name AND Mp4_File_Name_var = Mp4_File_Name AND CC_Num_var = CC_Num;
            SET Prev_CC_Num := 0;
		ELSE
			SET Prev_CC_Num := CC_Num_var;
		END IF;
	END WHILE;

	CLOSE Search_Results_cursor;
    
    SET SQL_SAFE_UPDATES = 1;
	
SELECT 
    *
FROM
    Search_Results
WHERE CC_Num != 0;
    
	DROP TEMPORARY TABLE Search_Results;    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TestSRTRetention` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `TestSRTRetention`()
BEGIN
    DECLARE total_records INT;
    DECLARE deleted_records INT;

    -- Count total records
    SELECT COUNT(*) INTO total_records FROM SRT;

    -- Delete records older than 90 days
    DELETE FROM SRT 
    WHERE Created_at < DATE_SUB(NOW(), INTERVAL 90 DAY);

    -- Get number of deleted records
    SET deleted_records = ROW_COUNT();

    -- Log the results
    INSERT INTO media_retention_log 
    (table_name, total_records, deleted_records, deletion_percentage)
    VALUES (
        'SRT', 
        total_records, 
        deleted_records, 
        ROUND(deleted_records * 100.0 / total_records, 2)
    );

    -- Show log entry
    SELECT * FROM media_retention_log 
    ORDER BY cleanup_timestamp DESC 
    LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_AdminRole_Name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_AdminRole_Name`(
idParam INT,
nameParam VARCHAR(255)
)
BEGIN
	UPDATE AdminRoles
	SET name = nameParam
	WHERE id = idParam
    AND id > 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_AdminRole_Permissions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_AdminRole_Permissions`(
idParam INT,
permissionsParam VARCHAR(255)
)
BEGIN
	UPDATE AdminRoles
	SET permissions = permissionsParam
	WHERE id = idParam
    AND id > 2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Admin_Password` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Admin_Password`(
emailParam VARCHAR(255),
passwordParam VARCHAR(255)
)
BEGIN
	UPDATE Admins
	SET password = passwordParam
	WHERE email = emailParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Admin_Role` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Admin_Role`(
emailParam VARCHAR(255),
roleParam INT
)
BEGIN
	UPDATE Admins
	SET role = roleParam
	WHERE email = emailParam;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Cities_With_Country` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Cities_With_Country`(
Country_Selection   				TEXT
)
BEGIN
	SELECT DISTINCT City
        FROM Locations
        WHERE Country = Country_Selection
        ORDER BY City;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Cities_With_State` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Cities_With_State`(
State_Selection   				TEXT
)
BEGIN
	SELECT DISTINCT City
        FROM Locations
        WHERE StateProvince = State_Selection
        ORDER BY City;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Countries_With_City` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Countries_With_City`(
City_Selection   				TEXT
)
BEGIN
	SELECT DISTINCT Country
        FROM Locations
        WHERE City = City_Selection
        ORDER BY Country;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Countries_With_State` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Countries_With_State`(
State_Selection   				TEXT
)
BEGIN
	SELECT DISTINCT Country
        FROM Locations
        WHERE StateProvince = State_Selection
        ORDER BY Country;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Magazine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Magazine`(
Selected_Country					TEXT,
Selected_State						TEXT,
Selected_City						TEXT,
All_Countries						BOOL,
All_States							BOOL,
All_Cities							BOOL
)
BEGIN
	SELECT 	
			MagazineName
	FROM 	
			dc.Magazines
	WHERE 	
			City = Selected_City OR
			(All_Cities AND (StateProvince = Selected_State))	OR 
			((All_Cities AND All_States) AND (Country = Selected_Country)) OR
			(All_Cities AND All_States AND All_Countries);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Magazine_Reported` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Magazine_Reported`(
idEmailAlert	    				INT,
magazineID						    INT
)
BEGIN
	INSERT INTO dc.magazineReported (idEmailAlert, magazineID) 
	VALUES (idEmailAlert, magazineID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Newspaper` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Newspaper`(
Selected_Country					TEXT,
Selected_State						TEXT,
Selected_City						TEXT,
All_Countries						BOOL,
All_States							BOOL,
All_Cities							BOOL
)
BEGIN
	SELECT 	
			NewspaperName
	FROM 	
			dc.Newspapers
	WHERE 	
			City = Selected_City OR
			(All_Cities AND (StateProvince = Selected_State))	OR 
			((All_Cities AND All_States) AND (Country = Selected_Country)) OR
			(All_Cities AND All_States AND All_Countries);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Newspaper_Reported` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Newspaper_Reported`(
idEmailAlert	    				INT,
newspaperID						    INT
)
BEGIN
	INSERT INTO dc.newspaperReported (idEmailAlert, newspaperID) 
	VALUES (idEmailAlert, newspaperID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Password` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `Update_Password`(
USEREMAIL 		TEXT,
NEWPASSWORD 	TEXT,
NEWSALT			TEXT
)
BEGIN
SET SQL_SAFE_UPDATES=0;
	UPDATE users
	SET password = NEWPASSWORD, salt = NEWSALT
	WHERE email = USEREMAIL;
SET SQL_SAFE_UPDATES=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Radio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Radio`(
Selected_Country					TEXT,
Selected_State						TEXT,
Selected_City						TEXT,
All_Countries						BOOL,
All_States							BOOL,
All_Cities							BOOL
)
BEGIN
	SELECT 	
			StationName
	FROM 	
			dc.RadioStation
	WHERE 	
			City = Selected_City OR
			(All_Cities AND (StateProvince = Selected_State))	OR 
			((All_Cities AND All_States) AND (Country = Selected_Country)) OR
			(All_Cities AND All_States AND All_Countries);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_RadioConfig` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DB_Team_VPN`@`172.19.13.%` PROCEDURE `Update_RadioConfig`(db_Host VARCHAR(30),
  Date_t DATETIME,
  db_User VARCHAR(1024) ,
  db_Pass VARCHAR(1024),
  db_Name VARCHAR(1024),
  db_Port INT,
  db_UnixSock VARCHAR(1024) ,
  db_Flag INT,
  rec_ShellScriptPath VARCHAR(1024),
  rec_StorageLoc VARCHAR(1024),
  rec_Lap INT,
  arc_Path VARCHAR(1024),
  station_1 VARCHAR(30),
  station_2 VARCHAR(30),
  station_3 VARCHAR(30),
  station_4 VARCHAR(30),
  station_5 VARCHAR(30),
  station_6 VARCHAR(30),
  url_1 	VARCHAR(1024),
  url_2 	VARCHAR(1024),
  url_3 	VARCHAR(1024),
  url_4 	VARCHAR(1024),
  url_5 	VARCHAR(1024),
  url_6 	VARCHAR(1024))
BEGIN
UPDATE `dc`.`RadioConfig`
SET
dbHost = db_Host,
Date_Time = Date_t,
dbUser = db_User,
dbPass = db_Pass,
dbName = db_Name,
dbPort = db_Port,
dbUnixSock = db_UnixSock,
dbFlag = db_Flag,
recShellScriptPath = rec_ShellScriptPath,
recStorageLoc = rec_StorageLoc,
recLap = rec_Lap,
arcPath = arc_Path,
Station1 = station_1,
Station2 = station_2,
Station3 = station_3,
Station4 = station_4,
Station3 = station_5,
Station4 = station_6,
URL1 = url_1,
URL2 = url_2,
URL3 = url_3,
URL4 = url_4,
URL5 = url_5,
URL6 = url_6
WHERE dbHost = db_Host AND Date_Time = Date_t;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_Radio_Reported` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_Radio_Reported`(
idEmailAlert	    				INT,
radioID							    INT
)
BEGIN
	INSERT INTO dc.radioReported (idEmailAlert, radioID) 
	VALUES (idEmailAlert, radioID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_States_With_City` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_States_With_City`(
City_Selection   				TEXT
)
BEGIN
	SELECT DISTINCT StateProvince
        FROM Locations
        WHERE City = City_Selection
        ORDER BY StateProvince;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_States_With_Country` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_States_With_Country`(
Country_Selection   				TEXT
)
BEGIN
	SELECT DISTINCT StateProvince
        FROM Locations
        WHERE Country = Country_Selection
        ORDER BY StateProvince;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Update_TVConfig` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Update_TVConfig`(Host_Name VARCHAR(30) ,
  Date_t DATETIME ,
  gVersion VARCHAR(45),
  gMod INT,
  gMarket VARCHAR(10),
  gConfile VARCHAR(100) ,
  gRecord_dir VARCHAR(100) ,
  gArch_dir VARCHAR(100) ,
  g_mount VARCHAR(100),
  gPreset VARCHAR(20),
  gSize VARCHAR(10),
  gShow_cmd INT,
  gBackup VARCHAR(20),
  station_1 VARCHAR(30),
  station_2 VARCHAR(30),
  station_3 VARCHAR(30),
  station_4 VARCHAR(30))
BEGIN
UPDATE `dc`.`TVConfig`
SET
HostName = Host_Name,
Date_Time = Date_t,
g_version = gVersion,
g_mod = gMod,
g_market = gMarket,
g_confile = gConfile,
g_record_dir = gRecord_dir,
g_arch_dir = gArch_dir,
g_mount = g_mount,
g_preset = gPreset,
g_size = gSize,
g_show_cmd = gShow_cmd,
g_Backup = gBackup,
Station1 = station_1,
Station2 = station_2,
Station3 = station_3,
Station4 = station_4
WHERE `HostName` = Host_Name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_expiration_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE `user_expiration_date`(IN p_days INT)
BEGIN
  -- 1) Make role=2 admins indefinite (NULL means “no expiration”)
  UPDATE dc.users u
  JOIN dc.Admins a ON a.email = u.email
  SET u.expirationDate = NULL
  WHERE a.role = 2;

  -- 2) Backfill for other verified, active users who still have no expiration
  UPDATE dc.users u
  LEFT JOIN dc.Admins a ON a.email = u.email
  SET u.expirationDate = NOW() + INTERVAL p_days DAY
  WHERE u.previouslyVerified = 1
    AND u.isVerified = 1
    AND (u.blocked = 0 OR u.blocked IS NULL)
    AND u.expirationDate IS NULL
    AND (a.role IS NULL OR a.role <> 2);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-09 15:00:50
