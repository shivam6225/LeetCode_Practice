# Write your MySQL query statement below
with ProductDtRank as (
    Select product_id , new_price ,
    RANK() OVER(PARTITION BY product_id  order by change_date desc) as price_rank
    from Products
    where change_date <= '2019-08-16'
)
Select product_id , new_price as price
from ProductDtRank
where price_rank =1
UNION
select product_id , 10 as price
from products
where product_id not in (select distinct product_id from ProductDtRank);