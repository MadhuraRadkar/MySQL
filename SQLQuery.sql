select * from employee

--null , not null clause.
select * from employee where city is null

select * from employee where city is not null

--like clause to search.
select * from employee where name like 's%'
select * from employee where name like '%i'
select * from employee where name like '%s%'
select * from employee where name like '%[ika]'
select * from employee where name like '[as]%'
select * from employee where name like '%[sr]%'
select * from employee where name like '[p-z]%'
select * from employee where name like '%[g-m]'

--undescore 
select * from employee where name like 'r__'
select * from employee where  name like '___l__'
select *  from employee where name like '_____u'


--not like clause to skip.\
select * from employee where name not like 's%'

--order by
select * from employee order by name
select * from employee order by name desc

select * from employee order by salary
select * from employee order by salary desc

select * from employee order by name,email
select * from employee order by age

--Top,offset,fetch clauses.
select top 5 * from employee
select top 5 * from employee order by age
select top 5 * from employee order by salary desc

select top 1 * from employee order by salary desc -- highest
select top 1 * from employee order by salary   -- lowest

--ties
select top 3 with ties * from employee order by salary desc

--fetch , offset
--display emp who have 3rd highest salary.
select * from employee order by salary desc
offset 2 rows 
fetch next 1 row only

select * from employee order by salary desc
offset 2 rows
fetch next 2 rows only


--Aggregate function.
--max
select max(salary) as 'max salary' from employee

--min
select min(salary) as 'min salary' from employee

--avg
select avg(salary) as 'avg salary' from employee

--sum
select sum(salary) as 'sum salary' from employee

--count
select count(name) as 'total count' from employee
select count(city) as 'total count' from employee

select count(distinct city) as 'total count' from employee
select count(*) as 'total count' from employee

 
