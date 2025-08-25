USE startersql;

ALTER TABLE users ADD COLUMN referred_by_id INT;

UPDATE users
SET referred_by_id = FLOOR(1 + (RAND() * 40))
WHERE id <= 40;


SELECT
a.id,
a.name AS  user_name,
b.name AS referred_by
FROM users a 
LEFT JOIN users b ON a.referred_by_id  = b.id;


SELECT * FROM users;