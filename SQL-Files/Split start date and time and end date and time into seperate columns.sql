ALTER TABLE ordered_table
ADD COLUMN start_date TEXT,
ADD COLUMN start_time TEXT,
ADD COLUMN end_date TEXT,
ADD COLUMN end_time TEXT;

UPDATE ordered_table
SET 
	start_date = SUBSTRING(started_at, 1, POSITION(' ' in started_at) - 1),
	start_time = SUBSTRING(started_at, POSITION(' ' in started_at) + 1, LENGTH(started_at)-POSITION(' ' in started_at)),
	end_date = SUBSTRING(ended_at, 1, POSITION(' ' in ended_at) - 1),
	end_time = SUBSTRING(ended_at, POSITION(' ' in ended_at) + 1, LENGTH(ended_at)-POSITION(' ' in ended_at))