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
select * from et_data;
select e_name, e_salary from et_data where e_age between 40 and 50;
select e_name ,e_salary from et_data where e_age =30 and e_age=50;
select avg(e_salary),e_dept from e_data group by e_dept;
select e_name,e_salary,e_age from e_data where e_salary between 40000 and 50000 or e_age > 40;
select e_name,e_salary,e_age from e_data where e_salary between 40000 and 50000 and e_age>40;
select * from e_data where not e_age >30;
/* like operator */
select * from e_data where e_name like ('s%');
select * from e_data where e_name like ('shrey%');
select * from e_data where e_name like ('_h');
select * from e_data where e_name like ('s_');
select * from e_data where e_name like ('%h');
select * from et_data where e_age between 40 and 50;


/*functions*/
select min(e_salary) from e_data;
select min(e_salary) from e_data group by e_name;
select min(e_salary) from e_data group by e_dept;
select max(e_salary) from e_data group by e_age;
select max(e_salary) from e_data group by e_age; 
select sum(e_salary) from e_data ;
select count(*) from e_data where e_salary between 40000 and 50000;
select count(*) from e_data where e_salary between 60000 and 70000 and e_age >30;
select avg(e_salary) from e_data;

/* string functions */

select ltrim('     this is shreyansh tyagi');
select upper('     this is shreyansh tyagi');
select upper(e_name) from e_data;
select lower(e_name) from e_data ;
select reverse(e_name) from e_data;
select substring(e_name ,1,6) from e_data;
select substring(e_name,3,8) from e_data;
/* order by */
select * from et_data where e_age>50 order by e_salary desc;
select e_dept,avg(e_age) from e_data group by e_dept order by avg(e_age) desc;
select e_dept,avg(e_salary) from e_data group by e_dept having avg(e_salary)>30000 order by avg(e_salary) asc;
select * from e_data;
select e_dept, avg(e_salary) as group_by_dept from e_data group by e_dept having avg(e_salary)>30000 order by avg(e_salary) asc;
select * from e_data;
select * from e_data where e_dept='networking';
/*update*/
update e_data
set e_dept=' internet networking'
where e_id=5;
select * from e_data;
select e_name from e_data where e_dept='internet networking';
select e_id,e_name from e_data where e_dept='networking';

/*joins */
-- inner joins
select e_data.e_name,e_data.e_salary,e_data.e_dept,et_data.e_name,et_data.e_salary,
et_data.e_dept from e_data
inner join et_data on e_data.e_id=et_data.e_id; 

select e_data.e_name,e_data.e_salary,e_data.e_dept,et_data.e_name,et_data.e_salary,et_data.e_dept 
from e_data inner join et_data on e_data.e_dept=et_data.e_dept;

select e_data.e_name,e_data.e_dept,d_data.d_name,d_data.d_address from e_data
inner join d_data on e_data.e_dept=d_data.d_name;

-- left joins
select e_data.e_name,e_data.e_dept,e_data.e_salary,et_data.e_name,et_data.e_dept,et_data.e_salary
from e_data left join et_data on e_data.e_id=et_data.e_id;

select e_data.e_name,e_data.e_dept,d_data.d_name,d_data.d_address from e_data
left join d_data on e_data.e_dept=d_data.d_name;
use employee;
-- right join
select e_data.e_name,e_data.e_dept,et_data.e_name,et_data.e_dept  from e_data
right join et_data on e_data.e_dept=et_data.e_dept;

select e_data.e_name,e_data.e_dept, d_data.d_name,d_data.d_address from e_data
right join d_data on e_data.e_dept=d_data.d_name;

select e_data.e_name,e_data.e_salary,e_data.e_dept,et_data.e_name,et_data.e_salary,et_data.e_dept 
from e_data right join et_data on e_data.e_dept=et_data.e_dept;

-- full joins
select * from e_data full join et_data on e_data.e_dept=et_data.e_dept;
-- on e_data.e_dept=et_data.e_dept;
select * from e_data full join et_data on e_data.e_id=et_data.e_id;
select * from e_data
full join et_data on e_data.e_age=et_data.e_age;

select e_data.e_name,e_data.e_salary,e_data.e_dept,et_data.e_name,et_data.e_salary,et_data.e_dept
from e_data full join et_data on e_data.e_dept=et_data.e_dept;
select * from e_data;
select * from d_data;


-- update using joins
update e_data set e_age = e_age + 10
from e_data join d_data on e_data.e_address=d_data.d_address where d_address ='mumbai';
select * from e_data;

update et_data set e_salary = e_salary +10
from et_data join d_data on et_data.e_age>30;

update e_data set e_salary =e_salary+10000
from e_data join d_data on e_data.e_dept=d_data.d_name where d_name ='data scientist';

update e_data set e_salary+=1000
from e_data join et_data on e_data.e_dept=et_data.e_dept;
select * from e_data;

-- delete using joins
-- deleting a particular row from e_data whose name is salena and id is 8
delete e_data from e_data join d_data on e_data.e_id=d_data.d_id where d_id =8;

insert into e_data values(8,'salena','mumbai',34,'female',65425,'cyber security');


/*operator*/
-- union operator
select * from e_data 
union
select * from et_data;

-- union all operator
select * from e_data
union all 
select * from et_data;

-- except operator
select * from e_data 
Except
select * from et_data; 

--intersect operator
select * from e_data
intersect
select * from et_data;



-- creating view 
create view female_employee as select * from e_data where e_gender='female';
create view male_employee as select * from et_data where e_gender='male';
select * from female_employee;
select * from male_employee;


-- now some operation on view table
select e_name,e_salary from female_employee where e_salary between 30000 and 50000;
select avg(e_salary) ,e_dept from female_employee group by e_dept order by avg(e_salary) desc;
select max(e_age) from female_employee;
select sum(e_salary) from female_employee;
select * from female_employee where e_salary>40000 and e_age>30;

select e_name,e_age from male_employee where e_salary between 30000 and 45000;
select * from female_employee full join male_employee on female_employee.e_id=male_employee.e_id;
select * from male_employee full join female_employee  on female_employee.e_id=male_employee.e_id;

select * from male_employee full join female_employee  on male_employee.e_id=female_employee.e_id;

select male_employee.e_name,male_employee.e_dept,female_employee.e_name,female_employee.e_dept from male_employee 
inner join female_employee on female_employee.e_id=male_employee.e_id;

select male_employee.e_name,male_employee.e_dept,female_employee.e_name,female_employee.e_dept
from male_employee right join female_employee on male_employee.e_id=female_employee.e_id;

select male_employee.e_name,male_employee.e_dept,female_employee.e_name,female_employee.e_dept
from male_employee left join female_employee on male_employee.e_id=female_employee.e_id;

select male_employee.e_name,male_employee.e_dept,female_employee.e_name,female_employee.e_dept
from male_employee full join female_employee on male_employee.e_id=female_employee.e_id;

use employee;
select male_employee.e_name,male_employee.e_dept,male_employee.e_age,female_employee.e_age,female_employee.e_name,female_employee.e_dept
 from male_employee inner join female_employee on male_employee.e_age>female_employee.e_age;



-- to delete view the command is
drop view female_employee;

-- to add some columns into table
-- alter command is used 
--to add coloumn
-- SYNTAX:- alter table table_name add coloumn_name datatype; 
-- to delete coloumn
-- SYNTAX:- alter table table_name drop coloumn_name;

alter table e_data add grade varchar(30); 
select * from e_data; 
alter table e_data drop grade;

-- merging

 merge e_data as t 
 using et_data as s
 on t.e_id=s.e_id
 when matched 
 then update set t.e_salary =s.e_salary;

 select * from e_data;

 merge e_data as t 
 using et_data as s
 on t.e_age>s.e_age
 when matched then 
 update set t.e_age=s.e_age;

 select e_age from e_data;
 select e_age from et_data;

 merge e_data as t
 using et_data as s
 on t.e_id =s.e_id
 when matched then update set t.e_salary=s.e_salary,t.e_age=s.e_age
 when not matched by target then 
 insert(e_id,e_name,e_address,e_age,e_gender,e_salary,e_dept)values(s.e_id,s.e_name,s.e_address,s.e_age,s.e_gender,s.e_salary,s.e_dept)
 when not matched by source then delete;

 select * from e_data;
 insert into e_data values(11,'sheena','banglore',32,'female',65921,'cyber security',NULL);
 alter table e_data drop grade;
 
 insert into e_data values(12,'sheena','banglore',32,'female',65921,'data analysis',NULL);
 insert into e_data values(13,'ankit','chennai',45,'male',75921,'database',NULL);
 insert into e_data values(14,'shalu','noida',43,'female',55921,'networking',NULL);
 
 merge e_data as t
 using et_data as s
 on t.e_id=s.e_id 
 when matched then update set t.e_salary=s.e_salary,t.e_age=s.e_age
 when not matched by target then 
 insert(e_id,e_name,e_address,e_age,e_gender,e_salary,e_dept)values(s.e_id,s.e_name,s.e_address,s.e_age,s.e_gender,s.e_salary,s.e_dept)
 when not matched by source then delete;

 select * from e_data;
select * from et_data;

--user defined functions
-- 1) scalar value user defined  function
-- 2) Table value user defined function

--syntax: 1) scalar value user defined function :-
/* create function function name(@parameter1_name as datatype,@parameter2_name as datatype.....)(as and datatype will be keyword where as parameter name could be any)
returns return_type (return type will be same as parameter datatype name)
as 
begin
------function body 
return value 
end */


create function add_five(@num as int )
returns int 
as 
begin 
return ( @num +1000)
end

select dbo.add_five(15);
select dbo.add_five(20) addedfive;
use employee;

select e_salary,sum(dbo.add_five(num)) net_amount from dbo.e_data group by e_salary order by net_amount;

create function sum_all(@s as int)
returns int 
as begin 
return(@s+1000)
end 
select dbo.sum_all(100);

-- 2) table value user defined function
/* syntax:-
create function function_name(@parameter_name1 as datatype ,@parameter_name2 as datatype)
returns table
as 
return(select columns-list from table_name where(condition)) */

create function table_value(@gender as varchar(30))
returns table 
as 
return(select * from e_data where e_gender =@gender);

select * from dbo.table_value('male');
select * from dbo.table_value('female');

create function abc(@g as varchar(30))
returns table
as return(select * from et_data where e_gender=@g);
select * from dbo.abc('male');
select * from dbo.abc('female');

create function salary_e(@s as varchar(20))
returns table 
as return(select * from e_data where e_name=@s);

select * from dbo.salary_e('shreyansh');
select * from e_data;


create function table_val(@name as varchar(30),@gender as varchar(20),@id as int)
returns table as return(select * from e_data where e_name=@name and e_gender=@gender and e_id =@id);
select * from dbo.table_val('shreyansh','male',32);
select * from e_data;


create function id(@id as int)
returns table as return (select * from e_data where e_id=@id);

select e_name ,e_salary ,e_dept from dbo.id(4);



select e_name,e_salary from dbo.salary_e('jeff');
select e_name,e_salary from e_data where e_name='jeff';

select distinct e_name from e_data where e_name like('%sh');
select distinct e_name from e_data where e_name like('s%');
select distinct e_name from e_data where e_name like('%h');
select distinct e_name from e_data where e_name like ('%sh%');
select distinct e_name from e_data where e_name like('%sh');
select distinct e_name from e_data where e_name like('%sh or sh%');
select e_name,e_salary from e_data where e_salary>30000 order by left(e_name,1) asc;
select e_name,e_salary from et_data where e_salary>50000 order by right(e_name,1) asc;
select e_name from et_data order by left(e_name,1) desc;

select distinct e_name from e_data where left(e_name,1) not in ('a','e','i','o','u') and right(e_name,1) not in ('a','e','i','o','u');

select distinct e_name from e_data where e_name like ('a%');

select distinct e_name from e_data where left(e_name,1) not in ('a','e','i','o','u');
select distinct e_name from e_data where right(e_name,1) not in ('a','e','i','o','u');
select distinct e_name from e_data where left(e_name,1) not in ('a','e','i','o','u') and right (e_name,1) not in('a','e','i','o','u');

select distinct e_name from e_data where e_name like('a%') and e_name like ('%a');

select distinct e_name from e_data where e_name like('a%') and e_name like ('%a');
select e_name from e_data where e_name not like ('a%');

--creating temporary table
-- syntax:  #symbol is  neccessary to use while creating temporary table
-- create table #table_name();
create table #student(std_id int,std_name varchar(30),std_fee int,std_gender varchar(20));
use employee ;
select * from #student;


--case statement :- it is used along with select statement first select statement is used then case statement along with when conditon and else then end the statement
--syntax:- 
/* case when condition1 then result 
when condition2 then result 
when condition3 then result 
else result end */

select case when 10>20 then '10 is smaller '
when 10<20 then '20 is greater '
else 'both equal'
end


select case when 10<20 then '10 is smaller then 20'
when 10<20 then '20 is greater '
else 'both equal'
end


select case when 10>10 then '10 is greater'
when 10<10 then '20 is greater '
else 'both equal'
end

-- now applying case statement on the table created in employee database
select * , grading =
case when e_salary >80000 then 'A'
when e_salary >50000 then 'B'
else 'C'
end
from e_data; 
select * from et_data;


select *, age= case 
when e_age<30 then 'youngest employee'
when e_age >30 and e_age<50 then 'young employee'
else 'older employee '
end from et_data;

-- iif() function: it is alternative to case statement
-- if the condition is satisfied then gives true or the messsage you want to print otherwise false
-- syntax:- iif(boolean expression, true_vale ,false_value)

select e_id,e_name,e_age ,iif(e_age<40,'young employee','old employee')  from e_data;
select e_name,e_age,iif(e_age<40,'young employee','old employeee') as employee_generation from e_data;
select * from e_data;
select e_name,e_salary ,iif(e_salary<40000,'B','A') as grade from et_data;

select e_name,e_salary ,iif(e_salary<40000 or e_salary<60000,'B','A') as grade from et_data;


select e_name,e_salary ,iif(e_salary>40000 or e_salary<60000,'true','false') as grade from et_data;
select e_name,e_salary ,iif(e_salary>40000 or e_salary>60000,'true','false') as grade from et_data;
select e_name,e_salary ,iif(e_salary>40000 and  e_salary<60000,'true','false') as grade from et_data;
use employee ;
select e_name,e_age,e_salary,iif(e_age<40 and e_salary>50000,'A','B') as grade from et_data;
select * from e_data;

select e_name,e_salary,e_age,grade =
case when e_age<40 and e_salary >50000 then 'A'
when e_age <50 and e_salary >60000 then 'B'
else 'C'
end from e_data;


-- stored procedure in SQL 
--syntax:- create procedure procedure_name 
-- as 
-- <..sql statement..>
-- go;
-- now to execute the procedure we use
-- exec procedure_name;

create procedure procedure_age
as select e_age from e_data 
go;
exec procedure_age;

create procedure procedure_employee_details
as select * from e_data 
go;
exec procedure_employee_details;


-- stored procedure with parameter
-- syntax
--create procedure procedure_name 
-- @parameter_name_datatype1, @parameter_name_datatype2 
-- as 
-- sql statement 
-- go;
-- exec procedure 
use employee ;
create procedure procedure_parameter 
@gender as varchar(30)
as (select e_name,e_gender,e_salary from e_data where e_gender=@gender)
go;

exec procedure_parameter @gender=e_gender;
exec procedure_parameter @gender='female';


create procedure abc1 @age as int 
as select e_name,e_age from e_data
go;
exec abc1 @age =e_age ;
exec abc1 @age =e_age;

create procedure xyz
as select e_name ,e_salary from e_data
go;

exec xyz;

create function gender1(@gender as varchar(30),@salary as int)
returns table as return(select e_name,e_age,e_salary,e_gender from et_data where e_gender=@gender or e_salary=@salary);

modify function gender1(@gender as varchar(30))
returns table as return(select e_name,e_gender,e_salary from et_data where e_gender =@gender);
select * from dbo.gender1('male',50000);


--exception handling 
--try and catch is block is used
-- syntax: 
/*begin try 
sql statement 
end try 
begin catch
print error ..or..
rollback transaction
end catch

declare is used to declare any variable or to define the variable */

declare @val1 as int 
declare @val2 as int 
begin try 
set @val1=10
set @val2=@val1/0
end try
begin catch 
print error_message()  --error_message is a function to print the error
end catch;

declare @val3 as int 

declare @val11 as int 
declare @val22 as int 
begin try 
set @val11= 12;
set @val22 =2;
set @val3=@val11/@val22;
end try

begin catch
print '6'
end catch;




































































































































































