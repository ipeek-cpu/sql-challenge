--Question 1
Select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees e join salaries s on e.emp_no = s.emp_no 
--Question 2
Select emp_no, first_name,last_name, hire_date
from employees 
where DATE_PART('year', hire_date) = '1986'
--Question 3
SELECT employees.first_name,employees.last_name,  departments.dept_no, departments.dept_name, dept_manager.emp_no 
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no
--Question 4

SELECT dept_emp.emp_no, employees.first_name,employees.last_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
--Question 5
Select first_name,last_name, sex
from employees
where first_name = 'Hercules' AND last_name LIKE 'B%'
--Question 6
SELECT departments.dept_name, employees.first_name, employees.last_name 
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' 
--Question 7
SELECT departments.dept_name, employees.first_name, employees.last_name 
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name in ('Sales' , 'Development')
--Question 8
SELECT last_name,
COUNT(last_name) AS "last name frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC
