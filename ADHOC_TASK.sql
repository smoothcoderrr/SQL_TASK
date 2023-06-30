# COMMON_TASK

# 1. --order_id alone
select substring(order_id,4,length(order_id)) as 
order_id from sales_purchase_data_updated;
------------------------------------------------------------------------------------------
#2.--order_month, order_year
select month(order_date) as order_month , concat(month(order_date),'-',year(order_date)) 
as order_year from sales_purchase_data_updated;
------------------------------------------------------------------------------------------
#3.--customer_id alone
select substring(customer_id,4,length(customer_id)) as
cust_id from sales_purchase_data_updated;
------------------------------------------------------------------------------------------
#4.-- adding country, city, state as one column
select concat(country,'_',city,'_',state) as location_info from sales_purchase_data_updated;
------------------------------------------------------------------------------------------
#5.New table creation from derived table
create table sales_info as select Product_ID,Category,Sub_Category,Product_Name,Sales,Quantity, (sales/quantity) as per_quantity_price,
case 
when sales > 1000 then 'super'
when sales > 400 and sales < 1000 then 'average'
else 'low'
end as super_type,
Profit,
case when profit < 0 then 1
else 0 
end as Loss 
from sales_purchase_data;
----------------------------------------------------------------------------------------------
#6.--Count Distinct order_id
SELECT COUNT(DISTINCT order_id) AS distinct_order_count
FROM sales_purchase_data_updated;
----------------------------------------------------------------------------------------------
#7.--Count Distinct product_name
SELECT COUNT(DISTINCT product_name) as unique_product_name
FROM sales_info;
----------------------------------------------------------------------------------------------
#8.--Count Distinct segment
SELECT COUNT(DISTINCT SEGMENT) as distinct_segment
from sales_purchase_data_updated;
-----------------------------------------------------------------------------------------------
#9.--Recent order_date
SELECT order_date FROM sales_purchase_data_updated
where month(order_date) <= 6 AND month(Order_Date) >= 5 AND year(Order_Date)=2023;
-----------------------------------------------------------------------------------------------
#10.--old order_date
SELECT min(order_date) as old_order_id FROM sales_purchase_data_updated;
-----------------------------------------------------------------------------------------------
#11.--Detail of all customers who have maximum orders.
SELECT *
FROM sales_purchase_data_updated
WHERE order_date = (SELECT MAX(order_date) FROM sales_purchase_data_updated);
------------------------------------------------------------------------------------------------
#12.--Count of customers in State "Texas" and "New York".
SELECT 
COUNT(DISTINCT CASE WHEN State="Texas" THEN Customer_id END )AS No_of_Customer_Texas,
COUNT(DISTINCT CASE WHEN State="New_york" THEN customer_id END)AS No_of_customer_New_york
from sales_purchase_data_updated;
