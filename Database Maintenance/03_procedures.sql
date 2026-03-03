-- 03_cleanup_procedures.sql
-- Purpose: Create stored procedures to delete records older than 90 days and log the activity.


USE `dc`;

DELIMITER //

-- Procedure for TvVTT Cleanup
DROP PROCEDURE IF EXISTS Cleanup_TvVTT_90Days//
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE Cleanup_TvVTT_90Days()
BEGIN
    DECLARE deleted_count INT DEFAULT 0;
    DECLARE start_time TIMESTAMP;
    DECLARE end_time TIMESTAMP;
    DECLARE exec_time INT;
    
    SET start_time = CURRENT_TIMESTAMP();
    
    -- Delete records older than 90 days
    -- Utilizing the new indexed TStamp_dt column
    DELETE FROM TvVTT 
    WHERE TStamp_dt < DATE_SUB(NOW(), INTERVAL 90 DAY)
    LIMIT 10000; -- Limit to prevent locking large table for too long
    
    SET deleted_count = ROW_COUNT();
    SET end_time = CURRENT_TIMESTAMP();
    SET exec_time = TIMESTAMPDIFF(MICROSECOND, start_time, end_time) / 1000;
    
    -- Log the result
    INSERT INTO auto_delete_logs (data_type, deleted_count, execution_time_ms, status)
    VALUES ('TvVTT', deleted_count, exec_time, 'success');
    
    -- If we hit the limit, log a note (optional, or rely on next run)
END//


-- Procedure for RadioClips Cleanup
DROP PROCEDURE IF EXISTS Cleanup_RadioClips_90Days//
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE Cleanup_RadioClips_90Days()
BEGIN
    DECLARE deleted_count INT DEFAULT 0;
    DECLARE start_time TIMESTAMP;
    DECLARE end_time TIMESTAMP;
    DECLARE exec_time INT;
    
    SET start_time = CURRENT_TIMESTAMP();
    
    DELETE FROM RadioClips 
    WHERE TStamp_dt < DATE_SUB(NOW(), INTERVAL 90 DAY)
    LIMIT 10000;
    
    SET deleted_count = ROW_COUNT();
    SET end_time = CURRENT_TIMESTAMP();
    SET exec_time = TIMESTAMPDIFF(MICROSECOND, start_time, end_time) / 1000;
    
    INSERT INTO auto_delete_logs (data_type, deleted_count, execution_time_ms, status)
    VALUES ('RadioClips', deleted_count, exec_time, 'success');
END//


-- Procedure for SRT Cleanup (SRT, SRT21, SRT21b)
DROP PROCEDURE IF EXISTS Cleanup_All_SRT_90Days//
CREATE DEFINER=`henry_VPN`@`10.8.0.%` PROCEDURE Cleanup_All_SRT_90Days()
BEGIN
    DECLARE deleted_count INT DEFAULT 0;
    DECLARE start_time TIMESTAMP;
    DECLARE exec_time INT;
    
    SET start_time = CURRENT_TIMESTAMP();
    
    -- SRT Table
    DELETE FROM SRT WHERE Created_at < DATE_SUB(NOW(), INTERVAL 90 DAY) LIMIT 5000;
    SET deleted_count = ROW_COUNT();
    INSERT INTO auto_delete_logs (data_type, deleted_count, status)
    VALUES ('SRT', deleted_count, 'success');
    
    -- SRT21 Table
    DELETE FROM SRT21 WHERE Created_at < DATE_SUB(NOW(), INTERVAL 90 DAY) LIMIT 5000;
    SET deleted_count = ROW_COUNT();
    INSERT INTO auto_delete_logs (data_type, deleted_count, status)
    VALUES ('SRT21', deleted_count, 'success');
    
    -- SRT21b Table
    DELETE FROM SRT21b WHERE Created_at < DATE_SUB(NOW(), INTERVAL 90 DAY) LIMIT 5000;
    SET deleted_count = ROW_COUNT();
    INSERT INTO auto_delete_logs (data_type, deleted_count, status)
    VALUES ('SRT21b', deleted_count, 'success');

END//

DELIMITER ;
