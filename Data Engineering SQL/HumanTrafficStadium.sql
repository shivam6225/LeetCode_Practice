# Write your MySQL query statement below
with conDate as (
    Select id , visit_date , people ,
    Lead(id , 2) over (order by id) as second_next_id,
    Lead(id , 1) over (order by id) as next_id,
    Lag(id , 1) over (order by id) as last_id,
    Lag(id , 2) over (order by id) as second_last_id
    FROM stadium
    where people >= 100
)
Select distinct id , visit_date , people
from conDate
where (next_id - id = 1 AND id - last_id =1)
OR (second_next_id - next_id = 1 and next_id - id =1)
OR (id - last_id =1 and last_id -second_last_id =1)
order by visit_date;