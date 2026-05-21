-- Write your query below
-- select Distinct customer_id from customers 
-- where revenue > 0 and year = 2020;


-- select name from customers 
-- where id not in (select customer_id from orders); 


select employee_id,
case 
    when employee_id % 2 = 1 AND name not like 'M%' THEN salary
    else 0
end
as bonus
from employees
order by employee_id;