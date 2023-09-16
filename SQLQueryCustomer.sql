create table customer
(
country varchar(225),
city varchar(255),
postalcode varchar(255),
product varchar(255),
price decimal(12,2)
)
insert into customer(city,postalcode,country,product,price) values('Berlin',12345,'germany','shoes',499),
('London',54321,'United kingdom','shirt',900),
('Oslo',76543,'Norway','Hats',199),
('Tokyo',98745,'Japan','Dress',2500),
('Paris',45678,'France','shoes',1500),
('Sydney',97658,'Australia','Pants',1200),
('Toronto',96435,'Canada','Socks',499),
('Rome',86421,'Italy','shirt',2200)


select * from customer

select city from customer
select distinct(country) from customer

insert into customer(city,postalcode,country,product,price) values('London',54367,'United kingdom','Dress',3600)
select * from customer where city='London'

select * from customer where city<>'Berlin'
select * from customer where city='Berlin'and postalcode=12345
select * from customer where city='Berlin' or city='London'
select * from customer order by city
select * from customer order by city desc
select * from customer order by country,city
select * from customer where postalcode is not null
update customer set city='Bergen' where country='Norway'
delete from customer where country='Norway'
select min(price) as 'min price' from customer
select max(price) as 'max price' from customer
select count(*) from customer where price=2200
