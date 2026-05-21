-- Write your query below
-- select Distinct customer_id from customers 
-- where revenue > 0 and year = 2020;


select name from customers 
where id not in (select customer_id from orders); 