ALTER TABLE ordered_table
ADD Column start_time_clean int,
ADD Column end_time_clean int

UPDATE ordered_table
SET start_time_clean = CAST(LEFT(REPLACE(start_time, ':', ''), LENGTH(REPLACE(start_time, ':', '')) - 2) AS INT)

UPDATE ordered_table
SET end_time_clean = CAST(LEFT(REPLACE(end_time, ':', ''), LENGTH(REPLACE(end_time, ':', '')) - 2) AS INT)
