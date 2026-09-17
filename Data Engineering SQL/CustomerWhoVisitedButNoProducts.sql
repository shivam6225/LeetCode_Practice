# Write your MySQL query statement below
Select customer_id , count(*) as count_no_trans
FROM Visits v
where NOT EXISTS (
    Select 1
    from Transactions t
    where v.visit_id = t.visit_id
)
group by customer_id;

