# Write your MySQL query statement below
with trip_status as (
    Select request_at as Day, 
    T.status != 'completed' as cancelled 
    From
    Trips T
    JOIN Users c on client_id = c.users_id and c.banned = 'No'
    JOIN Users d on driver_id = d.users_id and d.banned = 'No'
    where
    request_at between '2013-10-01' and '2013-10-03' 

)

Select Day , 
ROUND(
    SUM(cancelled) / count(cancelled) ,2
) as 'Cancellation Rate'
from trip_status
group by day;