SELECT 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.sex, 
	salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.salary;

SELECT
	employees.first_name,
	employees.last_name,
	employees.hire_date
FROM employees
WHERE date_part('year', hire_date) = 1986;

SELECT
	employees.first_name,
	employees.last_name,
	dept_manager.emp_no,
	departments.dept_no,
	departments.dept_name
FROM employees
INNER JOIN dept_manager ON
employees.emp_no=dept_manager.emp_no
INNER JOIN departments ON
dept_manager.dept_no=departments.dept_no;

SELECT
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	dept_emp.dept_no,
	departments.dept_name
FROM employees
INNER JOIN dept_emp ON 
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no;

SELECT
	employees.first_name,
	employees.last_name,
	employees.sex
FROM employees
WHERE 
		first_name = 'Hercules'
		AND last_name LIKE 'B%';
		
SELECT
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	dept_emp.dept_no,
	departments.dept_name
FROM employees
INNER JOIN dept_emp ON 
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales';

SELECT
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	dept_emp.dept_no,
	departments.dept_name
FROM employees
INNER JOIN dept_emp ON 
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE 
		departments.dept_name = 'Sales'
		OR departments.dept_name = 'Development';
		
SELECT 
	last_name AS "Employee Last Name",
	COUNT(last_name) AS "Count of Last Name"
FROM employees
GROUP BY (last_name)
ORDER BY "Count of Last Name" DESC;