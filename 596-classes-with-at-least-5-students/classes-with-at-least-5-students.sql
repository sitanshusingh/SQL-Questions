# Write your MySQL query statement below
-- WITH sample AS
-- (SELECT class, COUNT(class) AS students 
-- FROM courses GROUP BY class)
-- SELECT class FROM sample where students >=5;

SELECT Class FROM Courses GROUP BY Class HAVING COUNT(*) >= 5;