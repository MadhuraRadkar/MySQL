select * from orders
select * from Users

--display number of order placed by each user.
select userid, count(orderid) as 'count' from orders
group by userid
