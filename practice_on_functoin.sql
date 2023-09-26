create database practice

--addition of fun using sql
--scalar function
create function addition(@a int, @b int)
returns int 
as begin 
--declare variable in sql
declare @c int
set @c=@a+@b
return @c
end

--database object
select dbo.addition(10,20) as 'sum'

--scalar function
create function getempname(@id int)
returns varchar(20)
as begin
return(select name from employee where id=@id)
end


select dbo.getempname(1) as 'emp name'



create function getempBydept(@did int)
returns table
as 
return (select * from employee where did=@did)


select * from dbo.getempBydept(103)


--create a function accept product price give 10% discount and return discounted price.
--(create)
alter function getdiscountedprice(@price int)
returns int
as begin
declare @dis int
set @dis=@price-(@price * 0.10)
return @dis
end



select price,dbo.getdiscountedprice(price) as 'discounted price' from product
