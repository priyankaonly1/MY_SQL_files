use employees;

select first_name,last_name from employees;

select * from employees
where first_name = 'denis' and gender = 'M';

select * from employees
where first_name ='Denis' or first_name = 'elvis';

select * from employees
where first_name = 'denis' and (gender = 'M' or gender = 'F');

select * from employees
where gender ='F' and (first_name = 'kellie' or first_name = 'Aruna');

select * from employees
where first_name in ('cathie','mark','nathan');

select * from employees
where first_name not in('cathie','mark','nathan');

select * from employees
where first_name like ('mark%');

select * from employees
where first_name like ('%ar');

select * from employees
where first_name like('%mar%');

select * from employees
where first_name not like ('%mar%');

select * from employees
where first_name like ('mar_');

select * from employees
where hire_date like ('%2000%');

select * from employees
where emp_no like ('1000_');