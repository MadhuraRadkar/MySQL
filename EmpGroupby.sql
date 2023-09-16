select * from employee

--summary of dept
--select id , did from employee
select did,count(id) as 'count' from employee 
group by did

--display dept wise sum salary
select did,sum(salary) as 'sum of salary' from employee group by did order by sum(salary) desc

--display dept wise avg salary
select did,avg(salary) as 'Avg salary' from employee group by did

--display count of emp in each city
select city,count(id) as 'count' from employee group by city

