/* 620. Not Boring Movies */
/* https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50 */
select *
from Cinema
where description <> "boring" and mod(id,2) <> 0 
order by rating desc