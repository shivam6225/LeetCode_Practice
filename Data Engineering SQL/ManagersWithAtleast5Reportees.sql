# Write your MySQL query statement below
with managerCount as (
    Select managerId , count(*) from Employee
    group by managerId having count(*) >=5
)
Select name from Employee
where id IN (Select managerId from managerCount);