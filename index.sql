EXPLAIN ANALYSE
SELECT * FROM employees WHERE employee_name = 'Paula Collins'


-- create index on employee name
CREATE INDEX idx_employee_name
ON employees (employee_name)