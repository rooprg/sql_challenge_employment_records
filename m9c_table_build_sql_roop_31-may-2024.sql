-- Drop tables if exist
DROP TABLE titles;
DROP TABLE employees;
DROP TABLE departments;
DROP TABLE department_manager;
DROP TABLE department_employees;
DROP TABLE salaries;

-- Create titles table
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR(20) NOT NULL
);

-- Create employees table
CREATE TABLE employees (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	emp_title VARCHAR(6) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

-- Create departments table
CREATE TABLE departments (
	dept_no INTEGER NOT NULL PRIMARY KEY,
	dept_name VARCHAR(20) NOT NULL
);

-- Create department_manager table
CREATE TABLE department_manager (
	dept_no VARCHAR(5) NOT NULL PRIMARY KEY,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create department_employees table
CREATE TABLE department,
	dept_no VARCHAR(5) NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create salaries table
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);