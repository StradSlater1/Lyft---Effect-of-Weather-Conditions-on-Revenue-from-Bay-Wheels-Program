ALTER TABLE ordered_table
ADD COLUMN start_year INT,
ADD COLUMN start_month INT,
ADD COLUMN start_day INT,
ADD COLUMN end_year INT,
ADD COLUMN end_month INT,
ADD COLUMN end_day INT,
ADD COLUMN start_hour INT,
ADD COLUMN start_minute INT,
ADD COLUMN start_second INT,
ADD COLUMN end_hour INT,
ADD COLUMN end_minute INT,
ADD COLUMN end_second INT;

UPDATE ordered_table
SET
	start_year = CAST(SUBSTRING(start_date, 1, 4) AS INT),
	start_month = CAST(SUBSTRING(start_date, 6, 2) AS INT),
	start_day = CAST(SUBSTRING(start_date, 9, 2) AS INT),
	end_year = CAST(SUBSTRING(end_date, 1, 4) AS INT),
	end_month = CAST(SUBSTRING(end_date, 6, 2) AS INT),
	end_day = CAST(SUBSTRING(end_date, 9, 2) AS INT),
	start_hour = CAST(SUBSTRING(start_time, 1, 2) AS INT),
	start_minute = CAST(SUBSTRING(start_time, 4, 2) AS INT),
	start_second = CAST(SUBSTRING(start_time, 7, 2) AS INT),
	end_hour = CAST(SUBSTRING(end_time, 1, 2) AS INT),
	end_minute = CAST(SUBSTRING(end_time, 4, 2) AS INT),
	end_second = CAST(SUBSTRING(end_time, 7, 2) AS INT);

	