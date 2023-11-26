/* 1378. Replace Employee ID With The Unique Identifier */
/* https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50 */
select EmployeeUNI.unique_id, Employees.name 
from Employees
left join EmployeeUNI
on Employees.id = EmployeeUNI.id