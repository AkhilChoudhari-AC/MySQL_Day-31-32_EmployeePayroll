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
insert into employee_payroll (name,salary,startDate) values('Akhil',80000,'2022-08-25');
insert into employee_payroll (name,salary,startDate) values('Mohit',60000,'2021-10-2');
insert into employee_payroll (name,salary,startDate) values('Rohit',50000,'2020-4-5');
insert into employee_payroll (name,salary,startDate) values('Tina',70000,'2022-8-12');
insert into employee_payroll (name,salary,startDate) values('Parnika',60000,'2021-6-25');

#UC4
select * from employee_payroll;

#UC5
select * from employee_payroll where name="Akhil";
select * from employee_payroll where salary=60000;
select * from employee_payroll where startDate between '2022-08-25' And date(now());

#UC6
alter table employee_payroll add gender char(1);
UPDATE employee_payroll set gender='M' where id='2';
UPDATE employee_payroll set gender = 'F' WHERE id =4;
UPDATE employee_payroll set gender = 'M' WHERE id =5;

#UC7
select gender,sum(salary) from employee_payroll group by gender; 
select gender,min(salary) from employee_payroll;
select gender,max(salary) from employee_payroll;
select gender,avg(salary) from employee_payroll;
select count(salary) from employee_payroll;
set sql_safe_updates=0;

#UC8
alter table employee_payroll add phone_number varchar(13) after name;
alter table employee_payroll add address varchar(200) after phone_number;
alter table employee_payroll add department varchar(100) not null after address;
alter table employee_payroll alter address set default 'TBD';
insert into employee_payroll (id,name,phone_number,address,department,salary,startDate,gender) 
values(8,'Rohit','9998887771','pune','IT', 70000, '2018-08-11','M');

#UC9
alter table employee_payroll rename column salary to basic_pay;
alter table employee_payroll add deductions double not null after basic_pay;
alter table employee_payroll add taxable_pay double not null after deductions;
alter table employee_payroll add tax double not null after taxable_pay;
alter table employee_payroll add net_pay double not null after tax;