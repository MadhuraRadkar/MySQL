
--Trigger in sql.

create  table employeeTrack
(
id int primary key identity(1,1),
description varchar(255)
)

create trigger tr_employee
on employee after insert
as begin
declare @id int
declare @name varchar(20)
declare @email varchar(30)
select @id=id,@name = name,@email=email from inserted 
insert into employeeTrack  values ('new record with details'+cast(@id as varchar)+'name'+@name
+'email'+@email+'date'+cast(getdate () as varchar(20))+'added')
end

select * from employee
select * from employeeTrack

insert into employee values(20,'sushil','sushil@gamil.com',30,3000,'mumbai',105,5)


create trigger tr_employee_delete
on employee after delete
as begin
declare @id int
declare @name varchar(20)
declare @email varchar(30)
select @id=id,@name=name,@email=email
from deleted
insert into employeeTrack  values ('new record with details'+cast(@id as varchar)+'name'+@name
+'email'+@email+'date'+cast(getdate () as varchar(20))+'removed')
end

delete from employee where id=15
