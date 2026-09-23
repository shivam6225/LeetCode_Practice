# Write your MySQL query statement below
Select employee_id , department_id from
Employee
where primary_flag ='Y'
OR employee_id IN (
    Select employee_id
    FROM Employee
    Group by employee_id 
    HAVING count(employee_id) =1
);