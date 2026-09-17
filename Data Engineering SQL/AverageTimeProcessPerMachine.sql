# Write your MySQL query statement below
with activityStats as (
    Select machine_id , 
SUM(
    CASE
        WHEN activity_type='start' then timestamp
        ELSE 0
    END) AS start_total,
SUM(
    CASE
        WHEN activity_type='end' then timestamp
        ELSE 0
    END) AS end_total,
COUNT(distinct process_id) as process_count
from Activity
group by machine_id)

Select machine_id , ROUND((end_total-start_total)/process_count,3) as processing_time
from activityStats;