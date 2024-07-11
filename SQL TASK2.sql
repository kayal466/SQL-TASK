use kayalvizhi;
select * from customers;
-- get the description of the table
describe customers;
-- What is the maximum quantity sold?
select max(quantity) from customers;
-- What is the minimum quantity sold?
select min(quantity) from customers;
-- Get the unique values of the city?
select distinct(city) from customers;

select * from customers;
-- Get the unique values of the customer type?
select distinct(customer_type) from customers;
-- Get the count of the unique values of a gender?
select distinct(gender) from customers;
-- Get the unique values count of the product line?
select distinct(product_line) from customers;
-- get the maximum price of the customer table?
select* from customers;
select max(unit_price) from customers;
-- get the minimum price of the customer table?
select min(unit_price) from customers;
-- get the unique values of the branch?
select distinct(branch) from customers;
-- Get the count of unique values for the branch column?
SELECT COUNT(DISTINCT branch)
FROM customers;
-- Get the Price of the product by creating the view as v3?
select * from customers;
create view v3 as 
select product_line,unit_price from customers; 
-- Get the 5% tax of the price by creating another view as v4?
ALTER TABLE your_table
RENAME COLUMN "Tax 5%" TO TaxRate;


create view v4 as
select tax,unit_price from customers;
-- Get the unique values of payment? 
select distinct(payment) from customers;
-- Get the total count of each unique value of payment?
select count(*),payment from customers group by payment;

select * from customers;
-- Convert the date column data type into date format?
ALTER TABLE customers add selling_date DATE;
-- Get the oldest order date from the customer table?
select min(selling_date) as oldestorder from customers;
-- Get the latest order date from the customer table?
select max(selling_date) as latest from customers;
-- Get the count of customer_type whose name starts with N?
select count(customer_type) from customers where customer_type like 'n%';
select * from customers;
-- Get the count of customer_type whose second letter is ‘e’?
select count(*) from customers where customer_type like '_e%';
-- Get the count of the unique value of product_line whose count is greater than 2? 
select product_line,count(*) as line_count
from customers
group by product_line
having count(*)>2;
-- Get the count of unique values of payment who count is greater than 3
select payment,count(*) as payment_count
from customers
group by payment
having count(*) >3;
-- Get the maximum rating from the customer table?
select max(rating) from customers;
-- Get the minimum ratings from the table
select min(rating) from customers;
-- Get the ratings ranges from 7 to 10 and order by based on the branches?
select * from customers
where rating between 7 and 10 
order by branch;
-- Get the ratings ranges from 1 to 5 and order by based on the branches?
select * from customers
where rating between 1 and 5
order by branch;
-- Get the average of ratings for each and every product_line and round off the value to 2 decimals?
select product_line,round(avg(rating),2) as avg_rating from customers
group by product_line;
-- Get the average of ratings for each and every product_line and round off the value to 1 decimals and arrange them in the descending order?
select product_line,round(avg(rating),1) as average_rating 
from customers
group by product_line
order by average_rating desc;
-- Get the average of ratings for each and every product_line and round off the value to 2 decimals and arrange them in the ascending order?
select product_line,round(avg(rating),2) as average_rating 
from customers
group by product_line
order by average_rating asc;