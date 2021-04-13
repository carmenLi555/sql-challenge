-- List the following details of each employee: employee number, last name, first name, sex, and salary.

select employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
from salaries
inner join employees on 
employees.emp_no = salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986. 

select first_name, last_name, hire_date from employees
where hire_date >='1985-12-31'
and hire_date <= '1987-01-01';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select dept_manager.dept_no, 
departments.dept_name,
dept_manager.emp_no, 
employees.first_name, 
employees.last_name
from dept_manager
inner join departments on 
dept_manager.dept_no = departments.dept_no
inner join employees on 
dept_manager.emp_no=employees.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.first_name, 
employees.last_name, departments.dept_name
from dept_emp
inner join employees on 
dept_emp.emp_no = employees.emp_no
inner join departments on
dept_emp.dept_no=departments.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."
select first_name, last_name, sex from employees
where first_name = 'Hercules'
and last_name Like 'B%';

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.first_name, employees.last_name,departments.dept_name
from dept_emp
inner join employees on 
dept_emp.emp_no=employees.emp_no
inner join departments on 
dept_emp.dept_no=departments.dept_no
where departments.dept_no = 'd007';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.first_name, employees.last_name,departments.dept_name
from dept_emp
inner join employees on 
dept_emp.emp_no=employees.emp_no
inner join departments on 
dept_emp.dept_no=departments.dept_no
where departments.dept_no = 'd007'
or departments.dept_no = 'd005';

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;