USE startersql;
-- Constraints
--  Constraints in MySQL are rules applied to table columns to ensure the accuracy, validity, and integrity of the data
-- 1. UNIQUE Constraint
-- Example (during table creation): 
 CREATE TABLE users (
 	id INT PRIMARY KEY,
     email VARCHAR(100) UNIQUE
 );

-- Add UNIQUE using ALTER TABLE:
ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE(email);

-- 2. NOT NULL Constraint
-- EXAMPLE;
 CREATE TABLE users (
 	id INT PRIMARY KEY,
 	name VARCHAR(100) NOT NULL
); 

-- Change an existing column to NOT NULL:
ALTER TABLE users
MODIFY COLUMN name VARCHAR(100) NOT NULL;

-- Make a column nullable again:
ALTER TABLE users
MODIFY COLUMN name VARCHAR(100) NULL;

-- 3. CHECK Constraint
-- Example: Allow only dates of birth after Jan 1, 2000
ALTER TABLE users
ADD CONSTRAINT chk_dob CHECK (date_of_birth < '2003-01-01');

-- 4. DEFAULT Constraint
-- Example:
CREATE TABLE users (
	id INT PRIMARY KEY,
	is_active BOOLEAN DEFAULT TRUE
);

-- Add DEFAULT using ALTER TABLE:
ALTER TABLE users
ALTER COLUMN iS_active SET DEFAULT TRUE;

-- 5. PRIMARY KEY Constraint
-- Example:
  CREATE TABLE users (
	id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Composite Primary Key (multiple columns)
CREATE TABLE orders (
	order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY(order_id, product_id)  -- Composite PK
);

-- Primary Key with AUTO_INCREMENT
CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
	email VARCHAR(100)
);

-- Add later with ALTER TABLE:
ALTER TABLE users
ADD PRIMARY KEY(id);

-- 6. AUTO_INCREMENT
 CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
	email VARCHAR(100)
);