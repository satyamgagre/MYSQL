USE startersql;

SET autocommit = 0;   -- (disabled autocommit mode so changes aren’t permanent until COMMIT)
COMMIT;               -- (finalizes any pending changes)
DELETE FROM users WHERE id=6;  -- deletes row with id=6
ROLLBACK;             -- undo deletion (since commit wasn’t done yet)

DELETE FROM users WHERE id=5;     -- deletes row with id=5
SELECT * FROM users;              -- shows current table data
COMMIT;               -- would make deletion permanent
