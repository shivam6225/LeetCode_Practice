
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);


with sal as(
Select salary ,
Dense_Rank() Over (order by salary desc) as sal_rank
from Employee) 
Select COALESCE((Select DISTINCT salary from sal where sal_rank=2), null) as SecondHighestSalary ;