Select employee_id,first_name
From employees
order by employee_id 
---Fetch first 5 rows only;
Fetch first 5 rows with ties;

--- 
Select *
From employees
order by salary 
--Fetch first 8 rows only;
Fetch first 8 rows with ties;



Select * 
from employees
where employee_id=&emp_id


Select first_name
      ,last_name
      ,&column
from employees
where employee_id=&emp_id
order by &number 


Select first_name
      ,last_name 
      ,hire_date
from employees
--where hire_date='21-SEP-13'
where hire_date='&hire_date'



Select first_name
      ,last_name
      ,&column
from employees
--where &column = '&value_of_hdate'--not so funny
order by &number

Select *
from employees
where &condition


Select first_name
      ,last_name
      ,&&column
from employees
--where &&column = '&value_of_hdate'
order by &&column


Select * from employees

Define column_2='salary'
Define column_2='hire_date'
Define value_=6000
Define value_= '07-FEB-15'


Set verify on 
Select first_name
      ,last_name
      ,&column_2
from employees
where &column_2 = '&value_';
Set verify on 

undefine value_ 
     
     
Select first_name
      ,last_name
      ,email 
      ,lower(email) as email
      ,upper(last_name) as last_name
      ,initcap(email) email_initcap
      ,initcap('Text as test ceva') test_initcap
from employees
--where lower(email) like'%e%'
--where email like'%e%'
where Upper(email) like'%T%'

--- Where is starting Substr with zero?
Select --Concat('Text Text','New Text') as test_concat-- <=>  ||
      --,Concat(last_name,first_name) as test_concat_column_values
      --,Concat(last_name,concat(' ',first_name)) as 
         Substr(job_id,1,2)
     -- ,Substr(job_id,7)
     -- ,Substr(job_id,-2)
     -- ,first_name
     -- ,length(first_name)
     -- ,last_name
     -- ,length(last_name)
     -- ,length(' Test text ')
       ,instr(job_id,'REP',1,3)
       ,instr(67145789,'9')
     -- ,instr(job_id,'REP')
      ,job_id
      ,email
From employees

Select instr(phone_number,'.',1,2)
--first_name
      --,substr(first_name,instr(lower(first_name),'e',1,1),1)
from employees
--where length(phone_number)= 12
where instr(phone_number,'.',1,2)<>0




primul e din first_name,
pe ce pozitie se afla primul 'n' care se intilneste in first_name
afisati lungimea numarului de telefon
Validam daca numarul de telefon are pentru toti 2 puncte(.)




Select first_name
    ,lpad(first_name,15,'+')
    ,rpad(first_name,8,'+')
    ,trim('  Test text  ')
    ,trim('aaTest textss')
    ,trim(leading 'e' From 'ee eestf ewdilkc' )
    ,trim(trailing 'e' From 'eeeestf ewdilkcee ee' )
    ,trim(both 'e' From lower(first_name) )
    ,trim(both 8 From 12354577888 )
from employees


select PHONE_NUMBER 
      ,first_name
      ,trim (both 6 from PHONE_NUMBER)
      ,replace(first_name,'e','TTTT')
      ,replace(phone_number,'.',' ')
from employees






---- Numeric functions

Select round(1489.4585278, 2)
      ,round(1489.4545278, -2)
      ,round(1489.4545278, 0)
      ,round(1489.4545278)
from dual


Select trunc(1489.4585278, 2)
      ,trunc(1489.4545278, -2)
      ,trunc(1489.4545278, 0)
      ,trunc(1489.4545278)
from dual


Select ceil(1489.4585278)
      ,floor(1489.4585278)
      ,floor(1485.442131)
      ,floor(-1485.442131)
from dual

Select MOD(100,7)
     ,MOD(100,5)
     ,abs(MOD(-3,2))
     ,MOD(25.6,2)
from dual


Select sysdate from dual


-- Give Simulators for certification?
-- to_date using date format










