# Write your MySQL query statement below
Select product_id , SUM(quantity) as total_quantity from
Sales 
group by product_id;