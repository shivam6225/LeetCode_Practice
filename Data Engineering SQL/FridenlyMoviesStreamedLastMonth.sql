# Write your MySQL query statement below
with TVContent as (
    Select c.title
    FROM
    TVProgram p
    INNER Join
    Content c
    on p.content_id = c.content_id
    and c.Kids_content = 'Y'and c.content_type = 'Movies'
    and p.program_date >= '2020-06-01' and p.program_date < '2020-07-01'
)
Select distinct title as TITLE from
TVContent;