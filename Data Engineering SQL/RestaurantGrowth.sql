# Write your MySQL query statement below
with totalDay as (
    Select visited_on ,
    SUM(amount) as daily_amount 
    from Customer
    group by visited_on
)

select visited_on,
sum(daily_amount) over (order by visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW ) as amount,
round(avg(daily_amount) over (order by visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW ),2) as average_amount
from totalDay
limit 100000 offset 6;

