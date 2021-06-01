show databases;
use college;

create table employee
(
  emp_id varchar(3) primary key check(emp_id like 'E%') ,
  Ename varchar(25) not null ,
  DOB date not null,
  DOJ date not null, check(DOB<DOJ),
  salary int  not null check(salary>0)
);

select*from employee;
-- drop table employeees;
insert into employee values('E01','Elish belli','2001-05-03','2015-06-09',61050);
insert into employee values('E02','shreyansh','1999-09-02','2012-03-19',45781);
insert into employee values('E03','reyansh','1991-05-12','2015-06-20',60000);
insert into employee values('E04','reya','1975-02-11','1995-11-18',54371);
insert into employee values('E05','ansh','1978-04-12','1994-06-29',63456);
insert into employee values('E06','shrey','1980-05-03','1998-1-19',34562);
insert into employee values('E07','shreya','1997-11-13','2014-11-09',60050);
insert into employee values('E08','shinu','1998-12-23','2016-06-19',69801);

select*from employee where DOJ = '2012-03-19';
select emp_id,Ename,date_format(DOB,'%M-%D-%Y') from employee;
select*from employee where(extract(year from DOJ))<1997;
select * from employee where year(DOJ)<1997;
select*from employee where(extract(month from DOJ))=1;
select * from employee where month(doj)=6;
select*from employee where(extract(year from DOJ))=2019;
select * from employee where day(doj)>=15;
select * from employee where day(doj)>=15 and year(doj)>=2015;
select *from employee order by(DOJ) desc;
select Ename,datediff('2021-06-01',DOJ) as 'DAY_OF_EXPERIENCE' from employee;
select*from employee where mod(salary,2)!=0;
select*from employee where (salary%2)!=0;

select*from employee where emp_ID = 'E06' and extract(year from DOJ) =1998;
select * from employee where emp_ID='E06' and year(doj)=1998;
select*from employee where extract(month from DOJ)!=2;
select
select concat('HAPPY BIRTHDAY TO ',Ename) from employee where extract(DAY from DOB)= 1 and extract(month from DOB) = 2; 