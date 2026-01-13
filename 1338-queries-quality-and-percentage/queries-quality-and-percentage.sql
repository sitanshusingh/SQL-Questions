# Write your MySQL query statement below
SELECT query_name, ROUND(SUM(quality)/count(*),2) as quality,
        ROUND((SUM(poor_query_percentage)/count(*))*100,2) as poor_query_percentage
    FROM (SELECT 
        query_name,
        (rating/position) AS quality,
        CASE WHEN
        rating < 3 THEN 1
        ELSE 0
        END "poor_query_percentage"
        FROM Queries ) e
        GROUP BY e.query_name