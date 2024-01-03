Alter table ordered_table
add column start_time_round int,
add column end_time_round int;

UPDATE ordered_table
SET start_time_round = (start_time_clean / 100) * 100
WHERE start_time_clean % 100 < 30;

UPDATE ordered_table
SET start_time_round = ((start_time_clean / 100) + 1) * 100
WHERE start_time_clean % 100 >= 30;

UPDATE ordered_table
SET end_time_round = (end_time_clean / 100) * 100
WHERE end_time_clean % 100 < 30;

UPDATE ordered_table
SET end_time_round = ((start_time_clean / 100) + 1) * 100
WHERE end_time_clean % 100 >= 30;