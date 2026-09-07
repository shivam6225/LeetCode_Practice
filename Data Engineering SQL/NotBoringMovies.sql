# Write your MySQL query statement below
Select * from Cinema
where
mod(id , 2) = 1
AND
description <> 'boring'
order by rating desc;