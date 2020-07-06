-- 1. List the following details of each employee:
--employee number, last name, first name, sex, and salary.

select e.emp_no as employee_no, first_name, last_name, sex, salary
from employees e join salaries s on e.emp_no=s.emp_no

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees where hire_date between '1986-01-01' and '1986-12-31'

-- 3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select d.dept_no as department_no, d.dept_name as department_name,
       dm.emp_no as manager_employee_no, e.first_name, e.last_name
from departments d join dept_manager dm on d.dept_no = dm.dept_no 
join employees e on e.emp_no = dm.emp_no

-- 4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select de.emp_no as employee_no , e.first_name, e.last_name, 
       d.dept_name as department_name
from dept_emp de join employees e on de.emp_no = e.emp_no 
join departments d on de.dept_no = d.dept_no

-- 5. List first name, last name, and sex for employees 
--whose first name is "Hercules" and last names begin with "B."

select first_name,last_name,sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

-- 6. List all employees in the Sales department, 
--including their employee number,last name, first name, and department name.

SELECT  de.emp_no as employee_no, e.first_name, e.last_name, 
        d.dept_name as department_name      
FROM dept_emp de JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT  de.emp_no as employee_no, e.first_name, e.last_name, 
        d.dept_name as department_name      
FROM dept_emp de JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development'

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name. 

select last_name, count(last_name) as last_name_frequency
from employees 
group by last_name
order by last_name_frequency desc










































