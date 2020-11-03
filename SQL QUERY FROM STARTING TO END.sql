/*creating database*/
create database employee;
use employee ;
/* creating table that is source table*/
create table e_data (
e_id int, e_name varchar(30),e_address varchar(40),
e_age int, e_gender varchar(20),e_salary int ,e_dept varchar(50),
primary key (e_id));

/* inserting data into table */
insert into e_data values(1,'alexa','mumbai',38,'female',35886,'data analysis');
insert into e_data values(2,'sameer','noida',45,'male',45236,'data scientist');
insert into e_data values(3,'shalini','mumbai',28,'female',43286,'data administrator');
insert into e_data values(4,'shreyansh','banglore',22,'male',50400,'data scientist');
insert into e_data values(5,'jeff','chennai',59,'male',43236,'networking');
insert into e_data values(6,'bear','mumbai',43,'male',50837,'database');
insert into e_data values(7,'david','gurugram',32,'male',45886,'networking');
insert into e_data values(8,'salena','noida',39,'female',55886,'cyber security');
insert into e_data values(9,'rashal','mumbai',46,'female',67886,'data analysis');
insert into e_data values(10,'shubham','chennai',51,'male',81886,'cyber security');

/* creating table for department */

create table d_data(
d_id int ,d_name varchar(40),d_address varchar(50),
primary key(d_id));

/*inserting data into table department*/

insert into d_data values(1,'data analysis','mumbai');
insert into d_data values(2,'data scientist','banglore');
insert into d_data values(3,'data administrator','chennai');
insert into d_data values(4,'networking','noida');
insert into d_data values(5,'cyber security','banglore');
insert into d_data values(6,'sales','mumbai');
insert into d_data values(7,'production','gurugram');
insert into d_data values(8,'operational','chennai');

/* creating one more table that is target table */


create table et_data (
e_id int, e_name varchar(30),e_address varchar(40),
e_age int, e_gender varchar(20),e_salary int ,e_dept varchar(50),
primary key (e_id));

/* inserting data into table */
insert into et_data values(1,'anuj','africa',28,'male',45886,'data analysis');
insert into et_data values(2,'saleem','mumbai',35,'male',35236,'data scientist');
insert into et_data values(3,'shalu','chennai',48,'female',43286,'data administrator');
insert into et_data values(4,'shrey','america',32,'male',80900,'data scientist');
insert into et_data values(5,'john','argentina',39,'male',67236,'networking');
insert into et_data values(6,'mebin','japan',53,'male',77837,'database');
insert into et_data values(7,'albin','china',42,'male',88886,'netwoking');
insert into et_data values(8,'surbhi','russia',49,'female',100886,'cyber security');
insert into et_data values(9,'ishika','banglore',36,'female',103886,'data analysis');
insert into et_data values(10,'endew','chennai',41,'male',81886,'cyber security');


select e_name,e_salary from e_data;

select distinct e_gender from e_data;
select distinct e_dept from e_data;
select e_name from e_data where e_age>30;
select e_name, e_salary from et_data where e_age>30 and 50;
select avg(e_salary) from e_data group by e_dept;
select e_name,e_salary,e_age from e_data where e_salary between 40000 and 50000 or e_age > 40;
select e_name,e_salary,e_age from e_data where e_salary between 40000 and 50000 and e_age>40;
select * from e_data where not e_age >30;
/* like operator */
select * from e_data where e_name like ('s%');
select * from e_data where e_name like ('shrey%');
select * from e_data where e_name like ('_s');
select * from et_data where e_age between 40 and 50;


/*functions*/
select min(e_salary) from e_data;
select min(e_salary) from e_data group by e_name;
select max(e_salary) from e_data group by e_age;
select sum(e_salary) from e_data ;
select count(*) from e_data where e_salary between 40000 and 50000;
select count(*) from e_data where e_salary between 60000 and 70000 and e_age >30;
select avg(e_salary) from e_data;

/* string functions */

select ltrim('     this is shreyansh tyagi');
select upper('     this is shreyansh tyagi');
select e_name from e_data having upper(e_name);
select upper(e_name) from e_data;
select e_name from e_data having lower(e_name);
select lower(e_name) from e_data ;
select reverse(e_name) from e_data;
select substring(e_name ,1,6) from e_data;

/* order by */
select * from et_data where e_age>50 order by e_salary desc;
select e_dept,avg(e_age) from e_data group by e_dept order by avg(e_age) desc;
select e_dept,avg(e_salary) from e_data group by e_dept having avg(e_salary)>30000 order by avg(e_salary) asc;
select * from e_data;

/*update*/
update e_data
set e_dept='networking'
where e_name='david';

select e_name from e_data where e_dept='networking';

/*joins */
-- inner joins
select e_data.e_name,e_data.e_salary,e_data.e_dept,et_data.e_name,et_data.e_salary,
et_data.e_dept from e_data
inner join et_data on e_data.e_id=et_data.e_id; 

select e_data.e_name,e_data.e_dept,d_data.d_name,d_data.d_address from e_data
inner join d_data on e_data.e_dept=d_data.d_name;

-- left joins
select e_data.e_name,e_data.e_dept,e_data.e_salary,et_data.e_name,et_data.e_dept,et_data.e_salary
from e_data left join et_data on e_data.e_id=et_data.e_id;

select e_data.e_name,e_data.e_dept,d_data.d_name,d_data.d_address from e_data
left join d_data on e_data.e_dept=d_data.d_name;

-- right join
select e_data.e_name,e_data.e_dept,et_data.e_name,et_data.e_dept  from e_data
right join et_data on e_data.e_dept=et_data.e_dept;

select e_data.e_name,e_data.e_dept, d_data.d_name,d_data.d_address from e_data
right join d_data on e_data.e_dept=d_data.d_name;

-- full joins
select * from e_data full join et_data;
-- on e_data.e_dept=et_data.e_dept;

select * from e_data
full join et_data;

/*operator*/
-- union operator
select * from e_data 
union
select * from et_data;

-- union all operator
select * from e_data
union all 
select * from et_data;

select * from e_data 
Except
select * from et_data;
































































