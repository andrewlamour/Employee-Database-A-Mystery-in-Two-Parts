-- Create employees table
create table employees (
	emp_no INT PRIMARY KEY NOT NULL,
	title_id VARCHAR (10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	gender VARCHAR(1)NOT NULL,
	hire_date DATE NOT NULL
);

COPY employees FROM '/Users/andrewlamour/Public/employees.csv' DELIMITER ',' CSV HEADER;


-- Create departments table

create table departments (
	dept_no VARCHAR(8) primary key NOT NULL,
	dept_name VARCHAR(40) NOT NULL
);

COPY departments FROM '/Users/andrewlamour/Public/departments.csv' DELIMITER ',' CSV HEADER;



-- Create titles table
create table titles (
	title_id VARCHAR (10) NOT NULL,
	title VARCHAR(40) NOT NULL

);

COPY titles FROM '/Users/andrewlamour/Public/titles.csv' DELIMITER ',' CSV HEADER;

-- Create department employee table
create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
  	foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

COPY dept_emp FROM '/Users/andrewlamour/Public/dept_emp.csv' DELIMITER ',' CSV HEADER;


-- Create salaries table
create table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
    foreign key (emp_no) references employees (emp_no)
);

COPY salaries FROM '/Users/andrewlamour/Public/salaries.csv' DELIMITER ',' CSV HEADER;



-- Create Department manager table
create table dept_manager (
	dept_no VARCHAR(8) NOT NULL,
	emp_no INT NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

COPY dept_manager FROM '/Users/andrewlamour/Public/dept_manager.csv' DELIMITER ',' CSV HEADER;

