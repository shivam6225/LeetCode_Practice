# Write your MySQL query statement below
with customerFirstOrder as (
    Select customer_id , order_date , 
    CASE
    WHEN DATEDIFF(customer_pref_delivery_date,order_date)=0 then 1
    ELSE 0
    END AS delivery_time,
    ROW_NUMBER() OVER(PARTITION BY customer_id order by order_date) as orderRank
    FROM Delivery
)
Select 
ROUND((SUM(delivery_time)/count(*))*100,2) as immediate_percentage
from customerFirstOrder
where orderRank=1;