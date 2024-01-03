CREATE OR REPLACE FUNCTION combine_tables()
RETURNS VOID AS $$
DECLARE
    month INT := 1;
	year INT := 2021;
BEGIN
	EXECUTE 'CREATE TABLE final_table (
            	ride_id text COLLATE pg_catalog."default",
    			rideable_type text COLLATE pg_catalog."default",
    			started_at text COLLATE pg_catalog."default",
    			ended_at text COLLATE pg_catalog."default",
    			start_station_name text COLLATE pg_catalog."default",
    			start_station_id text COLLATE pg_catalog."default",
    			end_station_name text COLLATE pg_catalog."default",
    			end_station_id text COLLATE pg_catalog."default",
    			start_lat double precision,
    			start_lng double precision,
    			end_lat double precision,
    			end_lng double precision,
    			member_casual text COLLATE pg_catalog."default"
        	)';
   WHILE year <= 2022 LOOP
		WHILE month <= 12 LOOP
        	EXECUTE 'INSERT INTO final_table SELECT * FROM "' || year || '_' || month || '"';
        	month := month + 1;
    	END LOOP;
		month := 1;
		year := year + 1;
	END LOOP;
END;
$$ LANGUAGE plpgsql;




SELECT combine_tables();

INSERT INTO final_table 
SELECT * FROM "2020_4"
UNION ALL
SELECT * FROM "2020_5"
UNION ALL
SELECT * FROM "2020_6"
UNION ALL
SELECT * FROM "2020_7"
UNION ALL
SELECT * FROM "2020_8"
UNION ALL
SELECT * FROM "2020_9"
UNION ALL
SELECT * FROM "2020_10"
UNION ALL
SELECT * FROM "2020_11"
UNION ALL
SELECT * FROM "2020_12"
UNION ALL
SELECT * FROM "2023_1"
UNION ALL
SELECT * FROM "2023_2"
UNION ALL
SELECT * FROM "2023_3"
UNION ALL
SELECT * FROM "2023_4"
UNION ALL
SELECT * FROM "2023_5"
UNION ALL
SELECT * FROM "2023_6"
UNION ALL
SELECT * FROM "2023_7"
UNION ALL
SELECT * FROM "2023_8"
UNION ALL
SELECT * FROM "2023_9"