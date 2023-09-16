select * from employee
-- Update command.
update employee set salary= 21800 where id=2  

update employee set email='saksra@gmail.com',salary=23000,age=28 where id=3 

alter table employee add city varchar(20) -- Add city column in table

-- Insert city in column
update employee set city='Mumbai' where id in(1,2,3,4,5,6,7)
update employee set city='Pune' where id in(8,9,10,11,12,13)

-- Delete command.
delete from employee where id = 15
delete from employee where age<20

-- Select command
select * from employee -- indicate all column
select name as'employee name',email as 'email id' from employee -- Temporary show
select * from employee where id=1 -- Get data whose id is 1
select * from employee where city='Pune' -- Get data whose city is pune
select * from employee where age<28 -- Get data whose age is less then 28.

select * from employee where age<>24 and age<>25  -- show data whose age is not 24 amd 25.

-- Distinct Used to get unique record.
select distinct salary from employee

--and-->all condition must be true
select * from employee where salary<28000 and city='pune' and age<23

--or = either one is true
select * from employee where city='Mumbai' or city='delhi'

--between = show in that range
select * from employee where salary between 25000 and 28000

--in clause
select * from employee where id in(1,2,3,4,5)

--not in clause
select * from employee where id not in(1,2,3,4,5,6,7,8)


