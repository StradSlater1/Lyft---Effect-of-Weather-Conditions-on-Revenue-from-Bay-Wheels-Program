--San Francisco
UPDATE ordered_table
SET start_loc = 'SF'
WHERE (start_lat >= 37.683875) AND (start_lat <= 37.839343) AND (start_lng >= -122.559152) AND (start_lng <= -122.332408);

UPDATE ordered_table
SET end_loc = 'SF'
WHERE (end_lat >= 37.683875) AND (end_lat <= 37.839343) AND (end_lng >= -122.559152) AND (end_lng <= -122.332408);


--Berkerely
UPDATE ordered_table
SET start_loc = 'BRK'
WHERE (start_lat >= 37.840645) AND (start_lat <= 37.917605) AND (start_lng >= -122.357826) AND (start_lng < -122.172601);

UPDATE ordered_table
SET end_loc = 'BRK'
WHERE (end_lat >= 37.840645) AND (end_lat <= 37.917605) AND (end_lng >= -122.357826) AND (end_lng < -122.172601);


--Oakland
UPDATE ordered_table
SET start_loc = 'OKL'
WHERE (start_lat >= 37.745146) AND (start_lat <= 37.840645) AND (start_lng >= -122.346438) AND (start_lng <= -122.161607);

UPDATE ordered_table
SET end_loc = 'OKL'
WHERE (end_lat >= 37.745146) AND (end_lat <= 37.840645) AND (end_lng >= -122.346438) AND (end_lng <= -122.161607);


--San Jose
UPDATE ordered_table
SET start_loc = 'SJ'
WHERE (start_lat >= 37.194127) AND (start_lat <= 37.450768) AND (start_lng >= -122.080794) AND (start_lng <=  -121.707010);

UPDATE ordered_table
SET end_loc = 'SJ'
WHERE (end_lat >= 37.194127) AND (end_lat <= 37.450768) AND (end_lng >= -122.080794) AND (end_lng <=  -121.707010);