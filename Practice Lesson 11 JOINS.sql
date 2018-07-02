--1--
SELECT department_name , course_name 
FROM ad_department NATURAL JOIN ad_course_details;
--2--
SELECT department_name,course_name, HOD
FROM ad_department JOIN ad_course_details 
                   USING (department_id);
--3--
SELECT course_name,session_name
FROM ad_course_details JOIN ad_academic_session
                       USING (session_id)
where session_id=300;
--4--
SELECT course_id,course_name,faculty_name
FROM ad_course_details JOIN ad_faculty_course_details
                       USING (course_id)
JOIN ad_faculty_details
USING (faculty_id);

SELECT b.course_id,a.course_name,c.faculty_name
FROM ad_course_details a JOIN ad_faculty_course_details b
                       ON b.course_id=a.course_id
JOIN ad_faculty_details c
USING (faculty_id);
--5--
SELECT a.faculty_name FACULTY 
      ,a.faculty_id FACULTY#
      ,b.faculty_name MENTOR
      ,b.faculty_id MENTOR#
FROM ad_faculty_details a  JOIN ad_faculty_details b
--ON (a.mentor_id = b.mentor_id)
USING (mentor_id);
--6--
SELECT  student_id,first_name,exam_id,marks
FROM ad_exam_details  JOIN ad_exam_results 
                     USING (exam_id)
                     
JOIN ad_student_details 
USING (student_id)
WHERE marks Between 60 and 70
order by marks desc;
--7--
SELECT department_name, course_name
FROM ad_course_details RIGHT OUTER JOIN ad_department
USING (department_id);


