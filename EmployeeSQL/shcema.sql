-- Create departments table
create table departments(dept_no varchar primary key not null,
						 dept_name varchar not null);
						 
						 
-- Create dept_emp table
create table dept_emp(emp_no int,
					  dept_no varchar not null,
					  foreign key (emp_no) references employees(emp_no),
					  foreign key (dept_no) references departments(dept_no));
					  


-- Create dept_manager table
create table dept_manager(dept_no varchar not null,
						  emp_no int,
						  foreign key (dept_no) references departments(dept_no),
						  foreign key (emp_no) references employees(emp_no));						 


-- Create employees table
create table employees(emp_no int primary key not null,
					   emp_title_id varchar not null,
					   birth_date varchar not null,
					   first_name varchar not null,
					   last_name varchar not null,
					   sex varchar not null,
					   hire_date varchar not null,
					   foreign key (emp_title_id) references titles(title_id));


-- Create salaries table
create table salaries(emp_no int not null,
					  salary int, 
					  foreign key (emp_no) references employees(emp_no));


-- Create titles table
create table titles(title_id varchar primary key not null,
					title varchar not null);


select * from departments;

select * from dept_emp;

select * from dept_manager;

select * from employees;

select * from salaries;

select * from titles;