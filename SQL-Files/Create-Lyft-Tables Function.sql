CREATE OR REPLACE FUNCTION create_tables()
RETURNS VOID AS $$
DECLARE
    year INT := 2020;
	month INT := 1;
BEGIN
    
    WHILE year <= 2023 LOOP
		WHILE month <= 12 LOOP
        	EXECUTE 'CREATE TABLE "' || year || '_' || month || '" (
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
			month := month + 1;
		END LOOP;
		month := 1;
		year := year + 1;
	END LOOP;
END;
$$ LANGUAGE plpgsql;


SELECT create_tables()


