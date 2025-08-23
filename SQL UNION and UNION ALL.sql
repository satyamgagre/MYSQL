USE Startersql;

SELECT * FROM users;
SELECT * FROM admin_users;

SELECT name, email FROM users
UNION 
SELECT name, email FROM admin_users;


SELECT name, email FROM users
UNION ALL
SELECT name, email FROM admin_users;


SELECT email, name, 'user' as role FROM users 
UNION 
SELECT email, name, 'admin' as role FROM admin_users ;

SELECT email, name, 'user' as role FROM users 
UNION 
SELECT email, name, 'admin' as role FROM admin_users 
ORDER BY name;

SELECT email, name, 'user' as role FROM users 
UNION 
SELECT email, name, 'admin' as role FROM admin_users 
ORDER BY email;

