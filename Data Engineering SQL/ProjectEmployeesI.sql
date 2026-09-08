# Write your MySQL query statement below
with projectEmp as (
    Select p.project_id , e.experience_years 
    from Project p
    Left Join
    Employee e
    on p.employee_id = e.employee_id
)
Select project_id , ROUND(AVG(experience_years),2) as average_years from projectEmp
group by project_id;