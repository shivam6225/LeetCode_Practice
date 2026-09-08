# Write your MySQL query statement below
with SalesTotal as (
    Select seller_id ,
    SUM(price) as totalSale
    from Sales
    group by seller_id
    order by totalSale desc
)
Select seller_id from SalesTotal
where totalSale = (Select totalSale from SalesTotal LIMIT 1)