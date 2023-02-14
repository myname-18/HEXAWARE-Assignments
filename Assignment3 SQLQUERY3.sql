create database Assignment3
use Assignment3

create table tablemp
(
id int primary key identity,
name varchar(40),
gender varchar(40),
salary int,deptid int 
)
select * from tablemp 

insert into tablemp values('luke','male',9000,2),
		('kon','male',91000,3),
		('conark','male',19000,1),
		('kanie','female',29000,3),
		('mark','female',9000,1)
select * from tablemp
------------------------------------
create proc userassignment
as 
begin
select 'Welcom to SQL Server'
end
exec  userassignment

drop procedure userassignment
------------------------

create procedure usptablemployee(@gender varchar(10),@deptid int)
as
begin
select name,gender,salary from dbo.tablemp
where gender=@gender and deptid=@deptid;
end
exec dbo.usptablemployee 'female',3
drop proc usptablemployee
-------------------
Alter proc usptablemployeecount (@gender varchar(20),@deptid int, @total int output)
as
begin
select name,gender,salary from tablemp where gender=@gender and deptid=@deptid;
select @total=@@rowcount
end
declare @count int 
exec usptablemployeecount 'female',3,@total=@count output
select @count
--------------------------------------------------------------
create procedure totalcount
as
begin
select gender,count(gender) as totalemplyeecount from tablemp group by gender
end
exec totalcount
drop procedure totalcount
------------------------------------------------------------------------
create proc uspadd(@n1 int =2,@n2 int =4,@n3 int =6)
as 
begin
declare @sum int
set @sum=@n1+@n2+@n3
select @sum as 'total sum'
end

exec uspadd 6,8,5
