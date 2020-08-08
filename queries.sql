
--- Q1 --------

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON employees.emp_no=salaries.emp_no;

--- Q2 --------

SELECT first_name, last_name, hire_date from employees
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'
ORDER BY hire_date ASC;

--- Q3 --------

SELECT employees.emp_no, dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_manager ON employees.emp_no=dept_manager.emp_no
INNER JOIN departments ON dept_manager.dept_no=departments.dept_no;

--- Q4 --------

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no
FROM dept_emp
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no;

--- Q5 --------

select first_name, last_name, sex from employees
WHERE first_name = 'Hercules'
AND last_name like 'B%';

--- Q6 --------

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
where dept_name = 'Sales';

--- Q7 --------

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
where dept_name in ('Sales', 'Development');

--- Q8 --------

SELECT last_name, COUNT(*) 
FROM employees 
GROUP BY last_name
ORDER BY count desc;