select e_id, e_name, e_salary from branch;
select distinct e_gender from branch;
select e_gender from branch;
select * from branch where e_age>30;
select * from branch where e_age>30 && e_age<40; 
select * from branch where e_age<30
select * from branch where e_age>30 || e_salary<35000;
select * from branch where e_age>40 && e_salary>45000;
select * from branch where e_age>50&&e_salary>30000;
select * from branch where not e_gender='male';
select * from branch where e_dept='engineer'and e_salary>70000;
select e_name from branch where e_salary>30000 OR e_salary<70000;
select e_name from branch where e_gender='fe'&& e_salary>60000;
select * from branch where not e_gender='ma';
select e_name, e_address,e_dept from branch where not e_address='mumbai';
select * from branch where not e_age>30;
select * from branch where e_address like 'm%';
select * from branch where e_address like 'bang%';
select * from branch where e_salary like '4%';
select * from branch where e_age like '3_';
select * from branch where e_age between 30 and 40;
select e_name from branch where e_salary between 80000 and 90000;
select e_name,e_salary from branch where e_id between 3 and 5;









