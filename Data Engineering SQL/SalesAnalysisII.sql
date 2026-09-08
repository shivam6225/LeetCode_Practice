# Write your MySQL query statement below
with SalesMetrics  as(
    Select s.buyer_id , p.product_name 
    from Sales s
    Left join
    Product p
    on s.product_id = p.product_id
)
Select distinct buyer_id from SalesMetrics
where buyer_id IN (Select buyer_id from SalesMetrics where product_name = 'S8')
and buyer_id NOT IN (Select buyer_id from SalesMetrics where product_name = 'iPhone');