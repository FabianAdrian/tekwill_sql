--1 TRUE
--2 False
--3 True
                                --4--
SELECT MAX(marks),MIN(marks),AVG(marks)
FROM ad_exam_results;
                                --5--

SELECT exam_id
,MAX(marks)"Highest"
,MIN(marks)"Lowest"
,Round(AVG(marks))"Average"
FROM ad_exam_results
group by exam_id
order by exam_id;
                                  --6--
SELECT course_id,COUNT(*)
FROM ad_student_course_details
group by course_id;
                                  --7--
SELECT exam_id, course_id,AVG(marks)
FROM ad_exam_results
group by exam_id,course_id
HAVING AVG(marks)>85;
                                  --8--
SELECT MAX(salary)-MIN(salary) Difference
FROM ad_faculty_details;
                                  --9--
Select MAX(AVG(marks))
FROM ad_exam_results
group by marks;
                                  --10--
SELECT course_id,MIN(marks)
FROM ad_exam_results
WHERE  course_id IN (190,191,192) 
group by course_id
HAVING MIN(marks)>75


