USE startersql;

-- =======================================================
-- 📌 1. Create a Log Table (to store trigger history)
-- =======================================================
DROP TABLE IF EXISTS user_log;

CREATE TABLE user_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,                       -- ID of the inserted user
    name VARCHAR(100),                 -- Name of the inserted user
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Time of insert
);


-- =======================================================
-- 📌 2. Create Trigger
-- This trigger runs AFTER a new row is inserted into `users`
-- and logs the user_id + name into user_log
-- =======================================================
DROP TRIGGER IF EXISTS after_user_insert;

DELIMITER $$
CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO user_log (user_id, name)
    VALUES (NEW.id, NEW.name);   -- NEW = values from the newly inserted row
END $$
DELIMITER ;


-- =======================================================
-- 📌 3. Test the Trigger
-- Insert a new user → it should also insert a log entry
-- =======================================================
INSERT INTO users (name, email, gender, date_of_birth, salary)
VALUES('satyamm', 'satyamm@gmail.com', 'Male', '1990-12-30', 80000);


-- =======================================================
-- 📌 4. View the Log Table
-- You should see the inserted user details automatically logged
-- =======================================================
SELECT * FROM user_log;


-- =======================================================
-- 📌 5. Drop the Trigger (if needed)
-- =======================================================
-- DROP TRIGGER IF EXISTS after_user_insert;
