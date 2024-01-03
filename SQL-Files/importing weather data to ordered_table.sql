--SF--
UPDATE ordered_table
SET
	start_temp = sfw."Temperature",
	start_condition = sfw."Condition",
	start_wind = sfw."Wind",
	start_wind_direction = sfw."Wind Direction",
	start_humidity = sfw."Humidity",
	start_barometer = sfw."Barometer",
	start_visibility = sfw."Visibility"
FROM "San_Francisco_weather" sfw
WHERE 	
	ordered_table.start_loc = 'SF' AND
	ordered_table.start_date_clean = sfw."Date" AND
	ordered_table.start_time_round = sfw."time_round";
	
UPDATE ordered_table
SET
	end_temp = sfw."Temperature",
	end_condition = sfw."Condition",
	end_wind = sfw."Wind",
	end_wind_direction = sfw."Wind Direction",
	end_humidity = sfw."Humidity",
	end_barometer = sfw."Barometer",
	end_visibility = sfw."Visibility"
FROM "San_Francisco_weather" sfw
WHERE 	
	ordered_table.end_loc = 'SF' AND
	ordered_table.end_date_clean = sfw."Date" AND
	ordered_table.end_time_round = sfw."time_round";
	
--SJ--
UPDATE ordered_table
SET
	start_temp = sjw."Temperature",
	start_condition = sjw."Condition",
	start_wind = sjw."Wind",
	start_wind_direction = sjw."Wind Direction",
	start_humidity = sjw."Humidity",
	start_barometer = sjw."Barometer",
	start_visibility = sjw."Visibility"
FROM "San_Jose_weather" sjw
WHERE 	
	ordered_table.start_loc = 'SJ' AND
	ordered_table.start_date_clean = sjw."Date" AND
	ordered_table.start_time_round = sjw."time_round";
	
UPDATE ordered_table
SET
	end_temp = sjw."Temperature",
	end_condition = sjw."Condition",
	end_wind = sjw."Wind",
	end_wind_direction = sjw."Wind Direction",
	end_humidity = sjw."Humidity",
	end_barometer = sjw."Barometer",
	end_visibility = sjw."Visibility"
FROM "San_Jose_weather" sjw
WHERE 	
	ordered_table.end_loc = 'SJ' AND
	ordered_table.end_date_clean = sjw."Date" AND
	ordered_table.end_time_round = sjw."time_round";
	
	
--BRK--
UPDATE ordered_table
SET
	start_temp = brkw."Temperature",
	start_condition = brkw."Condition",
	start_wind = brkw."Wind",
	start_wind_direction = brkw."Wind Direction",
	start_humidity = brkw."Humidity",
	start_barometer = brkw."Barometer",
	start_visibility = brkw."Visibility"
FROM "Berkeley_weather" brkw
WHERE 	
	ordered_table.start_loc = 'BRK' AND
	ordered_table.start_date_clean = brkw."Date" AND
	ordered_table.start_time_round = brkw."time_round";
	
UPDATE ordered_table
SET
	end_temp = brkw."Temperature",
	end_condition = brkw."Condition",
	end_wind = brkw."Wind",
	end_wind_direction = brkw."Wind Direction",
	end_humidity = brkw."Humidity",
	end_barometer = brkw."Barometer",
	end_visibility = brkw."Visibility"
FROM "Berkeley_weather" brkw
WHERE 	
	ordered_table.end_loc = 'BRK' AND
	ordered_table.end_date_clean = brkw."Date" AND
	ordered_table.end_time_round = brkw."time_round";

	
--OKL--
UPDATE ordered_table
SET
	start_temp = oklw."Temperature",
	start_condition = oklw."Condition",
	start_wind = oklw."Wind",
	start_wind_direction = oklw."Wind Direction",
	start_humidity = oklw."Humidity",
	start_barometer = oklw."Barometer",
	start_visibility = oklw."Visibility"
FROM "Oakland_weather" oklw
WHERE 	
	ordered_table.start_loc = 'OKL' AND
	ordered_table.start_date_clean = oklw."Date" AND
	ordered_table.start_time_round = oklw."time_round";
	
UPDATE ordered_table
SET
	end_temp = oklw."Temperature",
	end_condition = oklw."Condition",
	end_wind = oklw."Wind",
	end_wind_direction = oklw."Wind Direction",
	end_humidity = oklw."Humidity",
	end_barometer = oklw."Barometer",
	end_visibility = oklw."Visibility"
FROM "Oakland_weather" oklw
WHERE 	
	ordered_table.end_loc = 'OKL' AND
	ordered_table.end_date_clean = oklw."Date" AND
	ordered_table.end_time_round = oklw."time_round";