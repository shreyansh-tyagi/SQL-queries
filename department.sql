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

                   /*inner join*/

 select branch.e_name,branch.e_dept,department.d_name,department.d_location 
 from branch
 inner join department
 on branch.e_dept=department.d_name;

                    /*left join */
select branch.e_name,branch.e_salary,branch.e_dept,department.d_name,department.d_location
from branch
left join department
on branch.e_dept=department.d_name;                    
                    
update branch 
set e_name='shubham' where e_salary='56380';

select * from branch;

update branch set e_age='29' where e_name='shubham';

select * from branch;

select branch.e_name,branch.e_address,branch.e_dept,department.d_name,department.d_location
from branch
left join department 
on branch.e_address=department.d_location;
                    
                     /*right join*/

select branch.e_name,branch.e_dept,department.d_name,department.d_location
from branch
right join department
on branch.e_dept=department.d_name;                     
 
				   /*full join*/
					
select branch.e_name,branch.e_address,branch.e_dept,department.d_name,department.d_location
from branch
full join department 
on branch.e_dept=department.d_name;

                               /*update command*/

update branch 
set e_age=e_age+2 where e_name='shreyansh';
select * from branch;
                                
select branch.e_name,branch.e_dept,branch.e_salary,department.d_name,department.d_location
from branch
right join department
on branch.e_dept=department.d_name;

select * from branch full join department;

            
select branch.e_name,branch.e_salary,branch.e_dept,department.d_name,department.d_location
from branch
left join department on branch.e_dept=department.d_name;

delete branch 
from branch
join department on branch.e_address=department.d_location
where d_location = 'pune';

select * from department;
insert into department values(9,'advertisement','pune');

select * from department;

delete branch
from branch join department on branch.e_address=department.d_location
where d_location='pune';
select * from branch;




























                    






















