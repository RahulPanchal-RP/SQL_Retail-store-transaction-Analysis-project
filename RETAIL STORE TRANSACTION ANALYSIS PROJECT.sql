-- reatil store transaction anaylsis

use rahul;
SELECT * FROM rahul.retail_transactions_dataset;

-- 1) count the transaction in each season

select season,count(*) as transaction_count
FROM rahul.retail_transactions_dataset
group by season;

-- 2) find the average total cost of transactions

select avg(total_cost) as Average_cost
FROM rahul.retail_transactions_dataset;

-- 3) list the transactions with discount applied

select *FROM rahul.retail_transactions_dataset
where Discount_Applied=true;

-- 4) find the most common payment method

select payment_method,count(*) as method_count
FROM rahul.retail_transactions_dataset
group by Payment_Method
order by method_count desc
limit 1;

-- 5)find the transaction with more than 5 times

select *FROM rahul.retail_transactions_dataset
where Total_Items>5;

-- 6) fin find the transaction bt a specific customer(eg: lisa graves)

select *FROM rahul.retail_transactions_dataset
where Customer_Name='lisa graves';

-- 7) list all the product purchase in a specific transaction(eg:transaction_id= 1000000001)

select Product from rahul.retail_transactions_dataset
where transaction_id= 1000000001;

-- 8) count transactio per store type

select Store_Type,count(*) as transaction_per_store_count
from  rahul.retail_transactions_dataset
group by Store_Type;

-- 9) find the total cost of transaction for each customer category

select Customer_Category,sum(total_cost) as total_spent
FROM rahul.retail_transactions_dataset
group by Customer_Category;

-- 10)list the cities where the transaction occured/done in the winer season

select distinct city
FROM rahul.retail_transactions_dataset
where Season= "winter";

-- 11) find the transactio from the the specific city (eg:chicago)

select *FROM rahul.retail_transactions_dataset 
where city="chicago";

-- 12)count the number of transaction by season

select season, count(*) as trasaction_count_by_season
FROM rahul.retail_transactions_dataset
group by Season;

-- 13)list all unique store type

select distinct store_type 
FROM rahul.retail_transactions_dataset;

-- 14) find the transaction of a specific product(eg:milk)

select *FROM rahul.retail_transactions_dataset
where product like '%milk%';

-- 15) count the number of transaction of a specific product (eg:bread)

select count(*) product_count
FROM rahul.retail_transactions_dataset
where product like '%bread%';


-- project by RAHUL PANCHAL
