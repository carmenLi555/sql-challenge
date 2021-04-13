Titles 
-
title_name VARCHAR
title_id VARCHAR  pk

Salaries 
-
emp_no int fk >- Employees.emp_no
salary int

Employees 
-
emp_no int pk
emp_title_id varchar fk >- Titles.title_id
birth_date time
first_name varchar
last_name varchar 
sex varchar 
hire_date time 

dept_manager
-
dept_no varchar fk  >- departments.dept_no
emp_no int fk  >- Employees.emp_no

dept_emp
-
emp_no int fk  >- Employees.emp_no
dept_no varchar fk  >- departments.dept_no

departments
-
dept_no varchar 
dept_name varchar 