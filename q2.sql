/*584. Find Customer Referee*/
/*https://leetcode.com/problems/find-customer-referee/?envType=study-plan-v2&envId=top-sql-50*/
select name
from Customer
where not referee_id = 2 or referee_id is null;