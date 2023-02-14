create database Assignment2

use Assignment2

create table student1
(
id int primary  key identity,
name varchar(20),
branchid int,
gender varchar(20),
branch varchar(20)
)
insert into student1 values('chandu',1,'male','it'),
('jyothsna',2,'female','ece'),
('chandra',3,'male','ece'),
('priya',2,'female','it'),
('roshan',3,'male','cse')
select *from student1
drop table student1


create function branchidfun(@bid int)
returns table
as 
return(select * from student1 where branchid=@bid)
select * from dbo.branchidfun(2)


create function genderfun(@gender varchar(10))
returns table
as 
return(select * from student1 where gender=@gender)
select * from dbo.genderfun('female')
drop function genderfun

---------------------------------------------------------------------------------
create table tablemplyee(id int,name varchar(40),gender varchar(40),salary int,deptid int )
insert into tablemplyee values(1,'camil','male',9000,1),(2,'aton','male',91000,3),(3,'dp','male',19000,2),(4,'wani','female',29000,1),(5,'mays','female',9000,3)
select * from tablemplyee
drop table tablemplyee
drop table tablemplyeeaudit
create table tablemplyeeaudit(id int identity(1,1) primary key,auditdata nvarchar(1000) )
create trigger tr_tblemployee_fordelete
on tablemplyee
for delete
as
begin 
declare @id int
select @id=id from deleted
insert into tablemplyeeaudit values ('new employee'+cast(@id as varchar (10))+'is insrted'+cast(getdate() as varchar(30)))
end
select *from tablemplyee
select *from tablemplyeeaudit
delete from tablemplyee  where id=3

insert into tablemplyee values (6,'chandini','female',894562,4)
drop trigger tr_tblemployee_fordelete