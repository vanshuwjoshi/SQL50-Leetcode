/* 577. Employee Bonus */
/* https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50 */
select E.name, B.bonus
from Employee as E
left join Bonus as B
on E.empId = B.empId
where B.bonus < 1000 or B.bonus is null