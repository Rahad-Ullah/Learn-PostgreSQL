CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    salary NUMERIC NOT NULL,
    hire_date DATE NOT NULL
);



INSERT INTO employees (employee_name, department_name, salary, hire_date)
VALUES
    ('Alice Johnson', 'Finance', 55000, '2021-02-15'),
    ('Bob Smith', 'Marketing', 62000, '2019-06-10'),
    ('Charlie Davis', 'IT', 70000, '2020-03-20'),
    ('Diana Blake', 'Sales', 48000, '2022-07-05'),
    ('Evan Brown', 'Finance', 67000, '2018-09-12'),
    ('Fiona White', 'Human Resources', 53000, '2021-11-18'),
    ('George King', 'IT', 75000, '2020-01-10'),
    ('Hannah Hall', 'Sales', 46000, '2023-04-07'),
    ('Ian Green', 'Marketing', 59000, '2022-05-15'),
    ('Julia Knight', 'Finance', 71000, '2017-10-01'),
    ('Kevin Baker', 'Human Resources', 51000, '2021-06-30'),
    ('Laura Martin', 'IT', 78000, '2019-08-25'),
    ('Michael Clark', 'Sales', 47000, '2022-02-10'),
    ('Nina Adams', 'Finance', 68000, '2020-09-05'),
    ('Oscar Lee', 'Marketing', 62000, '2021-03-14'),
    ('Paula Collins', 'IT', 74000, '2022-12-19'),
    ('Quincy Reed', 'Human Resources', 52000, '2021-08-22'),
    ('Rachel Turner', 'Sales', 49000, '2023-01-17'),
    ('Sam Wilson', 'Finance', 65000, '2018-04-12'),
    ('Tina Brown', 'Marketing', 60000, '2019-11-26');


-- make a function to delete an employee
CREATE FUNCTION delete_emp(p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employees WHERE employee_id = p_emp_id;
$$



SELECT delete_emp(20)



-- procedure
CREATE Procedure remove_emp_by_id (p_emp_id INT)
LANGUAGE plpgsql
AS
$$  
    DECLARE
        test_var INT;
    BEGIN
        SELECT employee_id INTO test_var FROM employees WHERE employee_id = p_emp_id;
        DELETE FROM employees WHERE employee_id = test_var;

        RAISE NOTICE 'Employee removed successfully';
    END;
$$;

CALL remove_emp_by_id (19)