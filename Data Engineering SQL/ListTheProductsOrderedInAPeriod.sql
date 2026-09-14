# Write your MySQL query statement below
Select p.product_name , o.unit 
from Products p
INNER JOIN
(
    Select product_id , SUM(unit) as unit
    from Orders
    where order_date>='2020-02-01' and order_date<='2020-02-29'
    group by product_id
    having SUM(unit)>=100
) o
on p.product_id = o.product_id;