use employees;

select * from departments_dup;

alter table departments_dup
drop column dept_manager;

alter table departments_dup
change column dept_no dept_no char(4) null;

alter table departments_dup
change column dept_name dept_name varchar(40) null;

###################################### create dept_manager_dup  ##########################################################################################

create table dept_manager_dup(
	emp_no int(11) not null,
    dept_no char(4) null,
    from_date date not null,
    to_date date null
);

insert into dept_manager_dup
select * from dept_manager;

select * from dept_manager_dup;

insert into dept_manager_dup(
	emp_no,
    from_date
) values
	(999904,'2017-01-01'),
    (999905,'2017-01-01'),
    (999906,'2017-01-01'),
    (999907,'2017-01-01');
    
delete from dept_manager_dup
where
	dept_no = 'd001';
    
insert into departments_dup (dept_name)
values ('Public ralations');

delete from departments_dup
where
	dept_no = 'd002';
###########################           Inner Join       #################################

select * from dept_manager_dup
order by dept_no;

select * from departments_dup
order by dept_no;

select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
		inner join
	departments_dup d on m.dept_no = d.dept_no
group by m.emp_no
order by m.dept_no;

########################

select 
	e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
from
	employees e
     join
    dept_manager dm on e.emp_no = dm.emp_no;
#########################

insert into dept_manager_dup
values('110228','d003','1992-03-21','9999-01-01');

insert into departments_dup
values ('d009','Customer service');

######################    left join   ###############

select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
		left join
	departments_dup d on m.dept_no = d.dept_no
group by m.emp_no
order by m.dept_no;

##################

select d.dept_no, m.emp_no, d.dept_name
from departments_dup d
		left join
	dept_manager_dup m on m.dept_no = d.dept_no
order by m.dept_no;

##################

select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
		left join
	departments_dup d on m.dept_no = d.dept_no
where
	dept_name is null
group by m.dept_no;

###################
select e.emp_no, e.first_name, e.last_name, dm.dept_no, dm.from_date
from employees e
	left join
	dept_manager dm on e.emp_no = dm.emp_no
where
	e.last_name = 'Markovitch'
order by dm.dept_no desc, e.emp_no;

##################################    right join   ###############################
