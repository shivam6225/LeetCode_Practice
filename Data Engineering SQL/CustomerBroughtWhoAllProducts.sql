# Write your MySQL query statement below
with CustomerDistinctBuy as(
    Select customer_id ,
    COUNT(distinct product_key) as totalCnt
    from Customer
    group by customer_id
)
Select customer_id from CustomerDistinctBuy
where totalCnt = (Select count(*) from Product);