/* Write your T-SQL query statement below */
select customer_id, count(V.visit_id) count_no_trans
from Visits V
Left Join Transactions T ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
group by customer_id
ORDER BY count(V.visit_id) ASC
