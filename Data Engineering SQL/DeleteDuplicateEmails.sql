Delete from Person where id not in (
    Select * from (Select min(id) from Person group by email)as p
);


Delete p1 from person p1 , person p2
where p1.Email = p2.Email and p1.Id > p2.Id;