ALTER TABLE ordered_table
ADD Column start_date_clean int,
ADD Column end_date_clean int;

UPDATE ordered_table
SET start_date_clean = CAST(REPLACE(start_date, '-', '') as INT);

UPDATE ordered_table
SET end_date_clean = CAST(REPLACE(end_date, '-', '') AS INT);
