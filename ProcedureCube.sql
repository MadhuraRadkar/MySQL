--Create function cube 
create function cubeOfNum(@a int)
returns int 
as begin 
declare @c int
set @c = @a*@a*@a
return @c 
end


--database object.
select dbo.cubeOfNum(5) as 'cube'
