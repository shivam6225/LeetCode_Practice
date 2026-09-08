# Write your MySQL query statement below
with SalesYear as (
    Select product_id , year , quantity , price ,
    RANK() OVER(partition by product_id order by year) as salerank
    FROM Sales
)
Select product_id , year  as first_year, quantity  as quantity , price as price from
SalesYear
where salerank = 1;