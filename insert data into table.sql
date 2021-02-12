use organisation;
create table employee(
e_id int, e_name varchar(50),e_gender varchar(10),
e_age int, e_salary int, e_dept varchar(50),
primary key(e_id)
);

insert into employee values(1,'shreyansh','m',21,2000,'data scientist');select * from employee;
select e_age from employee;


