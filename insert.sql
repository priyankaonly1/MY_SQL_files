use employees;

insert into employees
(
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
) values
(
	999901,
    '1986-04-21',
    'Jhon',
    'smith',
    'M',
    '2011-01-01'
);


select * from employees                       --  to see the changes-- 
order by emp_no desc;

select * from titles
limit 10;

describe titles;
INSERT INTO employees
VALUES
(

    999903,

    '1977-09-14',

    'Johnathan',

    'Creek',

    'M',

    '1999-01-01'

);




insert into titles
(
	emp_no,
    title,
    from_date
) 
values
(
	999903,
    'senior engineer',
    '1997-10-01'
);

select * from titles
order by emp_no desc;

select * from dept_emp
order by emp_no desc 
limit 10;

insert into dept_emp
(
	emp_no,
    dept_no,
    from_date,
    to_date
)
values
(
	999903,
    'd005',
    '1997-10-01',
    '9999-01-01'
);

															--  insert data into a new table(duplicate)--
use employees;

select * from departments
limit 10;   

create table departments_dup
(
	dept_no char(4) not null,
    dept_name varchar(40) not null
);

select * from departments_dup;

insert into departments_dup
(
	dept_no,
    dept_name
)
select * from departments;
    
select * from departments_dup
order by dept_no;

commit;

insert into departments
values
(
	'd010',
    'Business Analysis'
);

select * from departments;





