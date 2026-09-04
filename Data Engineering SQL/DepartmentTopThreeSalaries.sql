# Write your MySQL query statement below
with emp_sal as (
    Select name , salary , departmentId ,
    DENSE_RANK() OVER(partition by departmentId order by salary desc) as sal_rank
    from Employee 
)
Select d.name as Department , e.name as Employee , e.salary as Salary
from (Select * from emp_sal where sal_rank <= 3 )e 
inner join Department d 
on d.id = e.departmentId;