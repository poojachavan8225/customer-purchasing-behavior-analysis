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
 -- Show all male customers
 select * from customer_purchasing_db.customer_purchases where gender='male';
  -- Show total male customers
select count(*) from customer_purchasing_db.customer_purchases where gender='male';
select * from customer_purchases where purchase_amount>80;
--   show all Female Customers
select * from customer_purchases where gender='female';
-- Show total Female customers
select count(*) from customer_purchases where gender='female';
 -- Customers Age >= 40
select * from customer_purchases where age>=40;
-- total Customers Age > 40
select count(*) from customer_purchases where age>40;
-- Promo Code Used
select * from customer_purchases where promo_code_used='no';
-- Show all customers whose purchase frequency days are NULL.
select * from customer_purchases where purchase_frequency_days is null;
select count(*) from customer_purchases where purchase_frequency_days is null;
-- Show all customers whose purchase frequency days are empty
SELECT * FROM customer_purchases WHERE purchase_frequency_days = '';


