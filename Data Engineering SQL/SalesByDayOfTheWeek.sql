# Write your MySQL query statement below
with CategoryOrders as (
    Select i.item_category , DAYNAME(o.order_date) as weekday, o.quantity 
    FROM
    Orders o
    RIGHT Join
    Items i
    on o.item_id = i.item_id
)

Select
item_category as CATEGORY ,
SUM(IF(weekday="Monday",quantity,0)) as MONDAY,
SUM(IF(weekday="Tuesday",quantity,0)) as TUESDAY,
SUM(IF(weekday="Wednesday",quantity,0)) as WEDNESDAY,
SUM(IF(weekday="Thursday",quantity,0)) as THURSDAY,
SUM(IF(weekday="Friday",quantity,0)) as FRIDAY,
SUM(IF(weekday="Saturday",quantity,0)) as SATURDAY,
SUM(IF(weekday="Sunday",quantity,0)) as SUNDAY
FROM
CategoryOrders
group by item_category
order by item_category;
