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
order by exam_id

