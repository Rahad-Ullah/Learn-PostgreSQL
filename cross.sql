CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);


CREATE TABLE departments(
    dept_id INT,
    dept_name VARCHAR(50)
);


-- insert simple data
INSERT INTO employees (emp_id, emp_name, dept_id)
    VALUES (1, 'John Bow', 102);


INSERT INTO departments (dept_id, dept_name)
    VALUES (102, 'Marketing');



-- cross join
SELECT * FROM employees
    CROSS JOIN departments;