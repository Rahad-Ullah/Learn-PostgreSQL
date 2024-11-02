-- show timezone
SHOW TIMEZONE;

-- get utc timestamp
SELECT now()


CREATE TABLE timeZ 
    (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)

INSERT INTO timez
    VALUES(
        '2024-01-12 10:45:00',
        '2024-01-12 10:45:00'
    )


-- get today's date
SELECT CURRENT_DATE;
SELECT now()::DATE;    -- alternative way

-- get today's time with time zone
SELECT current_time
SELECT now()::TIME;  -- alternative way


-- select date with custom formatting
SELECT to_char(now(), 'dd/mm/yyyy')

-- select date with with custom interval
SELECT CURRENT_DATE - INTERVAL '1 year 2 months'

-- select age in numbers
SELECT age(CURRENT_DATE, '2004-02-05')



SELECT *, age(CURRENT_DATE, dob) FROM students


-- extract something from a date
SELECT extract(YEAR FROM '2024-01-25'::DATE)

-- type casting into boolean
SELECT 'n'::boolean


