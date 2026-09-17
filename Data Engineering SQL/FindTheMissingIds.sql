# Write your MySQL query statement below
with recursive sequence as (
    Select 1 as ids
    union all
    select ids+1 from sequence where ids < (Select MAX(customer_id) FROM Customers)
)
Select ids
from sequence
where ids NOT in (select customer_id from Customers)
order by 1 asc;