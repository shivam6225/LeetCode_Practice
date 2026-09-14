WITH seatlead AS (
    SELECT id, 
    CASE 
        WHEN id % 2 = 0 THEN LAG(student, 1) OVER (ORDER BY id)
        WHEN LEAD(student, 1) OVER (ORDER BY id) IS NOT NULL THEN LEAD(student, 1)      OVER (ORDER BY id)
        ELSE student 
    END AS SwapStudent
    FROM Seat
)
SELECT id, SwapStudent AS student FROM seatlead;

