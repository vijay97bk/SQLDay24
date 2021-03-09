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

alter table employee_payroll
add gender char(1);

update employee_payroll set gender='m' where id between 1 and 4;

insert into employee_payroll (name, salary, start, gender)
values ('Rohini', 12000, '2002-02-14', 'f');

insert into employee_payroll (name, salary, start, gender)
values ('Neha', 22000, '2000-04-18', 'f'),('Lata', 18000, '2004-01-30', 'f');

select sum(salary) from employee_payroll where gender='f';
select avg(salary) from employee_payroll where gender='f';
select min(salary) from employee_payroll where gender='f';
select max(salary) from employee_payroll where gender='f';

alter table employee_payroll
add phone bigint,
address varchar(150) not null default 'India',
department varchar(20) not null default 'HR';

update employee_payroll set address='USA' where id = 2;
update employee_payroll set address='USA' where id = 6;
update employee_payroll set address='UAE' where id = 1;
update employee_payroll set address='UK' where id = 3;

sp_rename 'employee_payroll.salary','basic_pay', 'COLUMN';

alter table employee_payroll
add deduction int, taxable_pay int, income_tax int, net_pay int;

