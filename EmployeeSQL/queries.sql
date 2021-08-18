-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
LEFT JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
-- Changed data type in order to use wild card for hire_date
ALTER TABLE employees
ALTER COLUMN hire_date TYPE VARCHAR;

SELECT first_name,
	last_name,
	hire_date
FROM employees
WHERE hire_date LIKE '1986%';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
FROM departments
LEFT JOIN dept_manager ON 
departments.dept_no = dept_manager.dept_no
LEFT JOIN employees ON
employees.emp_no = dept_manager.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.