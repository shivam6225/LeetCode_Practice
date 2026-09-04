CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N-1;
  RETURN (
      # Write your MySQL query statement below.
      Select Distinct salary 
      from Employee 
      order by salary desc
      limit 1  OFFSET N
  );
END

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
with sal as(
Select salary ,
Dense_Rank() Over (order by salary desc) as sal_rank
from Employee) 
Select COALESCE((Select DISTINCT salary from sal where sal_rank=N), null)
  );
END