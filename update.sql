use employees;

select * from employees
where emp_no = 999901;

update employees
set
	first_name = 'stella',
    gender = 'f'
where emp_no = 999901;

select * from employees
order by emp_no desc
limit 10;
    
select * from titles
order by emp_no desc
limit 10;

update titles
set
	emp_no = 499998
where emp_no = 499999;

select * from titles
order by emp_no desc
limit 10;


    
    