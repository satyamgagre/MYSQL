DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
 );

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2),
	CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);
INSERT INTO customers (name, email) VALUES
	('Alice', 'alice@example.com'),
	('Bob', 'bob@example.com'),
	('Charlie', 'charlie@example.com'),
	('David', 'david@example.com'),
	('Eva', 'eva@example.com');

INSERT INTO orders (customer_id, product, amount) VALUES
	(1, 'Laptop', 55000.00),
	(2, 'Phone', 20000.00),
	(2, 'Headphones', 3000.00),
	(3, 'Tablet', 15000.00),
	(5, 'Camera', 35000.00);

-- JOIN Examples
-- INNER JOIN (customers with orders)
SELECT c.customer_id, c.name, o.product, o.amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- LEFT JOIN (all customers, even if no orders)
SELECT c.customer_id, c.name, o.product, o.amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- RIGHT JOIN (all orders, even if customer missing)
SELECT c.customer_id, c.name, o.product, o.amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;
