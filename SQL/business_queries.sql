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
 -- Payment Method Analysis
 SELECT
    payment_method,
    COUNT(*) AS total_transactions
FROM customer_purchases
GROUP BY payment_method
ORDER BY total_transactions DESC;
--  Customers by Age Group
select age_group,
 count(*) as total_customers 
 from customer_purchasing_db.customer_purchases
 group by age_group
 order by total_customers desc;
 
 -- Categories with Revenue > 50000
 select category,
 sum(purchase_amount) as total_revenue
 from customer_purchasing_db.customer_purchases
 group by category
 having total_revenue >= 63000;
 
  -- payment methods used by more than 500 customers
  select payment_method,
  count(*) as total_customers
  from customer_purchasing_db.customer_purchases
  group by payment_method
  having total_customers > 500 
  order by total_customers desc;
 
 SELECT
    customer_id,
    purchase_amount,
    CASE
        WHEN purchase_amount >= 80 THEN 'High Spender'
        WHEN purchase_amount >= 50 THEN 'Medium Spender'
        ELSE 'Low Spender'
    END AS spending_level
FROM customer_purchases;

SELECT
    CASE
        WHEN purchase_amount >= 80 THEN 'High Spender'
        WHEN purchase_amount >= 50 THEN 'Medium Spender'
        ELSE 'Low Spender'
    END AS spending_level,
    COUNT(*) AS total_customers
FROM customer_purchases
GROUP BY spending_level;

-- Row Number by Purchase Amount
SELECT
    customer_id,
    purchase_amount,
    ROW_NUMBER() OVER (ORDER BY purchase_amount DESC) AS row_num
FROM customer_purchases;


-- Query 43 : Dense Rank


SELECT
    customer_id,
    purchase_amount,
    DENSE_RANK() OVER (ORDER BY purchase_amount DESC) AS dense_ranks
FROM customer_purchases;

SELECT
    customer_id,
    purchase_amount,
    RANK() OVER (ORDER BY purchase_amount DESC) AS customer_rank
FROM customer_purchases;
 
