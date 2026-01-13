# Write your MySQL query statement below
SELECT contest_id,ROUND((COUNT(*)/(SELECT COUNT(*) FROM Users)*100),2) AS percentage
 FROM Users Ur INNER JOIN Register Re ON Ur.user_id = Re.user_id 
GROUP BY contest_id ORDER BY percentage DESC,contest_id;