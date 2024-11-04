-- create sample table
CREATE TABLE my_users (
    user_name VARCHAR(50),
    email VARCHAR(100)
);

-- insert sample data
INSERT INTO my_users
    VALUES
        ('Mezba', 'mezba@gmail.com'),
        ('Mir', 'mir@gmail.com');


-- create sample table for audit log
CREATE TABLE deleted_users_audit (
    deleted_user_name VARCHAR(50),
    deleted_at TIMESTAMP
);


-- create function for trigger
CREATE OR REPLACE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
        INSERT INTO deleted_users_audit VALUES (OLD.user_name, now());
        RAISE NOTICE 'Deleted user audit log created';
        RETURN OLD;
    END
$$;


-- create trigger
CREATE Trigger save_deleted_users_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();


-- delete data for testing trigger
DELETE FROM my_users WHERE user_name = 'Mir';