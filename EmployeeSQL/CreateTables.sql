CREATE TABLE salaries (
	emp_no INTEGER ,
	salary INTEGER NOT NULL,
	CONSTRAINT fk_emp
	FOREIGN KEY(emp_no)
	REFERENCES employees
);
CREATE TABLE titles (
	emp_title_id varchar(25) FOREIGN KEY,
	salary INTEGER,
)
CREATE TABLE departments (
	dept_no varchar(30) PRIMARY KEY,
	salary NUMERIC,
)
CREATE TABLE dept_manager (
	dept_no varchar(30)REFERENCES departments(dept_no),
	emp_no INTEGER REFERENCES employees(emp_no)
)
CREATE TABLE dept_emp (
	emp_no INTEGER ,
	dept_no varchar(30),
	CONSTRAINT fk_emp, fk_dept
	FOREIGN KEY(emp_no,dept_no)
	REFERENCES departments(dept_no), employees(emp_no)
)
