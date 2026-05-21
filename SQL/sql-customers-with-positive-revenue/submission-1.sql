-- Write your query below
select Distinct customer_id from customers 
where revenue > 0 and year = 2020;