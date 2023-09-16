insert into dept values(101,'HR'),
(102,'Admin'),
(103,'Develope'),
(104,'Testing'),
(105,'Sales')

select * from dept
select * from employee

alter table employee add did int

alter table employee add constraint pk_fk_dept_emp
foreign key(did) references dept(did)

update employee set did=101 where id in(1,13)
update employee set did=102 where id in(2,12)
update employee set did=103 where id in(2,3,4,5,6)
update employee set did=104 where id in(7,8,9)
update employee set did=105 where id in(10,12,14)


--inner joins
select e.*,d.dname
from employee e
inner join dept d on d.did = e.did
