# Write your MySQL query statement below
Select s.student_id , s.student_name , su.subject_name , IFNULL(attended_exams , 0) as attended_exams
FROM Students s
JOIN 
Subjects su
LEFT JOIN (
    Select student_id , subject_name , COUNT(*) as attended_exams
    FROM Examinations
    group by student_id , subject_name
) e
ON
s.student_id = e.student_id and su.subject_name = e.subject_name
order by s.student_id asc, subject_name;



# Write your MySQL query statement below
SELECT 
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e 
    ON s.student_id = e.student_id 
   AND sub.subject_name = e.subject_name
GROUP BY 
    s.student_id, 
    s.student_name, 
    sub.subject_name
ORDER BY 
    s.student_id ASC, 
    sub.subject_name ASC;