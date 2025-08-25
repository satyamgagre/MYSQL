USE startersql;

-- 1. Filter Rows (only salary > 70000)
CREATE VIEW rich_users AS
SELECT id, name, salary
FROM users
WHERE salary > 70000;

-- 2. Select Only Some Columns (contacts)
CREATE VIEW user_contacts AS
SELECT name, email
FROM users;

-- 3. Simplify a Query (ordered by salary)
CREATE VIEW top_users AS
SELECT id, name, salary
FROM users
ORDER BY salary DESC;

-- 4. Updatable View (salary < 40000)
CREATE VIEW low_salary_users AS
SELECT id, name, salary
FROM users
WHERE salary < 40000;

-- ======================
-- TESTING THE VIEWS
-- ======================

-- Show rich users
SELECT * FROM rich_users;

-- Show user contacts
SELECT * FROM user_contacts;

-- Show top users
SELECT * FROM top_users;

-- Show and update low salary users
SELECT * FROM low_salary_users;
UPDATE low_salary_users SET salary = 45000 WHERE id = 2;  -- updates main table
SELECT * FROM users;  -- verify change
