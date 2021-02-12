select e_name,e_salary from branch where e_salary between 30000 and 50000;
select e_name from branch where e_salary>=50000;
select e_name, e_age,e_salary from branch order by e_salary desc;
select avg(e_salary),e_dept from branch group by e_dept order by avg(e_salary);
select e_dept from branch group by e_dept;
select branch.e_name,branch.e_dept,department.d_name,department.d_location from branch right join department
on branch.e_dept=department.d_name;

select * from branch full join department;
select * from branch union select * from department; /* number of column should be equal in both 
table to perform union, intersection,except etc */

/* now trying to add the some data inside this file through python file handling concept */
