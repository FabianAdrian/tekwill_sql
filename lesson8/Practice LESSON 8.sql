                                     --1--

select exam_type,
        CASE   exam_type 
        WHEN  'MCE'THEN 'SUBJECTIVE'
        WHEN  'TF'THEN 'SUBJECTIVE'
        WHEN  'FIB'THEN 'SUBJECTIVE'
        WHEN  'ESS'THEN 'SUBJECTIVE'
        WHEN  'SA'THEN 'SUBJECTIVE'
        WHEN  'PS' THEN 'ANALYTICAL'
        WHEN  'LAB' THEN 'PRACTICAL'
  ELSE 'NOT_PERMITED' END NATURE_OF_EXAM
from ad_exam_details;
-- Search CASE
select exam_type,
(CASE   WHEN exam_type IN('MCE','TF','FIB') THEN 'OBJECTIVE'
        WHEN exam_type IN('ESS','SA') THEN 'SUBJECTIVE'
        WHEN exam_type= 'PS' THEN 'ANALYTICAL'
        WHEN exam_type='LAB' THEN 'PRACTICAL'
ELSE 'NOT_PERMITED' END )NATURE_OF_EXAM
from ad_exam_details;
                                     --2--
Select student_id,marks,
CASE WHEN marks<60 THEN 'Fail'
     WHEN marks BETWEEN 60 AND 70 THEN 'Satisfatory'
     WHEN marks BETWEEN 70 AND 80 THEN 'Good'
     WHEN marks BETWEEN 80 AND 90 THEN 'Very Good'
     WHEN marks>90 THEN 'Satisfatory'
END "Grade Remark"
FROM ad_exam_results
ORDER BY marks DESC;
                                    --3--
SELECT exam_type,
        DECODE(exam_type 
         ,'MCE', 'SUBJECTIVE'
         ,'TF' , 'SUBJECTIVE'
         ,'FIB', 'SUBJECTIVE'
         ,'ESS', 'SUBJECTIVE'
         ,'SA' , 'SUBJECTIVE'
         ,'PS' , 'ANALYTICAL'
         ,'LAB', 'PRACTICAL'
         ,'NOT_PERMITED') NATURE_OF_EXAM
FROM ad_exam_details;
                                --4--
SELECT
                                    


