CREATE DATABASE Payroll_Service;
USE Payroll_Service;
create table employee_payroll(
id int not null identity(1,1) primary key,
name varchar(150) not null,
salary bigint not null,
start date not null,
);

