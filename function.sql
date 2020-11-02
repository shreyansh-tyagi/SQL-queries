select min(e_age) from branch;
select min(e_name) from branch;
select min(e_salary) from branch;
select max(e_salary) from branch;
select max(e_age) from branch;
select count(*) from branch where e_gender='ma';
select count(*) from branch where e_gender='fe';
select count(*) from branch where e_salary>40000 and e_salary<50000;
select count(*) from branch where e_salary between 70000 and 90000;
select sum(e_salary) from branch;
select sum(e_age) from branch;
select avg(e_salary) from branch;
select avg(e_age) from branch;









