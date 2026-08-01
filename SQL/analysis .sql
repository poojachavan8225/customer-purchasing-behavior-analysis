use customer_purchasing_db;
-- Total Customers 
select count(*) from customer_purchases as Total_cutomers;
-- First 5 Records
select * from customer_purchases limit 5;
--  Last 5 Records
select *from customer_purchases order by customer_id desc limit 5;
-- Total Revenue
select sum(purchase_amount) as Toatl_revenue from customer_purchases; 
-- Average Purchase
select round(avg(purchase_amount),2) as average_purchases from customer_purchases;
-- Highest Purchase
select max(purchase_amount) as highest_purchases from customer_purchases;
-- Lowest Purchase
select min(purchase_amount) as lowest_purchases from customer_purchases;
-- Unique Categories 
select distinct category from customer_purchases;
-- Unique Locations
select distinct location from customer_purchases;
-- Total Product Categories
select count(distinct category)as total_categores from customer_purchases;
