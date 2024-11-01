-- Active: 1729469441845@@127.0.0.1@5432@ph@public
SELECT * FROM person2;

ALTER TABLE person2
    ADD COLUMN email VARCHAR(25) NOT NULL DEFAULT 'default@gmail.com'

ALTER TABLE person2
    DROP COLUMN email

INSERT INTO person2 VALUES (7, 'test2', 40, 'test2@gmail.com')

ALTER TABLE person2
    RENAME COLUMN age to user_age

ALTER TABLE person2
    ALTER COLUMN user_name TYPE VARCHAR(50)

ALTER TABLE person2
    ALTER COLUMN user_age SET NOT NULL

ALTER TABLE person2
    ALTER COLUMN user_age DROP NOT NULL


-- adding constraint on a specific column
ALTER TABLE person2
    ADD constraint unique_person2_user_age UNIQUE(user_age)


-- remove a constraint
ALTER TABLE person2
    DROP constraint unique_person2_user_age


-- delete table parmanently
DROP TABLE person3


-- delete table data only, not table stucture
TRUNCATE TABLE person3
