# Write your MySQL query statement below
Select q.id , q.year , IFNULL(npv,0) as npv
FROM 
QUERIES q
LEFT JOIN
NPV n