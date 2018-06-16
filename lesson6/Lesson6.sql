
Select * 
From employees
--where department_id in(10,50,90)-- number/int
--where hire_date IN('07-FEB-15','29-JAN-13') --date
where first_name IN('Neena','Bruce')--string

---[A,-E] WITH LIKE IN Oracle
Select * 
From employees
--Where last_name LIKE 'T%'
--Where first_name LIKE 'T%'
--Where first_name LIKE 't%'
--Where first_name LIKE 'C___i%'
--Where first_name LIKE '___i%'
Where first_name LIKE '%t'


Select first_name||' '||last_name "full_name"
      ,job_id
      ,phone_number
From employees
Where phone_number like'6%';


select col 
from(
select 'Ion%dh' as col 
from dual
union 
select 'Ana_ejkjgd' as col 
from dual
) where col like '%/%' escape '/'



Select *
From employees
--Where commission_pct is not null
Where commission_pct is null



--livesqloracle.com show - but is null value ?



Select *
From employees
--Where commission_pct is not null
Where commission_pct is null
AND department_id=90
And first_name like'%S%'


Select *
From employees
--Where commission_pct is not null
Where commission_pct is null
AND department_id=90
AND first_name like'%S%'

-- NOT 
-- AND = *
-- OR = +

Select * 
from employees
where (department_id=60
    OR department_id=80)
AND salary>10000


Select * 
from employees
Where (email like '%T'
AND Employee_id between 100 and 300)
OR( hire_date between '01-JAN-11' and '31-DEC-12'
AND manager_id>100)


Select * 
from employees
Where (email like '%T'
AND Employee_id between 100 and 300)
OR( hire_date between '01-JAN-11' and '31-DEC-12'
AND manager_id>100)
--Order by hire_date <=> Order by hire_date  ASC
--Order by hire_date  DESC 
--Order by hire_date,salary DESC
--Order by hire_date DESC,salary DESC
Order by hire_date DESC,salary ASC


Select * from (

Select first_name a
      ,last_name b
     ,salary*12 as salary_new
from employees 
--where salary_new <>0 Wrong !!!!!
where salary*12 <>0 OK
--Order by salary_new desc

)
where a<>b








