/* Write your T-SQL query statement below */
select 
A1.machine_id, processing_time = ROUND(AVG(A2.timestamp - A1.timestamp), 3)
from Activity A1
join Activity A2 ON A1.machine_id = A2.machine_id AND A1.process_id = A2.process_id AND A1.activity_type = 'start' AND A2.activity_type = 'end'
group by A1.machine_id