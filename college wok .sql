use yashdb;

create table employeees
(
  emp_id varchar(3) primary key ,
  Ename varchar(25) not null check(Ename like 'E%'),
  DOB date not null,
  DOJ date not null, check(DOB<DOJ),
  salary numeric(7) not null check(salary>0)
);

select*from employeees;
-- drop table employeees;
insert into employeees values('E06','Elish belli','2001-05-03','2015-06-09',61050);

select*from employeees where DOJ = '2019-03-09';
select emp_id,Ename,date_format(DOB,'%M-%D-%Y') from employeees;
select*from employeees where(extract(year from DOJ))<2018;
select*from employeees where(extract(month from DOJ))=1;
select*from employeees where(extract(year from DOJ))=2019;
select *from employeees order by(DOJ) desc;
select Ename,datediff('2021-06-01',DOJ) as 'DAY_OF_EXPERIENCE' from employeees;
select*from employeees where mod(salary,2)!=0;
select*from employeees where emp_ID = 'E01' and extract(year from DOJ) =1991;
select*from employeees where extract(month from DOJ)!=2;
select concat('HAPPY BIRTHDAY TO ',Ename) from employeees where extract(DAY from DOB)= 1 and extract(month from DOB) = 2; 
