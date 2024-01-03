ALTER TABLE ordered_table
ADD COLUMN amount_minutes INT;

UPDATE ordered_table
	SET amount_minutes = CEILING(CAST(((((end_hour*60) + end_minute)*60 + end_second) - (((start_hour*60) + start_minute)*60 + start_second)) as FLOAT)/60)
WHERE start_year = end_year AND start_month = end_month AND start_day = end_day;

UPDATE ordered_table
	SET amount_minutes = CEILING(CAST(((((((end_day * 24) + end_hour) * 60) + end_minute) * 60) + end_second) - ((((((start_day * 24) + start_hour) * 60) + start_minute) * 60) + start_second) as FLOAT)/60)
WHERE start_year = end_year AND start_month = end_month AND start_day <> end_day;

DELETE FROM ordered_table
WHERE amount_minutes IS NULL;


