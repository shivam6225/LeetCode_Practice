# Write your MySQL query statement below
with QueueWeight as (
    Select person_name , turn ,
    SUM(weight) OVER(order by turn) as sumbyturn
    FROM Queue
)
Select person_name 
FROM QueueWeight
WHERE sumbyturn <=1000
ORDER BY turn DESC
LIMIT 1;