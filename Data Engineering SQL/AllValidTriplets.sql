# Write your MySQL query statement below
Select a.student_name as member_A ,b.student_name as member_B , c.student_name as member_c
from
SchoolA a
JOIN
SchoolB b 
JOIN
SchoolC c
on ((a.student_id!=b.student_id)AND(a.student_id!=c.student_id)AND(b.student_id!=c.student_id)) AND 
((a.student_name!=b.student_name)AND(a.student_name!=c.student_name)AND(b.student_name!=c.student_name));