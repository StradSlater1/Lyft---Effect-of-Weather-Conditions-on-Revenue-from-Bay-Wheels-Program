--SF--
Alter table "San_Francisco_weather"
add column time_round int;

UPDATE "San_Francisco_weather"
SET time_round = (time_clean / 100) * 100
WHERE time_clean % 100 < 30;

UPDATE "San_Francisco_weather"
SET time_round = ((time_clean / 100) + 1) * 100
WHERE time_clean % 100 >= 30;


--SJ--
Alter table "San_Jose_weather"
add column time_round int;

UPDATE "San_Jose_weather"
SET time_round = (time_clean / 100) * 100
WHERE time_clean % 100 < 30;

UPDATE "San_Jose_weather"
SET time_round = ((time_clean / 100) + 1) * 100
WHERE time_clean % 100 >= 30;


--BRK--
Alter table "Berkeley_weather"
add column time_round int;

UPDATE "Berkeley_weather"
SET time_round = (time_clean / 100) * 100
WHERE time_clean % 100 < 30;

UPDATE "Berkeley_weather"
SET time_round = ((time_clean / 100) + 1) * 100
WHERE time_clean % 100 >= 30;


--OKL--
Alter table "Oakland_weather"
add column time_round int;

UPDATE "Oakland_weather"
SET time_round = (time_clean / 100) * 100
WHERE time_clean % 100 < 30;

UPDATE "Oakland_weather"
SET time_round = ((time_clean / 100) + 1) * 100
WHERE time_clean % 100 >= 30;
