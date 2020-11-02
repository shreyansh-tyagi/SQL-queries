create database organisation;
create table branch(
e_id int, e_name varchar(30), e_address varchar(40), 
e_age int, e_gender varchar(20), e_salary int, e_dept varchar(50),
primary key(e_id));
insert into branch values(1,'john','mumbai',38,'male',45670,'sales');
insert into branch values(2,'leena','pune',58,'female',36730,'analytics');
insert into branch values(3,'anuj','chennai',47,'male',56380,'operation');
insert into branch values(4,'shreyansh','banglore',24,'male',87340,'engineer');
insert into branch values(5,'jasmine','mumbai',43,'female',64670,'sales');
insert into branch values(6,'bravo','banglore',49,'male',48370,'engineer');

use organization;
create table department(
d_id int,
d_name varchar(50),
d_location varchar(50)
);
insert into department values(1,'analytics','mumbai');
insert into department values(2,'engineer','chennai');
insert into department values(3,'technology','delhi');
insert into department values(4,'sales','mumbai');
insert into department values (5,'operation','ghaziabad');
insert into department values (6,'custom','chennai');
insert into department values(7,'fashion design','mumbai');
insert into department values (8,'service','noida');
