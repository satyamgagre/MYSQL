USE startersql;
-- UPDATE users
-- SET salary = 45000
-- WHERE id=1;

-- UPDATE users
-- SET email = 'aarav@gmail.com'
-- WHERE id=1;

-- Quick Quiz: Practice Your UPDATE Skills
-- 1. Update the salary of user with id = 5 to ₹70,000.
-- UPDATE users
-- SET salary = 70000
-- WHERE id=5;

-- 2. Change the name of the user with email aisha@example.com to Aisha Khan.
-- UPDATE users
-- SET name = 'Aisha Khan'
-- WHERE email = 'aisha@example.com';


-- 3. Increase salary by ₹10,000 for all users whose salary is less than ₹60,000.
-- SET SQL_SAFE_UPDATES = 0;  Disable Safe Update Mode Temporarily
-- UPDATE users
-- SET salary = salary + 10000
-- WHERE salary < 60000;

-- 4. Set the gender of user Ishaan to Other.
-- UPDATE users
-- SET gender = 'Other'
-- WHERE name = 'Ishaan';


-- 5. Reset salary of all users to ₹50,000 (Careful - affects all rows).
-- UPDATE users
-- SET salary = 50000;


SELECT * FROM users;