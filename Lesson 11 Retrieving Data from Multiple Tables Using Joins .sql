/*Retrieving Records with Natural Joins*/
SELECT employee_id,job_id,job_title
from employees  NATURAL JOIN jobs;
 select *
 from jobs;
 select *
 from ad_exam_details NATURAL JOIN ad_exam_results;
 
 SELECT employee_id, last_name,location_id, department_id,department_name
 FROM employees  NATURAL JOIN departments;
/* Using Table Aliases with the USING Clause*/ 
select l.city,d.department_name, d.department_id,l.state_province
from locations l join departments d
USING (location_id)
where location_id=1400;
select * from locations;

select first_name, d.department_name,d.manager_id, department_id
FROM employees  JOIN  departments d 
USING (department_id)
WHERE department_id=50;
/* Retrieving  Records with ON CLAUSE*/
SELECT e.employee_id, e.last_name,e.department_id,d.department_id,d.location_id
FROM employees e Join departments d
ON  e.department_id=d.department_id;

/*Creatin Three Way Joins*/
SELECT employee_id ,city,department_name
FROM EMPLOYEES e Join departments d
ON e.department_id=d.department_id
JOIN locations l 
ON l.location_id=d.location_id;

SELECT employee_id ,city,department_name
FROM EMPLOYEES e Join departments d
USING (department_id)
JOIN locations l 
USING  (location_id);
/* Self-Joins  Using  the ON Clause*/
select  worker.last_name emp, manager.last_name mgr,j.job_title,worker.manager_id,worker.employee_id
FROM employees worker JOIN employees manager
ON worker.manager_id=manager.employee_id
JOIN jobs j
ON j.job_id=worker.job_id;
select*
from employees
where manager_id=employee_id



