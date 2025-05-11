/* Write your T-SQL query statement below */
select P.product_id, average_price = ISNULL(round(SUM(p.price*us.units*1.00)/sum(us.units),2),0)
from Prices P
left join UnitsSold US ON P.product_id = US.product_id and US.purchase_date BETWEEN P.start_date and P.end_date
group by P.product_id