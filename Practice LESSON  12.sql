--1--
SELECT course_id
FROM ad_course_details
MINUS 
SELECT course_id
FROM ad_student_course_details;
select employee_id;

--2--
SELECT course_id, course_name
FROM ad_course_details
MINUS
SELECT a.course_id , b.course_name
FROM ad_student_course_details a
JOIN ad_course_details b
ON a.course_id=b.course_id;
--3--
SELECT   a.student_id
        ,a.first_name
        ,b.course_id
        ,c.course_name
FROM ad_student_details a
JOIN ad_student_course_details b 
ON a.student_id=b.student_id
JOIN ad_course_details c
ON b.course_id=c.course_id
WHERE  c.course_id =190 
Union
SELECT   a.student_id
        ,a.first_name
        ,b.course_id
        ,c.course_name
FROM ad_student_details a
JOIN ad_student_course_details b 
ON a.student_id=b.student_id
JOIN ad_course_details c
ON b.course_id=c.course_id
WHERE  c.course_id =193;
--4--
SELECT course_id,course_name,department_id ,a.session_id
FROM ad_course_details a
JOIN ad_academic_session b 
ON a.session_id=b.session_id
WHERE a.department_id=10
AND a.session_id=100
AND b.session_name =UPPER('SPRING SESSION');

Select course_id, course_name
from ad_course_details
where session_id=100
INTERSECT 
Select course_id, course_name
from ad_course_details
where department_id=10 ;
--5--
SELECT   course_name
        ,department_id
        ,to_char(null) dept_name
FROM ad_course_details
minus
SELECT  to_char(null)
        ,department_id
        ,department_name
FROM ad_department;

 



