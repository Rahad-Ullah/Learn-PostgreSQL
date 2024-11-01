CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);



-- insert into students table
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
    ('John', 'Doe', 20, 'A', 'Mathematics', 'john.doe@example.com', '2003-04-15', 'O+', 'USA'),
    ('Jane', 'Smith', 19, 'B', 'Physics', 'jane.smith@example.com', '2004-06-10', 'A+', 'Canada'),
    ('Michael', 'Johnson', 21, 'C', 'Chemistry', 'michael.j@example.com', '2002-01-23', 'B+', 'UK'),
    ('Emily', 'Davis', 18, 'A', 'Biology', 'emily.d@example.com', '2005-09-12', 'AB-', 'Australia'),
    ('Chris', 'Lee', 22, 'B', 'History', 'chris.lee@example.com', '2001-12-19', 'O-', 'USA'),
    ('Sarah', 'Wilson', 20, 'A', 'Computer Science', 'sarah.w@example.com', '2003-03-07', 'B-', 'New Zealand'),
    ('David', 'Martinez', 23, 'C', 'Mathematics', 'david.m@example.com', '2000-08-29', 'A-', 'Spain'),
    ('Sophia', 'Garcia', 19, 'B', 'Physics', 'sophia.g@example.com', '2004-11-04', 'AB+', 'Mexico'),
    ('Daniel', 'Brown', 21, 'A', 'Chemistry', 'daniel.b@example.com', '2002-02-18', 'O+', 'France'),
    ('Emma', 'Miller', 18, 'A', 'Biology', 'emma.m@example.com', '2005-05-25', 'A+', 'Germany');


-- select column from table with alias
SELECT email as "Student Email", age as "Student Age" FROM students


-- select data with sorting
SELECT * FROM students ORDER BY first_name ASC


-- select distinct/unique data only
SELECT DISTINCT country FROM students;


-- select data with filtering
SELECT * FROM students
    WHERE (country = 'USA' OR country = 'Australia') AND age >= 20;


-- select data with UPPER CASE of a specific column
SELECT upper(first_name) as FIRST_NAME_UPPER, * FROM students


-- select data with concatenation
SELECT concat(first_name, ' ', last_name) FROM students


-- select length of a column data
SELECT length(first_name) FROM students


-- select data by using aggregate function
SELECT sum(age) FROM students


-- select name with max length by aggregate function
SELECT max(length(first_name)) FROM students

-- select data which country is not USA
SELECT * FROM students
    WHERE NOT country = 'USA'


-- filter data with not keyword
SELECT * FROM students
    WHERE email IS NOT NULL


-- select data with default value where value is NULL
SELECT first_name, age, COALESCE(email, 'Email is not provided') as "Email" FROM students


-- select data of some countries with OR operator
SELECT * FROM students
    WHERE country = 'USA' OR country = 'UK' OR country = 'Canada'


-- select data of some countries with IN operator
SELECT * FROM students
    WHERE country IN('USA', 'UK', 'Canada')


-- select data in a range using BETWEEN keyword
SELECT * FROM students
    WHERE dob BETWEEN '2003-01-01' AND '2005-01-01'


-- filter data with LIKE keyword (Case sensitive)
SELECT * FROM students
    WHERE first_name LIKE 'D%'


-- filter data with ILIKE keyword (Case insensitive)
SELECT * FROM students
    WHERE first_name ILIKE 'd%'


-- pagination using LIMIT and OFFSET
SELECT * FROM students
    LIMIT 5 OFFSET 5 * 0;
SELECT * FROM students
    LIMIT 5 OFFSET 5 * 1;
SELECT * FROM students
    LIMIT 5 OFFSET 5 * 2;


-- delete record from table
DELETE FROM students
    WHERE grade = 'C' AND country = 'USA';


-- update data
UPDATE students
    SET email = 'default@gmail.com', age = 25
    WHERE student_id = 9
