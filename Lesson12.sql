Select e.employee_id
      ,e.last_name   
      ,e.first_name
from employees e
join departments d 
on e.department_id = d.department_id 
join jobs j
on e.job_id=j.job_id
join locations l
on d.location_id=l.location_id
join job_history jh
on e.employee_id = jh.employee_id
join jobs j2
on jh.job_id=j2.job_id
Union All
Select  e.employee_id
      ,e.last_name    
      ,null --as first_name      
from employees e
join departments d 
on e.department_id = d.department_id 
join jobs j
on e.job_id=j.job_id
join locations l
on d.location_id=l.location_id
join job_history jh
on e.employee_id = jh.employee_id
order by 1;

Select null
    ,'b'
    ,null
    ,'e'
From dual
Union all
Select null
    ,'b'
    ,null
    ,'e'
From dual


Select null   
From dual
Union all
Select null  
From dual;


Select e.employee_id
      ,e.last_name   
      ,e.first_name
from employees e
join departments d 
on e.department_id = d.department_id 
join jobs j
on e.job_id=j.job_id
join locations l
on d.location_id=l.location_id
join job_history jh
on e.employee_id = jh.employee_id
join jobs j2
on jh.job_id=j2.job_id
Minus
Select  e.employee_id
      ,e.last_name    
      ,e.first_name      
from employees e
join departments d 
on e.department_id = d.department_id 
join jobs j
on e.job_id=j.job_id
join locations l
on d.location_id=l.location_id
join job_history jh
on e.employee_id = jh.employee_id;

