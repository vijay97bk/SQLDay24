CREATE DATABASE Payroll_Service;
select * from sys.databases;
USE Payroll_Service;

create table employee_payroll(
id int not null identity(1,1) primary key,
name varchar(150) not null,
salary bigint not null,
start date not null,
);

insert into employee_payroll (name, salary, start)values 
('Ramesh', 15000, '2001-10-01');

select * from employee_payroll;

insert into employee_payroll (name, salary, start)
values ('Sanju', 10000, '2003-08-21');

insert into employee_payroll (name, salary, start)values 
('Dilip', 17000, '2002-06-14');

insert into employee_payroll (name, salary, start)values 
('Sachin', 7000, '2001-12-08');

select * from employee_payroll;

select Salary from employee_payroll where name='Dilip';

select * from employee_payroll where start between '2002-01-01' and  GETDATE();
