create database operator;
use operator;
create table fruit1(
f_name varchar(40));
insert into fruit1 values('mango');
insert into fruit1 values('apple');
insert into fruit1 values('banana');
insert into fruit1 values('t-shirt');

create table clothes(
f_name varchar(40));
insert into clothes values('jeans');
insert into clothes values('apple');
insert into clothes values('pant');
insert into clothes values('t-shirt');

/*union operator */
select * from fruit1 union select *  from clothes;

/*union all operator*/
select * from fruit1 union all select * from clothes;
 
/*except operator*/
select * from fruit1 except select * from clothes;
