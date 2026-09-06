# Write your MySQL query statement below
with empSalMonth as (
    Select id , month , 
    SUM(SALARY) OVER(PARTITION BY id order by month RANGE BETWEEN 2 PRECEDING AND CURRENT ROW ) as monSal,
    ROW_NUMBER() OVER (PARTITION By id order By month DESC) as rn
    from Employee
)
Select id , Month as month ,monSal as Salary
From empSalMonth
where rn > 1;
