-- Write your query below

-- 1
-- select Distinct customer_id from customers 
-- where revenue > 0 and year = 2020;

-- 2
-- select name from customers 
-- where id not in (select customer_id from orders); 

-- 3
-- select employee_id,
-- case 
--     when employee_id % 2 = 1 AND name not like 'M%' THEN salary
--     else 0
-- end
-- as bonus
-- from employees
-- order by employee_id;

-- 4 
-- select customer_id, customer_name
-- from customers
-- where customer_id In (select customer_id from orders where product_name = 'A') 
-- and customer_id in (select customer_id from orders where product_name = 'B' )
-- and customer_id not in (select customer_id from orders where product_name = 'C' )
-- order by customer_name;


-- 5
-- window functions: 

-- select student_id, exam_id, score
-- from (
--     select student_id, exam_id, score,
--     ROW_NUMBER() OVER(
--         PARTITION BY student_id
--         ORDER BY score DESC, exam_id ASC
--     ) AS rn
--     from exam_results
-- )
-- where rn = 1
-- order by student_id;


-- 6 left join
select a.first_name, a.last_name, b.city, b.state
from person as a
left join address as b 
ON a.person_id  = b.person_id;




















