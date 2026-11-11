--SQL Retail Sales Analysis

CREATE DATABASE sql_project_p2
USE sql_project_p2

---CREATE TABLE
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales (
transactions_id INT PRIMARY KEY   ,
sale_date DATE,
sale_time TIME,
customer_id INT,
gender VARCHAR(100),
age INT,
category VARCHAR(100),  
quantiy INT,
price_per_unit FLOAT,
cogs FLOAT,
total_sale FLOAT
)
SELECT *
FROM retail_sales

SELECT 
category,
count(transactions_id)

FROM retail_sales

group by category

SELECT *
FROM retail_sales
WHERE [transactions_id] is null
      OR [sale_date] is null
      OR [sale_time] is null
      OR [customer_id] is null
      OR [gender] is null

      OR [category] is null
      OR [quantiy] is null
      OR [price_per_unit] is null
      OR [cogs] is null
      OR [total_sale] is null

 DELETE FROM retail_sales
 WHERE [transactions_id] is null
      OR [sale_date] is null
      OR [sale_time] is null
      OR [customer_id] is null
      OR [gender] is null
      OR [category] is null
      OR [quantiy] is null
      OR [price_per_unit] is null
      OR [cogs] is null
      OR [total_sale] is null

      SELECT 

      count(*)  'count of customer sales'
      FROM retail_sales

     SELECT 
      count(customer_id)  'no of customer'
      FROM retail_sales

   SELECT distinct category  'category name',
      count( category)  'no of category'
      FROM retail_sales
      group by  category

        SELECT 
      count(distinct category) 'no of category'
      FROM retail_sales
        
        
 SELECT
*
 FROM retail_sales
 WHERE sale_date = '2022-11-05'

         
 SELECT*

 FROM retail_sales
 WHERE 
 YEAR(sale_date) = 2022 
 AND
 month(sale_date) = 11 
 AND
 category = 'Clothing'
 AND
 quantiy >= 4
    
ORDER BY sale_date asc
 

 SELECT 
     category,

     SUM(total_sale)
FROM retail_sales
GROUP BY   category

SELECT 
 category AS category
 ,ROUND( AVG (age),2) 'AVG Age'
FROM retail_sales
GROUP BY category
HAVING category = 'Beauty'
 
SELECT 
*
FROM retail_sales
WHERE total_sale > 1000

SELECT 
category
,gender
,count(*) as 'total customer'

FROM retail_sales
GROUP BY category,gender


SELECT
YEAR(sale_date),
DATENAME(MONTH,sale_date)
,ROUND(AVG(total_sale),2)
FROM retail_sales
GROUP BY YEAR(sale_date),DATENAME(MONTH,sale_date)
ORDER BY YEAR(sale_date),DATENAME(MONTH,sale_date)



SELECT TOP 5
customer_id,
SUM(total_sale)
FROM retail_sales
GROUP BY customer_id
ORDER BY SUM(total_sale) DESC



SELECT
customer_id,
COUNT(customer_id)
,SUM (total_sale)
FROM retail_sales
GROUP BY customer_id
ORDER BY COUNT(customer_id) DESC


SELECT 

category,
COUNT(DISTINCT customer_id)

FROM retail_sales
GROUP BY category

SELECT


CASE WHEN DATEPART(hh,sale_time) <= 12 THEN 'morning'
     WHEN DATEPART(hh,sale_time) BETWEEN 12 AND 17 THEN 'AfterNoon'
     ELSE 'Evening'
END AS shift,
count( transactions_id)
FROM retail_sales

GROUP BY  CASE WHEN DATEPART(hh,sale_time) <= 12 THEN 'morning'
     WHEN DATEPART(hh,sale_time) BETWEEN 12 AND 17 THEN 'AfterNoon'
     ELSE 'Evening'
END 






