/* Write your T-SQL query statement below */
Select product_name, [year], price
from Sales S
inner join Product P ON S.product_id = P.product_id