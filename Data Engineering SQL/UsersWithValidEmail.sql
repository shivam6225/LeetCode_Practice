# Write your MySQL query statement below
Select * from Users
where mail REGEXP '^[a-zA-Z][a-zA-Z-._0-9]*@(?-i)leetcode\\.com$';