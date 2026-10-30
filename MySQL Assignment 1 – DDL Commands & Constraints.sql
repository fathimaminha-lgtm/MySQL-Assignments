create database employee;
use employee;
create table Departments(
department_id int ,department_name varchar(100));
select * from departments;
create table Location(location_id int,location varchar(30));
select * from location;
create table Employees(
employee_id int,
employee_name varchar(50),
gender enum('M','F'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10.2));
select*from employees;

alter table employees add column email varchar(100);
select email from employees;

alter table employees modify designation varchar(200);
alter table employees drop column age;
select*from employees;

alter table employees rename column hire_date to date_of_joining;
select date_of_joining from employees;

rename table departments to Department_info;
rename table location to Locations;
truncate table employees;
drop table employees;
drop database employee;


create database if not exists employee;
use employee;
create table departments(department_id int primary key,department_name varchar(100)not null unique);
select*from departments;
create table location(location_id int auto_increment primary key,location varchar(30)not null unique);
select*from location;
create table employees(employee_id int primary key,
employee_name varchar(50)not null,
gender enum('M','F'),
age int check(age>=18),
hire_date date default(current_date()),
designation varchar(100),
department_id int,
 FOREIGN KEY (department_id)REFERENCES departments(department_id),
location_id int,
foreign key(location_id)references location(location_id),
salary decimal(10.2));
select*from employees;