use customer_purchasing_db;
-- Top 10 Highest Purchases
select * from customer_purchases order by purchase_amount desc limit 10;
-- Top 5 lowest Purchases
select * from customer_purchasing_db.customer_purchases order by purchase_amount limit 5;
--  unique payment methods
select  distinct payment_method from customer_purchases;
-- Unique Shipping Types
select distinct shipping_type from customer_purchases;

-- Customers by Product Category
select 
category,
count(*) as total_customers from customer_purchases 
group by category order by total_customers desc;

 -- Revenue by Category
 select
 category,
 sum(purchase_amount) as total_revenue
 from customer_purchases
 group by category 
 order by total_revenue desc;
 
 -- Average Purchase by Category
 select 
 category,
 round(avg(purchase_amount),2) as Average_Purchase
 from customer_purchases
 group by category
 order by  Average_Purchase desc;
 
 --  Customers by Gender
 select gender,count(*) as total_customers
 from customer_purchases 
 group by gender
 order by total_customers asc;
 
 -- average purchase amount by gender?
 select gender,
 round(avg(purchase_amount),2) as average_purchase
 from customer_purchases
 group by gender
 order by average_purchase desc;
 
 -- Revenue by Season
 select season,
 sum(purchase_amount) as total_revenue 
 from customer_purchasing_db.customer_purchases
 group by season
 order by total_revenue desc ;
 
 
 