# Write your MySQL query statement below
with sample as
(select de.name as Department, ey.name as Employee, ey.salary as Salary,ey.departmentid,
rank() over(partition by ey.departmentid order by salary desc) as rank_ from employee ey inner join department de on de.id = ey.departmentid)
select Department,Employee,Salary from sample where rank_ = 1;
