--SF--
ALTER TABLE "San_Francisco_weather"
ADD COLUMN "AM/PM" text

UPDATE "San_Francisco_weather"
SET "AM/PM" = RIGHT("Time", 2)

ALTER TABLE "San_Francisco_weather"
ADD COLUMN time_clean int

UPDATE "San_Francisco_weather"
SET time_clean = CAST(REGEXP_REPLACE("Time", '\D', '', 'g') AS INTEGER);

UPDATE "San_Francisco_weather"
SET time_clean = time_clean + 1200
where "AM/PM" = 'PM'

UPDATE "San_Francisco_weather"
SET time_clean = time_clean - 1200
where "AM/PM" = 'PM' and time_clean >= 2400

UPDATE "San_Francisco_weather"
SET time_clean = time_clean - 1200
where "AM/PM" = 'AM' and LEFT("Time", 2) = '12'


--SJ--
ALTER TABLE "San_Jose_weather"
ADD COLUMN "AM/PM" text;

UPDATE "San_Jose_weather"
SET "AM/PM" = RIGHT("Time", 2);

ALTER TABLE "San_Jose_weather"
ADD COLUMN time_clean int;

UPDATE "San_Jose_weather"
SET time_clean = CAST(REGEXP_REPLACE("Time", '\D', '', 'g') AS INTEGER);

UPDATE "San_Jose_weather"
SET time_clean = time_clean + 1200
where "AM/PM" = 'PM';

UPDATE "San_Jose_weather"
SET time_clean = time_clean - 1200
where "AM/PM" = 'PM' and time_clean >= 2400;

UPDATE "San_Jose_weather"
SET time_clean = time_clean - 1200
where "AM/PM" = 'AM' and LEFT("Time", 2) = '12';

--BRK--
ALTER TABLE "Berkeley_weather"
ADD COLUMN "AM/PM" text;

UPDATE "Berkeley_weather"
SET "AM/PM" = RIGHT("Time", 2);

ALTER TABLE "Berkeley_weather"
ADD COLUMN time_clean int;

UPDATE "Berkeley_weather"
SET time_clean = CAST(REGEXP_REPLACE("Time", '\D', '', 'g') AS INTEGER);

UPDATE "Berkeley_weather"
SET time_clean = time_clean + 1200
where "AM/PM" = 'PM';

UPDATE "Berkeley_weather"
SET time_clean = time_clean - 1200
where "AM/PM" = 'PM' and time_clean >= 2400;

UPDATE "Berkeley_weather"
SET time_clean = time_clean - 1200
where "AM/PM" = 'AM' and LEFT("Time", 2) = '12';

--OLK--
ALTER TABLE "Oakland_weather"
ADD COLUMN "AM/PM" text;

UPDATE "Oakland_weather"
SET "AM/PM" = RIGHT("Time", 2);

ALTER TABLE "Oakland_weather"
ADD COLUMN time_clean int;

UPDATE "Oakland_weather"
SET time_clean = CAST(REGEXP_REPLACE("Time", '\D', '', 'g') AS INTEGER);

UPDATE "Oakland_weather"
SET time_clean = time_clean + 1200
where "AM/PM" = 'PM';

UPDATE "Oakland_weather"
SET time_clean = time_clean - 1200
where "AM/PM" = 'PM' and time_clean >= 2400;

UPDATE "Oakland_weather"
SET time_clean = time_clean - 1200
where "AM/PM" = 'AM' and LEFT("Time", 2) = '12';
