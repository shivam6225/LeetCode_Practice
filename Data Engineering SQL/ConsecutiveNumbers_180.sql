Select distinct num as consecutiveNums from
(
    Select num ,
    lead(num,1) over (order by id) as leadnum,
    lag(num,1) over (order by id) as lagnum
    from Logs
) as nums where num = leadnum and num=lagnum;