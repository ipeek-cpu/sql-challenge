Select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees e join salaries s on e.emp_no = s.emp_no 