CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR,
	PRIMARY KEY (title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR, 
	PRIMARY KEY (dept_no)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
