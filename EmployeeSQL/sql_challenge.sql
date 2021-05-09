drop table if exists departments
drop table if exists dept_emp
drop table if exists dept_manager
drop table if exists employees
drop table if exists salaries
drop table if exists titles

create table departments(
	dept_no varchar(20) not null,
	dept_name varchar(50) not null
);

select * from departments

create table dept_emp(
	emp_no int,
	dept_no varchar(20) not null
);

select * from dept_emp

create table dept_manager(
	dept_no  varchar(20) not null,
	emp_no int
);

select * from dept_manager

create table employees(
	emp_no int,
	emp_title_id varchar(20) not null,
	birth_date date,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(1) not null,
	hire_date date
);

select * from employees

create table salaries (
	emp_no int,
	salary int
);

select * from salaries

create table titles (
	title_id varchar(20),
	title varchar(30)
);

select * from titles

--List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.first_name, 
employees.last_name, employees.sex, salaries.salary
from employees
left join salaries 
on salaries.emp_no = employees.emp_no

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date 
from employees
where hire_date between '1986-01-01' and '1986-12-31'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.first_name, employees.last_name
from dept_manager
left join departments
on departments.dept_no = dept_manager.dept_no
left join employees
on dept_manager.emp_no = employees.emp_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp
on employees.emp_no = dept_emp.emp_no
left join departments
on departments.dept_no = dept_emp.dept_no

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees 
left join dept_emp
on employees.emp_no = dept_emp.emp_no
left join departments
on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees 
left join dept_emp
on employees.emp_no = dept_emp.emp_no
left join departments
on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales' or dept_name = 'Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,
count(last_name) as "frequency"
from employees
group by last_name
order by
count(last_name) desc

select * from employees
where emp_no = 499942