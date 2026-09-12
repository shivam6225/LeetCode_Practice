# Write your MySQL query statement below
Select DATE_FORMAT(trans_date , '%Y-%m') as month , country,
count(*) as trans_count ,
SUM(
    CASE
    WHEN state="approved" then 1
    ELSE 0
    END
) as approved_count , SUM(amount) as trans_total_amount ,
SUM(
    CASE
    WHEN state="approved" then amount
    ELSE 0
    END
) as approved_total_amount
from Transactions
group by month,country;


//More optimized

SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(*) AS trans_count,
    SUM(state = 'approved') AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(IF(state = 'approved', amount, 0)) AS approved_total_amount
FROM Transactions
GROUP BY 1, 2;