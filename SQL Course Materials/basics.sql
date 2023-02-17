-- use sql_store;
-- select first_name , points , points+10 as 'points + 10'
-- from customers 
-- where customer_id=1
-- order by first_name

-- unique values
-- select distinct state from customers;


-- select name,unit_price,unit_price*1.1 as 'new price '
--  from products
-- where unit_price < '3' 
-- order by unit_price;

select order_id,customer_id ,order_date
from orders
where order_date >= '2019-01-01'
order by  order_date;

-- and operator
-- select * 
-- from order_items
-- where unit_price * quantity > 30 and order_id = 6;

-- in operator
-- select *
-- from products 
-- where quantity_in_stock in (49,38,72);

-- between
-- select *
-- from customers 
-- where birth_date between '1990-01-01' and '2000-01-01';

-- like operator
-- select *
-- from customers
-- where address like '%TRAIL%' or 
-- address like '%AVENUE%'; 

-- select *
-- from customers
-- where phone like '%9'

-- regexp
-- ^ begining
-- $last
-- |logical or
-- [] abcd

-- regexp
-- select * 
-- from customers
-- where first_name regexp 'ELKA|AMBUR'
-- where last_name regexp 'EY$| ON$';
-- where last_name regexp '^MY|SE';
-- where last_name regexp 'B[RU]';

select *
from orders
where shipped_date is null;

select first_name
from customers
limit 2;

-- limit
select customer_id,first_name,points
from customers
order by points desc
limit 3;


-- joins:
select *
from customers
join orders
on customers.customer_id=orders.customer_id;

select order_id,p.product_id,quantity,o.u nit_price
from order_items o
join products p
on o.product_id=p.product_id;

use sql_invoicing ;
select  
p.date,
p.invoice_id,
p.amount,
pm.name as method
from payments p

join clients c
on p.client_id=c.client_id

join payment_methods pm
on p.payment_method=pm.payment_method_id;

  
-- insert a recod in table


insert into customers(
first_name,
last_name,
birth_date,
address,
city,
state
)
values( 
'ishwarya',
'chellappan',
'2000-12-19',
'madurai',
'madurai',
'tn'
)
