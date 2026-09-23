Select max(num) as num
from (Select num from MyNumbers
group by num
having COUNT(num)=1) t;