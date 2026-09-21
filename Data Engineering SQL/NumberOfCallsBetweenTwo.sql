# Write your MySQL query statement below
Select Least(from_id,to_id) as person1,
Greatest(from_id,to_id) as person2,
count(*) as call_count,
SUM(duration) as total_duration
from Calls
group by person1, person2;

# Write your MySQL query statement below
Select if(from_id<to_id , from_id , to_id) as person1,
if(from_id>to_id , from_id , to_id) as person2,
count(*) as call_count,
SUM(duration) as total_duration
from Calls
group by person1, person2