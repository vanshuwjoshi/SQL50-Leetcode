/* 1934. Confirmation Rate */
/* https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50 */
select S.user_id, 
case 
    when C.action is null then 0.00
else round(sum(case 
                    when action = "confirmed" then 1 else 0 end
                )/count(action),2) 
end as confirmation_rate
from Signups as S
left join Confirmations as C
on S.user_id = C.user_id 
group by S.user_id