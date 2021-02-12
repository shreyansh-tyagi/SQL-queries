use organisation;
create table employee(
e_id int, e_name varchar(50),e_gender varchar(10),
e_age int, e_salary int, e_dept varchar(50),
primary key(e_id)
);

insert into employee values(1,'shreyansh','m',21,2000,'data scientist');select * from employee;
select e_age from employee;


insert into employee values(2,'ravi','m',22,3000,'react module');
insert into employee values(3,'rashika','f',23,4000,'data analyst');
insert into employee values(4,'sneha','f',21,5000,'engineer');
