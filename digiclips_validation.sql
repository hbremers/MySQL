USE dc;

DROP TRIGGER IF EXISTS validate_radioclips_before_insert;
DELIMITER //
CREATE TRIGGER validate_radioclips_before_insert
BEFORE INSERT ON RadioClips
FOR EACH ROW
BEGIN
  IF NEW.FName IS NULL OR TRIM(NEW.FName) = '' THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'High', 'db_validator', 'RadioClips: FName cannot be blank', 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RadioClips: FName cannot be blank';
  END IF;

  IF NEW.TStamp_dt IS NOT NULL AND NEW.TStamp_dt > NOW() THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'Medium', 'db_validator', 'RadioClips: TStamp_dt cannot be in the future', 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RadioClips: TStamp_dt cannot be in the future';
  END IF;
END //
DELIMITER ;

DROP TRIGGER IF EXISTS validate_mediatransfers_before_insert;
DELIMITER //
CREATE TRIGGER validate_mediatransfers_before_insert
BEFORE INSERT ON MediaTransfers
FOR EACH ROW
BEGIN
  IF NEW.senderEmail NOT LIKE '%@%.%' THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'High', 'db_validator', CONCAT('MediaTransfers: Invalid senderEmail: ', NEW.senderEmail), 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'MediaTransfers: Invalid senderEmail format';
  END IF;

  IF NEW.expiryDate <= NOW() THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'Medium', 'db_validator', 'MediaTransfers: expiryDate must be in the future', 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'MediaTransfers: expiryDate must be in the future';
  END IF;

  IF NEW.totalSizeBytes < 0 THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'Low', 'db_validator', 'MediaTransfers: totalSizeBytes cannot be negative', 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'MediaTransfers: totalSizeBytes cannot be negative';
  END IF;
END //
DELIMITER ;

DROP TRIGGER IF EXISTS validate_users_before_insert;
DELIMITER //
CREATE TRIGGER validate_users_before_insert
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
  IF NEW.email NOT LIKE '%@%.%' THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'High', 'db_validator', CONCAT('users: Invalid email: ', NEW.email), 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'users: Invalid email format';
  END IF;

  IF NEW.firstName IS NULL OR TRIM(NEW.firstName) = '' THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'High', 'db_validator', 'users: firstName cannot be blank', 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'users: firstName cannot be blank';
  END IF;

  IF NEW.lastName IS NULL OR TRIM(NEW.lastName) = '' THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'High', 'db_validator', 'users: lastName cannot be blank', 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'users: lastName cannot be blank';
  END IF;

  IF LENGTH(NEW.password) < 8 THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'High', 'db_validator', 'users: password too short', 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'users: password does not meet minimum length';
  END IF;
END //
DELIMITER ;

DROP TRIGGER IF EXISTS validate_client_before_insert;
DELIMITER //
CREATE TRIGGER validate_client_before_insert
BEFORE INSERT ON Client
FOR EACH ROW
BEGIN
  IF NEW.State IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM State WHERE State = NEW.State
  ) THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'High', 'db_validator', CONCAT('Client: Invalid State: ', NEW.State), 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Client: State does not exist in State table';
  END IF;

  IF NEW.City IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM City WHERE City = NEW.City
  ) THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'Medium', 'db_validator', CONCAT('Client: Invalid City: ', NEW.City), 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Client: City does not exist in City table';
  END IF;

  IF NEW.Name IS NULL OR TRIM(NEW.Name) = '' THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'High', 'db_validator', 'Client: Name cannot be blank', 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Client: Name cannot be blank';
  END IF;

  IF NEW.Zip IS NOT NULL AND NEW.Zip <= 0 THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'Low', 'db_validator', CONCAT('Client: Invalid Zip: ', NEW.Zip), 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Client: Zip code must be a positive number';
  END IF;
END //
DELIMITER ;

DROP TRIGGER IF EXISTS validate_client_before_update;
DELIMITER //
CREATE TRIGGER validate_client_before_update
BEFORE UPDATE ON Client
FOR EACH ROW
BEGIN
  IF NEW.State IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM State WHERE State = NEW.State
  ) THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'High', 'db_validator', CONCAT('Client: Invalid State on update: ', NEW.State), 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Client: State does not exist in State table';
  END IF;

  IF NEW.City IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM City WHERE City = NEW.City
  ) THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'Medium', 'db_validator', CONCAT('Client: Invalid City on update: ', NEW.City), 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Client: City does not exist in City table';
  END IF;
END //
DELIMITER ;

DROP TRIGGER IF EXISTS validate_channels_before_insert;
DELIMITER //
CREATE TRIGGER validate_channels_before_insert
BEFORE INSERT ON Channels
FOR EACH ROW
BEGIN
  IF NEW.Channel_Name IS NULL OR TRIM(NEW.Channel_Name) = '' THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'High', 'db_validator', 'Channels: Channel_Name cannot be blank', 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Channels: Channel_Name cannot be blank';
  END IF;

  IF NEW.Host_Name IS NULL OR TRIM(NEW.Host_Name) = '' THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'High', 'db_validator', 'Channels: Host_Name cannot be blank', 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Channels: Host_Name cannot be blank';
  END IF;

  IF NEW.IP IS NOT NULL AND NEW.IP NOT LIKE '%.%.%.%' THEN
    INSERT INTO Errors (Station, Severity, Host_Name, Error_Str, email_sent, Date_Time)
    VALUES ('unknown', 'Medium', 'db_validator', CONCAT('Channels: Invalid IP format: ', NEW.IP), 0, NOW());
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Channels: Invalid IP address format';
  END IF;
END //
DELIMITER ;

SHOW TRIGGERS IN dc;
SELECT * FROM Errors WHERE Host_Name = 'db_validator' ORDER BY Date_Time DESC;
