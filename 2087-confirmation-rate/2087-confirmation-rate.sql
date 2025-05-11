/* Write your T-SQL query statement below */
select 
S.user_id,
confirmation_rate = ISNULL(ROUND(1.0 * SUM(IIF(C.action = 'confirmed', 1, 0)) / NULLIF(COUNT(C.action), 0), 2), 0.00)
from Signups S
Left Join Confirmations C ON S.user_id = C.user_id
Group By S.user_id