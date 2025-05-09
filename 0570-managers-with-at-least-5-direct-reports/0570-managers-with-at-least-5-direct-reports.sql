/* Write your T-SQL query statement below */
select [name]
from Employee E
where (Select count(managerID) from Employee E2 where E.id = E2.managerID) >= 5