-- inner join
SELECT * FROM post as p
    JOIN "user" as u ON p.user_id = u.id


-- left join
SELECT * FROM post as p
    LEFT JOIN "user" as u ON p.user_id = u.id


-- right join
SELECT * FROM post as p
    RIGHT JOIN "user" as u ON p.user_id = u.id



SELECT * FROM post as p
    FULL JOIN "user" as u ON p.user_id = u.id