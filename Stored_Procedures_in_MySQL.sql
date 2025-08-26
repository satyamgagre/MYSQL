USE startersql;

-- =======================================================
-- 📌 1. Create Procedure: select_users
-- This procedure simply returns all users
-- =======================================================
DROP PROCEDURE IF EXISTS select_users;   -- Always drop before creating

DELIMITER $$
CREATE PROCEDURE select_users()
BEGIN
    SELECT * FROM users;
END $$
DELIMITER ;


-- =======================================================
-- 📌 2. Create Procedure: AddUsers
-- This procedure inserts a new user into the users table
-- Then displays all users
-- NOTE:
--  - Use VARCHAR for gender parameter (ENUM not allowed in params)
--  - ENUM restriction should be in table definition
-- =======================================================
DROP PROCEDURE IF EXISTS AddUsers;       -- Always drop before creating

DELIMITER $$
CREATE PROCEDURE AddUsers(
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_gender VARCHAR(10),   -- 'Male', 'Female', 'Other'
    IN p_dob DATE,
    IN p_salary INT
)
BEGIN
    INSERT INTO users(name, email, gender, date_of_birth, salary)
    VALUES(p_name, p_email, p_gender, p_dob, p_salary);

    -- Show updated table
    SELECT * FROM users;
END $$
DELIMITER ;


-- =======================================================
-- 📌 3. Call Stored Procedures
-- =======================================================

-- Insert a user
CALL AddUsers(
    'SATYA',
    'SATYA@example.com',
    'Male',
    '1995-05-10',
    75000
);

-- Show all users (alternative way)
CALL select_users();


-- =======================================================
-- 📌 4. View Procedures in current database
-- =======================================================
SHOW PROCEDURE STATUS WHERE Db = 'startersql';
