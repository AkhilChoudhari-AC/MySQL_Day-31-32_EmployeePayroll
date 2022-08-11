#UC1
create database payroll_service;
show databases;
use payroll_service;
select database();
#UC2
create table employee_payroll( id int not null auto_increment,name varchar(50) not null, salary Double not null,startDate date not null, primary key(id));
desc employee_payroll;

#UC3
select * from employee_payroll;
insert into employee_payroll (name,salary,startDate) values('Akhil',80000,'2022-8-25');
insert into employee_payroll (name,salary,startDate) values('Mohit',60000,'2021-10-2');
insert into employee_payroll (name,salary,startDate) values('Rohit',50000,'2020-4-5');
insert into employee_payroll (name,salary,startDate) values('Tina',70000,'2022-8-12');
insert into employee_payroll (name,salary,startDate) values('Parnika',60000,'2021-6-25');