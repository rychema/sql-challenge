-- Table schema 
drop table if exists departments CASCADE;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees CASCADE;
drop table if exists salaries;
drop table if exists title;

-- Create departments table
CREATE TABLE departments (
PRIMARY KEY(dept_no),
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL
);

select * from departments

-- Create title table
CREATE TABLE title (
PRIMARY KEY (title_id),
title_id VARCHAR NOT NULL,
title VARCHAR NOT NULL
);
	
select * from title

-- Create employees table 

CREATE TABLE employees (
PRIMARY KEY(emp_no),
FOREIGN KEY (emp_title_id) REFERENCES title(title_id),
emp_no INT NOT NULL,	
emp_title_id VARCHAR NOT NULL,
birth_date	VARCHAR NOT NULL,
first_name VARCHAR NOT NULL,	
last_name VARCHAR NOT NULL,	
sex VARCHAR NOT NULL,	
hire_date VARCHAR NOT NULL
);

select * from employees

-- Create dept_emp table
CREATE TABLE dept_emp (
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
emp_no	INT NOT NULL,
dept_no VARCHAR NOT NULL
);

select * from dept_emp

-- Create dept_manager table
CREATE TABLE dept_manager (
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no	VARCHAR NOT NULL,
emp_no INT NOT NULL
);

select * from dept_manager

-- Create salaries table
CREATE TABLE salaries (
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
emp_no INT NOT NULL,
salary INT NOT NULL
);

select * from salaries
