create table student2(
std_id int,std_name varchar(30),std_address varchar(40),
primary key (std_id));
insert into student1 values(1,'john','mumbai');
insert into student1 values(2,'jeff','chennai');
insert into student1 values (3,'anne','pune');
insert into student1 values(4,'shrey','ghaziabad');
select * from student1;
insert into student2 values(4,'anne','kolkata');
insert into student2 values(5,'jeff','chennai');
insert into student2 values(6,'ajay','ghaziabad');
insert into student2 values(7,'shrey','banglore');