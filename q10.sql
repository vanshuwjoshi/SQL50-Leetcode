/* 1661. Average Time of Process per Machine */
/* https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50 */
select T1.machine_id, ROUND(AVG(T1.timestamp - T2.timestamp), 3) as processing_time
from (
        select *
        from Activity 
        where activity_type = "end"
    ) as T1 left join 
    (
        select *
        from Activity 
        where activity_type = "start"
    ) as T2
on T1.machine_id = T2.machine_id and T1.process_id = T2.process_id
group by machine_id