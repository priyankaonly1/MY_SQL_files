###########  aggregate function with join  ###############
use employees;

select 
	e.gender, avg(s.salary) as average_salary
from
	employees e
      join 
	salaries s on e.emp_no = s.emp_no
group by gender;


################   join more than two tables  ################

select
	e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
from
	employees e
     join
	dept_manager m on e.emp_no = m.emp_no
      join
	departments d on m.dept_no = d.dept_no;
    
############ ###############3

select
	e.gender, count(dm.emp_no)
from
	employees e
     join
	dept_manager dm on e.emp_no = dm.emp_no
group by gender;

##############   union vs union all  ################

-- create employees dup

drop table if exists employees_dup;

create table employees_dup(
	emp_no int(11),
    birth_date date,
    first_name varchar(14),
    last_name varchar(16),
    gender enum('M','F'),
    hire_date date
);

insert into employees_dup
select
	e.*
from
	employees e
limit 20;
 
insert into employees_dup
values('10001','1953-09--02','Georgi','Facello','M','1986-06-26');

-- check--

select
	*
from
	employees_dup;
    
    
###############################

select
	e.emp_no,
    e.first_name,
    e.last_name,
    