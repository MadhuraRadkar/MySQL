select * from employee

--create view
create view emp_from_Mumbai as 
select * from employee where city='mumbai'

create view emp_from_dev as
select name,email,age,salary from employee 
where did=(select did from dept where dname='development')

--modify the view
alter view emp_from_dev as
select name,email,age,salary,did from employee 
where did=(select did from dept where dname='development')

--display the view.
select * from emp_from_Mumbai  
select * from emp_from_dev 

--drop the view.
drop view emp_from_dev


--Stored procedure.
--create the stored procedure.
create proc sp_emp_select 
as begin 
select * from employee 
return 
end

--call the sp.
exec sp_emp_select 

--create with parameters.
create proc sp_emp_city(@city varchar(10))
as begin
select * from employee where city=@city
return 
end

exec sp_emp_city 
@city = 'pune'


--Using DML
create proc sp_insert_emp
(
@id int,
@name varchar(20),
@email varchar(20),
@age int,
@sal numeric(12,2),
@city varchar(10),
@did int,
@mid int
)
as begin
insert into employee 
values(@id,@name,@email,@age,@sal,@city,@did,@mid)
return
end

exec sp_insert_emp
@id=20,
@name='Test',
@email='test@gmail.com',
@age=22,
@sal=34567.56,
@city='Delhi',
@did = 103,
@mid=5



--Update 
create proc sp_update_emp
(
@id int,
@name varchar(20),
@email varchar(20),
@age int,
@sal numeric(12,2),
@city varchar(10),
@did int,
@mid int
)
as begin
update employee set 
name=@name,email=@email,age=@age,salary=@sal,city=@city,did=@did,managerid =@mid where id=@id
return
end


exec sp_update_emp
@id=20,
@name='test2',
@email='test2@gmail.com',
@age=23,
@sal=38489.43,
@city='pune',
@did=103,
@mid=5


create proc sp_update_city
(@city varchar(20),@id int)
as begin
update employee set city=@city where id=@id
return 
end

exec sp_update_city
@id=20,
@city='mumbai'

create proc sp_delete_emp
(@id int)
as begin
delete from employee where id=@id
return
end

exec sp_delete_emp
@id=20
