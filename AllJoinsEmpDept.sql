select * from employee
select * from dept

insert into employee(id,name,email,age,salary) values(15,'Madhu','madhu@gmail.com',22,30000)
insert into dept values(106,'Marketing')

select d.did,d.dname,e.id,e.name,e.age,e.salary,e.city
from dept d
inner join employee e on e.did=d.did

select d.did,d.dname,e.id,e.name,e.age,e.salary,e.city
from dept d
left join employee e on e.did=d.did

select d.did,d.dname,e.id,e.name,e.age,e.salary,e.city
from dept d
right join employee e on e.did=d.did

select d.did,d.dname,e.id,e.name,e.age,e.salary,e.city
from dept d
full join employee e on e.did=d.did

