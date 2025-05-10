/* Write your T-SQL query statement below */
select W.id
from Weather W
left join Weather W2 ON W.recordDate = DATEADD(dd, 1, W2.RecordDate)
where W.temperature > W2.temperature