/*1148. Article Views I*/
/* https://leetcode.com/problems/article-views-i/?envType=study-plan-v2&envId=top-sql-50 */
select distinct author_id as id
from Views
where author_id = viewer_id
order by id asc