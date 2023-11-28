/* 1280. Student and Examinations */
/* https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50 */
select S.student_id, S.student_name, Sub.subject_name, count(E.subject_name) as attended_exams
from Students as S
cross join Subjects as Sub
left join Examinations as E
on S.student_id = E.student_id and Sub.subject_name = E.subject_name
group by S.student_id, Sub.subject_name
order by S.student_id, Sub.subject_name