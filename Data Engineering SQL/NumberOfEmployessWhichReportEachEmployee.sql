# Write your MySQL query statement below
with report as (
Select reports_to ,COUNT(*) as reports_count, ROUND(AVG(age),0) as average_age from Employees
where reports_to IS NOT NULL
group by reports_to
)
Select employee_id , name , reports_count , average_age
from Employees e
INNER JOIN report r
on r.reports_to = e.employee_id
order by employee_id;