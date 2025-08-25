USE startersql;

SELECT id, name, salary
FROM users
WHERE salary > (
	select AVG(salary) FROM users
    );

-- SELECT AVG(salary) FROM users;

SELECT id, name, salary
FROM users
WHERE salary < (
	select AVG(salary) FROM users
    );


-- Subquery with IN
-- Now let's say we want to find users who have been referred by someone who earns more than ₹75,000.
SELECT id, name, referred_by_id
FROM users
WHERE referred_by_id IN (
    SELECT id FROM users WHERE salary > 50000
);


SELECT name, salary,
  (SELECT AVG(salary) FROM users) AS average_salary
FROM users;