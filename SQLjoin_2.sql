set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');

use employees;

#################### right join  ##########################

select m.dept_no, m.emp_no, d.dept_name
from
	dept_manager_dup m
       right join
   departments_dup d on m.dept_no = d.dept_no
order by dept_no;

############ new and old join  ######################

####### new join ########

select
	m.dept_no, m.emp_no, d.dept_name
from  dept_manager_dup m
		inner join
	departments_dup d on m.dept_no = d.dept_no
group by emp_no
order by m.dept_no;

#########  old join   #########

select
	m.dept_no, m.emp_no, d.dept_name
from  
	dept_manager_dup m,
	departments_dup d 
where
	m.dept_no = d.dept_no
group by emp_no
order by m.dept_no;

##########  join and where  #############

select 
	e.emp_no, e.first_name, e.last_name, s.salary
from
	employees e
       join
   salaries s on e.emp_no = s.emp_no
where
	s.salary > 145000;
    
##################

select
	e.first_name, e.last_name, e.hire_date, t.title
from
	employees e
      join
	titles t on e.emp_no = t.emp_no
where
	first_name = 'Margareta'
    and last_name = 'Markovitch'
order by e.emp_no;

#############    cross join   #################

select
	dm.*, d.*
from
	dept_manager dm
      cross join
	departments d
order by dm.emp_no, d.dept_no;

select
	e.*, d.*
from
	departments d
    cross join
    dept_manager dm
      join
	employees e on dm.emp_no = e.emp_no
where
	d.dept_no <> dm.dept_no
order by dm.emp_no, d.dept_no;
   
   
select
	dm.*, d.*
from
	departments d
     cross join
	dept_manager dm
where
	d.dept_no = 'd009'
order by d.dept_no;

############  aggregate function with join   ###############