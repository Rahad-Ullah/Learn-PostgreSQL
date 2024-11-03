SELECT * FROM students


-- group by country and select count, average age
SELECT country, count(*), avg(age) FROM students
    GROUP BY country


-- group by country having average age getter than 20
SELECT country, avg(age) FROM students
    GROUP BY country
        HAVING avg(age) > 20


-- select students born in each year
SELECT extract(YEAR FROM dob) as birth_year, count(*)
    FROM students
    GROUP BY birth_year