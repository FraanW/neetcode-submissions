-- Write your query below
-- select Distinct customer_id from customers 
-- where revenue > 0 and year = 2020;


-- select name from customers 
-- where id not in (select customer_id from orders); 


-- select employee_id,
-- case 
--     when employee_id % 2 = 1 AND name not like 'M%' THEN salary
--     else 0
-- end
-- as bonus
-- from employees
-- order by employee_id;


select customer_id, customer_name
from customers
where customer_id In (select customer_id from orders where product_name = 'A') 
and customer_id in (select customer_id from orders where product_name = 'B' )
and customer_id not in (select customer_id from orders where product_name = 'C' )
order by customer_name;
