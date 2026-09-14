# Write your MySQL query statement below
SELECT s.id, s.name
FROM Departments d
RIGHT JOIN Students s
ON d.id = s.department_id
WHERE d.id IS NULL

# Write your MySQL query statement below
Select id , name 
from Students
where department_id NOT IN (
    Select id from Departments
);