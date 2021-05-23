##############   count()   ################
use employees;

select * from salaries
order by salary desc
limit 10;

select count(salary)
from salaries;

select count(from_date)
from salaries;

select count(distinct from_date)
from salaries;

select count(*)
from salaries;

select count(distinct dept_no)
from dept_emp;

#############   sum()    #################

select sum(salary)
from salaries;

select sum(salary)
from salaries
where
	from_date > '1997-01-01';
    
############ max()  and   min() ##################

select max(salary)
from salaries;

select min(salary)
from salaries;

select min(emp_no)
from employees;


################   avg()   ##################

select avg(salary)
from salaries;

select avg(salary)
from salaries
where
	from_date > '1997-01-01';
    
##############  round()   ################

select
	round(avg(salary))
from
	salaries;
    
select round(avg(salary),2)
from salaries;
    
select round(avg(salary),2)
from salaries
where
	from_date > '1997-01-01';
    
############ coalesce()   ####################

select * from departments_dup;

alter table departments_dup
change column dept_name dept_name varchar(40) null;

insert into departments_dup(dept_no)
values('d010') , ('d011');

select * from departments_dup
order by dept_no asc;

alter table departments_dup
add column dept_manager varchar (255) null after dept_name;

select * from departments_dup;

commit;

select dept_no,
	ifnull(dept_name,
			'Department name not provided') as dept_name
            
from departments_dup;

select dept_no,
	coalesce(dept_name,'Department name not provided') as dept_name
            
from departments_dup;

select dept_no, dept_name,
	coalesce(dept_manager, dept_name, 'N/A') as dept_manager
from departments_dup
order by dept_no asc;

select dept_no, dept_name,
	coalesce('department manager name') as fake_col
from departments_dup;

select dept_no, dept_name,
	coalesce(dept_no, dept_name) as dept_info
from departments_dup
order by dept_no asc;

select 
	ifnull(dept_no,'N/A') as dept_no,
    ifnull(dept_name,'Department name not provided') as dept_name,
    coalesce(dept_no, dept_name) as dept_info
from departments_dup
order by dept_no asc;
