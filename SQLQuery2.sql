create table dept
( did int,
dname varchar(10),
constraint pk_dept primary key(did)
)

drop table employee
create table employee 
(
id int,
name varchar(20),
did int,
constraint pk_emp primary key(did),
constraint fk_emp_dept foreign key(did) references dept(did)
)


create table Bank
(
accno int,
name varchar(20) not null,
email varchar(30) unique,
balance int,
constraint pk_bank primary key(accno),
constraint chk_bal check (balance>0)
)

alter table employee add age int -- Add age in employee table

alter table employee add constraint ch_age check (age>=18)

alter table employee drop constraint ch_age

exec sp_help employee  



--To add barnch in bank table.
alter table bank add branch varchar(20) 

-- set default location of branch is kothrud.
alter table bank add constraint de_branch default 'Kothrud' for branch
exec sp_help bank -- To check information.
-- to remove the constraint.
alter table bank drop constraint de_branch


