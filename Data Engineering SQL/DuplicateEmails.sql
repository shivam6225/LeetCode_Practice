/*Person table:
+----+---------+
| id | email   |
+----+---------+
| 1  | a@a.com |
| 2  | b@b.com |
| 3  | c@c.com |
| 4  | a@a.com |
| 5  | b@b.com |
| 6  | a@a.com |
+----+---------+
Output:
+---------+
| email   |
+---------+
| a@a.com |
| b@b.com |
Explanation:
Two persons got the same email "a@a.com".
Two persons got the same email "b@b.com".
*/

# Write your MySQL query statement below
Select email from Person
group by email
having count(email)>1;