# Write your MySQL query statement below
with datesUnion as (
    Select success_date as date , 'succeeded' as status ,
    RANK() OVER(order by success_date) as rk
    FROM Succeeded
    where YEAR(success_date)='2019'
    UNION ALL
    Select fail_date as date , 'failed' as status ,
    RANK() OVER(order by fail_date) as rk
    FROM Failed
    where YEAR(fail_date)='2019'
),
dateRanks as (
    Select date ,
    RANK() OVER(ORDER BY date) as overall_rank ,
    status ,
    rk ,
    (RANK() OVER(ORDER BY date) - rk) as inverse_rank
    FROM datesUnion
)
Select status as period_state ,
MIN(date) as start_date , MAX(date) as end_date
FROM dateRanks
group by inverse_rank , status
order by start_date;


