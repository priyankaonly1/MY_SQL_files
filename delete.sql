use employees;

select * from titles
where
	emp_no = 999903;
    
delete from employees
where
	emp_no = 999903;
    
select * from employees
where
	emp_no = 999903;
    
select * from titles
where
	emp_no = 999903;
    
select * from departments_dup
order by dept_no;

delete from departments_dup;

insert into departments_dup
(
	dept_no,
    dept_name
)
select * from departments;


select * from departments_dup
order by dept_no;

#######################################
delete from departments
where
	dept_no = 'd010';

select * from departments;