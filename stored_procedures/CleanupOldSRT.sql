DELIMITER $$

CREATE PROCEDURE CleanupOldSRT(
    IN retention_days INT
)
BEGIN
    DECLARE deleted_count INT DEFAULT 0;
    
    -- Showing what will be deleted
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
END$$

DELIMITER ;
