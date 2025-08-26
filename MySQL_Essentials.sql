USE startersql;

-- =======================================================
-- 1. Logical Operators
-- =======================================================
-- AND → all conditions must be true
SELECT * FROM users WHERE salary > 50000 AND gender = 'Male';

-- OR → at least one condition must be true
SELECT * FROM users WHERE gender = 'Male' OR gender = 'Other';

-- NOT → reverses a condition
SELECT * FROM users WHERE NOT gender = 'Female';


-- =======================================================
-- 2. Add a Column to Existing Table
-- =======================================================
ALTER TABLE users
ADD COLUMN city VARCHAR(100);   -- Adds new column 'city'


-- =======================================================
-- 3. Wildcard Operators with LIKE
-- =======================================================
-- %  → any sequence of characters
SELECT * FROM users WHERE name LIKE 'A%';     -- names starting with A

-- _  → single character
SELECT * FROM users WHERE name LIKE '_a%';    -- second letter is 'a'
SELECT * FROM users WHERE name LIKE '_a_y%';  -- second letter a, later 'y'


-- =======================================================
-- 4. LIMIT with OFFSET
-- =======================================================
-- Skip first 10 rows, return next 5
SELECT * FROM users
ORDER BY id
LIMIT 5 OFFSET 10;

-- Alternative syntax (LIMIT offset, count)
SELECT * FROM users
ORDER BY id
LIMIT 10, 5;


-- =======================================================
-- 5. DISTINCT Keyword
-- =======================================================
SELECT DISTINCT gender FROM users;
-- Returns unique gender values only


-- =======================================================
-- 6. TRUNCATE Keyword
-- =======================================================
-- Removes all rows but keeps table structure
TRUNCATE TABLE users;

-- Notes:
-- ✔ Faster than DELETE FROM users
-- ✘ Cannot be rolled back (unless using transactions)


-- =======================================================
-- 7. CHANGE vs MODIFY Column
-- =======================================================
-- CHANGE → Rename + change datatype
ALTER TABLE users
CHANGE COLUMN city location VARCHAR(150);

-- MODIFY → Only change datatype (column name stays same)
ALTER TABLE users
MODIFY COLUMN salary BIGINT;
