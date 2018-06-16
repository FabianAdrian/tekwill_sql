                                     --1--                                           
SELECT faculty_name || ' earns '
       ||TO_CHAR(salary,'fm$99999')
       ||' monthly but wants'||TO_CHAR(salary*3,'$999999') "Dream Salary"
FROM ad_faculty_details;
                                     --2--
SELECT   first_name
        ,student_reg_year
        ,TO_CHAR(NEXT_DAY(ADD_MONTHS(student_reg_year,6),'MONDAY')
        , 'fmDay,"the" ddspth "of" Month, YYYY')Review
FROM ad_student_details;
                                     --3--
SELECT first_name,NVL(email_addr,'NO EMAIL ADDRES')
FROM ad_student_details  ;   
                                     --4--
SELECT student_id
        ,marks
        ,TO_CHAR(marks,'$999')Prize_Amount
FROM ad_exam_results
WHERE marks>=90
                                  

