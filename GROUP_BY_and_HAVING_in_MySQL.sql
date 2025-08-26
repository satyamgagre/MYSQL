USE startersql;

-- ===========================================================
-- 📌 GROUP BY, HAVING, and ROLLUP EXAMPLES (NOTES SCRIPT)
-- ===========================================================

-- 1. GROUP BY with HAVING
-- WHERE → filters rows BEFORE grouping
-- HAVING → filters groups AFTER grouping
-- Example: Show average salary by gender, but only if > 60000
SELECT gender AS "Gender", AVG(salary) AS "AVG_SALARY", COUNT(*) AS "Count"
FROM users
GROUP BY gender
HAVING AVG(salary) > 60000;


-- 2. Count total referrals
-- Show how many users were referred by each referrer
-- Exclude rows where referred_by_id is NULL
SELECT referred_by_id, COUNT(*) AS "TOTAL_REFERRED"
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id;


-- 3. Referrals with more than 1
-- Same as above, but only keep referrers who referred more than 1 user
SELECT referred_by_id, COUNT(*) AS "TOTAL_REFERRED"
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id
HAVING COUNT(*) > 1;


-- 4. GROUP BY with ROLLUP
-- ROLLUP adds sub totals and grand totals to grouped data
-- Example: Group by gender and also show overall totals
SELECT gender AS "Gender", AVG(salary) AS "AVG_SALARY", COUNT(*) AS "Count"
FROM users
GROUP BY gender WITH ROLLUP
HAVING AVG(salary) > 60000;

-- ===========================================================
-- 📌 SUMMARY NOTES:
-- WHERE → filters rows first (before grouping)
-- GROUP BY → creates groups (e.g., by gender or referrer)
-- HAVING → filters groups after grouping
-- ROLLUP → adds subtotals & grand totals
-- ===========================================================
