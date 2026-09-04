
with emp_sal as (
    Select name , salary , departmentId ,
    RANK() OVER(partition by departmentId order by salary desc) as sal_rank
    from Employee
)
Select d.name as Department , e.name as Employee , e.salary as Salary
from (Select * from emp_sal where sal_rank = 1 )e 
inner join Department d 
on d.id = e.departmentId;

# More optimized

SELECT d.name AS Department, 
       e.name AS Employee, 
       e.salary AS Salary
FROM Employee e
INNER JOIN Department d ON e.departmentId = d.id
WHERE (e.departmentId, e.salary) IN (
    SELECT departmentId, MAX(salary)
    FROM Employee
    GROUP BY departmentId
);