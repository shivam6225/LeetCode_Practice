# Write your MySQL query statement below

Select contest_id , 
ROUND(
    (COUNT(DISTINCT user_id)*100/(Select count(*) from Users)),2) as percentage
from Register
group by contest_id
order by percentage desc ,contest_id;