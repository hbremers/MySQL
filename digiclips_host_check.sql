USE dc;

DROP PROCEDURE IF EXISTS check_host_status;
DELIMITER //
CREATE PROCEDURE check_host_status(IN threshold_minutes INT)
BEGIN
  INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
  SELECT 
    h.Host_Name,
    'High',
    h.Host_Name,
    CONCAT('Machine down: no activity for over ', threshold_minutes, ' minutes'),
    0,
    NOW()
  FROM Hosts h
  WHERE 
    (h.NoCheck IS NULL OR h.NoCheck = 0)
    AND h.Last_Sent < DATE_SUB(NOW(), INTERVAL threshold_minutes MINUTE);

  SELECT * FROM Errors 
  WHERE Host_Name IN (SELECT Host_Name FROM Hosts)
  AND Error_Str LIKE 'Machine down%'
  ORDER BY Date_Time DESC;
END //
DELIMITER ;

SET GLOBAL event_scheduler = ON;

DROP EVENT IF EXISTS scheduled_host_check;
DELIMITER //
CREATE EVENT scheduled_host_check
ON SCHEDULE EVERY 30 MINUTE
STARTS NOW()
DO
BEGIN
  CALL check_host_status(30);
END //
DELIMITER ;

SHOW EVENTS IN dc;
