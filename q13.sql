/* 570. Managers with at least 5 direct reports */
/* https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50 */
select T.name
from (
    select E1.name as name, count(*) as count
    from Employee as E1
    cross join Employee as E2
    where E1.id = E2.managerId
    group by E1.id
) as T
where T.count >= 5