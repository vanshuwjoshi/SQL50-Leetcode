/* 197. Rising Temperature */
/* https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50 */
select W1.id as Id
from Weather as W1, Weather as W2
where Datediff(W1.recordDate, W2.recordDate) = 1 and W1.temperature > W2.temperature