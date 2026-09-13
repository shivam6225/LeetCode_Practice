# Write your MySQL query statement below
with TeamSize as (
    Select team_id , count(*) as team_size 
    from Employee
    group by team_id
)
Select e.employee_id , t.team_size 
FROM Employee e
Left JOIN
TeamSize t
on e.team_id = t.team_id;

#Optimized 

SELECT 
    employee_id,
    COUNT(*) OVER (PARTITION BY team_id) AS team_size
FROM Employee;