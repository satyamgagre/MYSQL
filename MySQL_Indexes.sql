USE startersql;

SHOW indexes FROM users;

-- Creating a Single-Column Index
CREATE INDEX idx_email ON users(email);

-- What this does:
-- Creates an index named idx_email
-- Improves performance of queries like:

SELECT * FROM users WHERE email = 'example@example.com'; 

-- Creating a Multi-Column Index
CREATE INDEX idx_gender_salary ON users(gender, salary);

-- Usage Example:
SELECT * FROM users
WHERE gender = 'Female' AND salary > 70000;

-- Dropping an Index

DROP INDEX idx_email ON users;