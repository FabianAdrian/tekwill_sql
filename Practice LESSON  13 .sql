--1--
UNDEFINE  cours_name 
SELECT course_name,session_id
FROM ad_course_details
WHERE department_id=(SELECT department_id
            FROM ad_course_details
            WHERE course_name=UPPER('&&cours_name'))
AND course_name <> '&cours_name';
--2--, 
SELECT  faculty_id,faculty_name , salary
FROM ad_faculty_details
WHERE salary >(SELECT AVG(salary)
               FROM ad_faculty_details)
ORDER BY salary;
--3--
SELECT course_id,exam_id,student_id,marks
FROM ad_exam_results
WHERE course_id IN((SELECT course_id
                 FROM ad_course_details
                 WHERE course_name LIKE'%OGY'));
--4--
UNDEFINE course_id
SELECT first_name, student_reg_year
FROM ad_student_details
WHERE student_id =( SELECT student_id
                    FROM ad_course_details
                    WHERE course_id=UPPER('&&course_id'))
--5--                                
SELECT faculty_name , salary
from ad_faculty_details
where mentor_id=(Select faculty_id
                 from ad_faculty_details        
                 WHERE faculty_name = 'JILL MILLER');

--6--
SELECT student_id, marks
from ad_exam_results    
WHERE exam_id IN (SELECT exam_id
              FROM ad_exam_details
              WHERE exam_type='MCE')
AND marks >(SELECT AVG(marks)
     FROM ad_exam_results
              )