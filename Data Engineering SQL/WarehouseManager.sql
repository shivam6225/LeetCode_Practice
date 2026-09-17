# Write your MySQL query statement below
with LCHouseProductVolume AS (
    Select w.name as warehouse_name ,
    (w.units*p.Width*p.Length*p.Height) as product_volume
    FROM Warehouse w
    Inner JOIN
    Products p
    on w.product_id = p.product_id
)
Select warehouse_name , SUM(product_volume) as volume
from LCHouseProductVolume
group by warehouse_name;