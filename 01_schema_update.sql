-- 01_schema_update.sql
-- Purpose: Add DATETIME columns to TvVTT and RadioClips and populate them from TStamp VARCHAR strings.
-- Run this step BEFORE creating retention procedures.

USE `dc`;

-- 1. Update TvVTT Table
-- Add new DATETIME column if it doesn't exist
SET @exist := (SELECT COUNT(*) FROM information_schema.columns WHERE table_schema = 'dc' AND table_name = 'TvVTT' AND column_name = 'TStamp_dt');
SET @sql := IF(@exist = 0, 'ALTER TABLE TvVTT ADD COLUMN TStamp_dt DATETIME DEFAULT NULL AFTER TStamp', 'SELECT "Column already exists"');
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Populate the new column
UPDATE TvVTT 
SET TStamp_dt = STR_TO_DATE(TStamp, '%Y-%m-%d %H:%i:%s')
WHERE TStamp_dt IS NULL AND TStamp IS NOT NULL; 

-- Add Index for performance
SET @exist := (SELECT COUNT(*) FROM information_schema.statistics WHERE table_schema = 'dc' AND table_name = 'TvVTT' AND index_name = 'idx_TvVTT_TStamp_dt');
SET @sql := IF(@exist = 0, 'CREATE INDEX idx_TvVTT_TStamp_dt ON TvVTT(TStamp_dt)', 'SELECT "Index already exists"');
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


-- 2. Update RadioClips Table
-- Add new DATETIME column
SET @exist := (SELECT COUNT(*) FROM information_schema.columns WHERE table_schema = 'dc' AND table_name = 'RadioClips' AND column_name = 'TStamp_dt');
SET @sql := IF(@exist = 0, 'ALTER TABLE RadioClips ADD COLUMN TStamp_dt DATETIME DEFAULT NULL AFTER TStamp', 'SELECT "Column already exists"');
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Populate the new column
UPDATE RadioClips 
SET TStamp_dt = STR_TO_DATE(TStamp, '%Y-%m-%d %H:%i:%s')
WHERE TStamp_dt IS NULL AND TStamp IS NOT NULL;

-- Add Index
SET @exist := (SELECT COUNT(*) FROM information_schema.statistics WHERE table_schema = 'dc' AND table_name = 'RadioClips' AND index_name = 'idx_RadioClips_TStamp_dt');
SET @sql := IF(@exist = 0, 'CREATE INDEX idx_RadioClips_TStamp_dt ON RadioClips(TStamp_dt)', 'SELECT "Index already exists"');
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
