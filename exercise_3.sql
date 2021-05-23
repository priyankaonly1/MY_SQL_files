 use employees;
 
 select first_name from employees
 group by first_name;
 
 select count(first_name) from employees
 group by first_name;
 
 select 
	first_name , count(first_name) 
from 
	employees
group by 
	first_name;
    
select
	first_name, count(first_name)
from
	employees
group by first_name
order by first_name desc;

select 
	salary, count(emp_no) as emps_with_same_salary
from
	salaries
where
	salary > 80000
group by salary
order by salary;

select * from employees
having hire_date >= '2000-01-01';

select 
	first_name, count(first_name) as names_count
from
	employees
group by first_name
having count(first_name) > 250
order by first_name;
    
select * ,avg(salary) from salaries
where
	salary > 120000
group by emp_no
order by emp_no;

select *, avg(salary) from salaries
group by emp_no
having avg(salary) > 120000;

select first_name, count(first_name) from employees
where
	hire_date > '1999-01-01'
group by emp_no
having count(first_name) < 200
order by first_name;

select
	emp_no
from
	dept_emp
where
	from_date > '2000-01-01'
group by emp_no
having count(from_date) > 1
order by emp_no;

select * from salaries
order by salary
limit 10;


