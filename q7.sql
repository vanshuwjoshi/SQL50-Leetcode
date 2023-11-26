/* 1068. Product Sales Analysis I */
/* https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50 */
select P.product_name, S.year, S.price
from Sales as S
left join Product as P
on S.product_id = P.product_id