use employees;

select * from employees
where
	hire_date between '1990-01-01' and '2000-01-01';
    
select * from employees
where
	hire_date not between '1990-01-01' and '2000-01-01';
    
select * from salaries
where
	salary between 66000 and 70000;
    
select * from employees
where
	emp_no not between '10004' and '10012';
    
select dept_name from departments
where
	dept_no between 'd003' and 'd006';
    
select * from employees
where
	first_name is not null;
    
select dept_name from departments
where
	dept_no is not null;
    
select * from employees
where
	first_name <> 'mark';
    
select * from employees
where
	hire_date > '2000-01-01';
    
select * from employees
where
	hire_date >= '2000-01-01' and gender = 'F';
    
select distinct gender from employees;

select distinct hire_date from employees;

select count(emp_no) from employees;

select
	count(distinct first_name)
from
	employees;
    
select count(*) from salaries
where
	salary >= 100000;

select count(*) from dept_manager;
	
select * from employees
order by first_name;

select * from employees
order by first_name desc;

select * from employees
order by hire_date desc;

select * from employees;

insert into employees
values
(
	999908,
    '1995-01-01',
    'priyanka',
    'biswas',
    'F',
    '1999-01-12'
);

select * from employees
order by emp_no desc;






    
    