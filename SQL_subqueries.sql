use employees;

select * from dept_manager;

###########################

select
	e.first_name, e.last_name
from
	employees e
where
	e.emp_no in (select
						dm.emp_no
					from
						dept_manager dm);
                        
                        
################################################33

select * from dept_manager
where
	emp_no in (select emp_no from employees
				where
					hire_date between '1990-01-01' and '1995-01-01');
                    
                    
##############################################

select
	e.first_name, e.last_name
from
	employees e
where
	exists (select * from dept_manager dm 
			where
				dm.emp_no = e.emp_no);
                
                
###########################################


-- select * from employees e
-- where 	
-- 	exists (select * from titles
-- 		where
-- 			t.emp_no = e.emp_no
--         and title = 'Assistant Engineer');    


###########################################

select 
	emp_no
from
	dept_manager
where
	emp_no = 110022;
    









