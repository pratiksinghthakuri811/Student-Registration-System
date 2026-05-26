create database school_db;
use school_db;
create table student(
student_id int primary key auto_increment,
name varchar(40),
class varchar(40),
phone char(10),
address varchar(30)
);
delimiter $$
create procedure add_student(
in p_name varchar(40),
in p_class varchar(40),
in p_phone char(10),
in p_address varchar(40)
)
begin 
insert into student(name,class,phone,address)values(p_name,p_class,p_phone,p_address);
end $$
delimiter ;
call add_student('pratik','ten',9868205197,'ktm');
delimiter $$
create procedure get_student(
in p_student_id int 
)
begin 
select student_id, name , address, phone ,class
from student
where student_id = p_student_id;
end $$
delimiter 
delimiter $$
create procedure update_student(
in p_phone char(10),
in p_student_id int,
in p_address varchar(30)
)
begin 
declare v_count int;
select count(*) into v_count
from student
where student_id =p_student_id;
if v_count > 0 then
update student 
set phone = p_phone,
address= p_address 
where student_id =p_student_id;
select 'student contach add' as message;
else 
select 'student didnt match' as message;
end if;
end $$
delimiter ;
delimiter $$
create procedure delete_student(
in p_student_id int
)
begin 
declare v_count int;
select count(*) into v_count
from student
where student_id =p_student_id;
if v_count > 0 then
delete from student 
where student_id =p_student_id;
select 'student delete sucessfull' as message;
else 
select 'student didint  sucessfull' as message;
end if;
end $$
delimiter ;
call delete_student(2);






