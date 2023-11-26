/* 1581. Customer Who Visited but Did Not Make any Transaction */
/* https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50 */
select Visits.customer_id, count(*) as count_no_trans
from Visits
left join Transactions
on Visits.visit_id = Transactions.visit_id
where amount is null
group by customer_id