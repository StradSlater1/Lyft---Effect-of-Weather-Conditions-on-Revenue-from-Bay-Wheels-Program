DELETE FROM ordered_table
WHERE ride_id IS NULL OR
rideable_type IS NULL OR
started_at IS NULL OR
ended_at IS NULL OR
start_station_name IS NULL OR
end_station_name IS NULL OR
start_lat IS NULL OR
start_lng IS NULL OR
end_lat IS NULL OR
end_lng IS NULL OR
member_casual IS NULL;