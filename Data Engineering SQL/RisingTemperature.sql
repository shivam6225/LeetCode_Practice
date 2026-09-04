# Write your MySQL query statement below
With weather_lag as (
    Select id , temperature , recordDate,
    lag(temperature , 1) over (order by recordDate) as lag_temp,
    lag(recordDate,1) over (order by recordDate) as lag_date
    from Weather
)
Select id from weather_lag where temperature>lag_temp
and 
recordDate = DATE_ADD(lag_date,INTERVAL 1 DAY);


#Less optimized

Select p1.id from
Weather p1 
JOIN
Weather p2
on p1.temperature > p2.temperature 
where datediff(p1.recordDate,p2.recordDate) = 1;