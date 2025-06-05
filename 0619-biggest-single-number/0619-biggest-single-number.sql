# Write your MySQL query statement below
-- select
--     num,
--     DENSE_RANK() OVER(PARTITION BY num) AS rowNo
-- from MyNumbers
-- GROUP BY num
-- LIMIT 1

SELECT 
    COALESCE((
        SELECT
            num
        FROM (
            SELECT num, count(num)
            FROM MyNumbers
            GROUP BY num
            HAVING COUNT(num) = 1
            ORDER BY num DESC
        ) SubQ
        LIMIT 1)
    , NULL) AS num