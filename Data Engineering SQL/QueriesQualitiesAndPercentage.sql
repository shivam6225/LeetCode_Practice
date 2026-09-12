# Write your MySQL query statement below
With QueriesStats as ( Select query_name ,
ROUND(
    AVG(rating/position) , 2
) as quality , 
COUNT(*) as query_count ,
SUM(rating<3) as poor_query
FROM Queries 
WHERE query_name is not null
group by query_name
)
Select query_name , quality ,
ROUND((poor_query/query_count)*100.00 , 2) as poor_query_percentage
from QueriesStats;


#More optimized

# Write your MySQL query statement below
With QueriesStats as ( Select query_name ,
ROUND(
    AVG(rating/position) , 2
) as quality , 
ROUND(AVG(rating<3)*100,2) as poor_query_percentage
FROM Queries 
WHERE query_name is not null
group by query_name
)
Select query_name , quality ,poor_query_percentage
from QueriesStats;
