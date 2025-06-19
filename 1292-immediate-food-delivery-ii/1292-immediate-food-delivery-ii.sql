# Write your MySQL query statement below
WITH aggregate AS (
    SELECT 
        customer_id,
        MIN(order_date) AS first_delivery
    FROM
        Delivery
    GROUP BY
        customer_id
)
select 
    ROUND(SUM(CASE WHEN a.first_delivery = d.customer_pref_delivery_date THEN 1 ELSE 0 END) * 100 / COUNT(a.first_delivery), 2) AS immediate_percentage
FROM 
    aggregate a
INNER JOIN
    delivery d
    ON a.customer_id = d.customer_id
    AND a.first_delivery = d.order_date