--- create tables --------

CREATE TABLE titles (
        title_id VARCHAR NOT NULL PRIMARY KEY,
        title VARCHAR NOT NULL
);

SELECT * FROM titles;

CREATE TABLE departments (
        dept_no VARCHAR NOT NULL PRIMARY KEY,
        dept_name VARCHAR NOT NULL
);

SELECT * FROM departments;

CREATE TABLE dept_emp (
        emp_no INTEGER,
        dept_no VARCHAR(255) NOT NULL
);

SELECT * from dept_emp;

ALTER DATABASE sql_challenge_db SET datestyle TO "ISO, MDY";

CREATE TABLE employees (
        emp_no INTEGER PRIMARY KEY,
        emp_title_id VARCHAR(255) NOT NULL,
        birth_date DATE,
        first_name VARCHAR(255) NOT NULL,
        last_name VARCHAR(255) NOT NULL,
        sex VARCHAR(255) NOT NULL,
        hire_date DATE,
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * from employees;

CREATE TABLE salaries (
        emp_no INT,
        salary INT
);



CREATE TABLE dept_manager (
        dept_no VARCHAR(255) NOT NULL,
        emp_no INTEGER
);

SELECT * from dept_manager;
