#DDL COMMANDS & DML COMMANDS

#TRUNCATE
truncate table customer;

#DROP TABLE
DROP TABLE customer;

#CREATE TABLE
CREATE TABLE customer (cust_id INT,cust_name VARCHAR(50),date DATE CHECK (date BETWEEN '2023-01-01' AND '2023-06-30'),
city VARCHAR(50),state VARCHAR(50),email_id VARCHAR(50),device VARCHAR(50),
    channel VARCHAR(20),in_time TIMESTAMP,out_time TIMESTAMP,CONSTRAINT check_time_variation 
    CHECK (out_time >= in_time + INTERVAL '1' HOUR AND out_time <= in_time + INTERVAL '2' HOUR),
    primary key (cust_id,date));

#INSERT 
INSERT INTO CUSTOMER ( cust_id, cust_name, date, city, state, email_id, device, channel, in_time, out_time) 
 VALUES(1, 'Sharan', '2023-01-12', 'New York', 'NY', 'miraclesharan@gmail.com', 'Tablet', 'Facebook', '2023-01-12 08:45:00', '2023-01-12 10:15:00'),
(9, 'karthick', '2023-02-05', 'Boston', 'MA', 'karthick111@gmail.com', 'Mobile', 'Twitter', '2023-02-05 18:00:00', '2023-02-05 19:30:00'),
(5, 'Michael', '2023-06-18', 'San Francisco', 'CA', 'michael@gmail.com', 'Desktop', 'Facebook', '2023-06-18 20:15:00', '2023-06-18 21:21:00'),
(8, 'Maneesh', '2023-01-10', 'Dallas', 'TX', 'maneesh122@gmail.com', 'Laptop', 'Instagram', '2023-01-10 13:00:00', '2023-01-10 14:30:00'),
(7, 'Manoj Raj', '2023-05-31', 'Seattle', 'WA', 'ManojRaj@gmail.com', 'Laptop', 'Facebook', '2023-05-31 11:45:00', '2023-05-31 13:00:00'),
(2, 'hemanth', '2023-02-28', 'Los Angeles', 'CA', 'Hemanth@gmail.com', 'Tablet', 'Hathway', '2023-02-28 17:59:00', '2023-02-28 19:48:00'),
(8, 'Maneesh', '2023-06-30', 'Dallas', 'TX', 'maneesh122@gmail.com', 'Mobile', 'Facebook', '2023-06-30 09:45:00', '2023-06-30 11:15:00'),
(6, 'sankar', '2023-04-15', 'Miami', 'FL', 'sara@gmail.com', 'Desktop', 'Facebook', '2023-04-15 15:00:00', '2023-04-15 16:01:00'),
(4, 'Sanjay kumar', '2023-03-15', 'Houston', 'TX', 'sanjaykrishna@gmail.com', 'Laptop', 'YouTube', '2023-03-15 19:26:00', '2023-03-15 20:37:00'),
(7, 'Manoj Raj', '2023-03-15', 'Seattle', 'WA', 'ManojRaj@gmail.com', 'Tablet', 'Instagram', '2023-03-15 12:06:00', '2023-03-15 13:18:00'),
(5, 'Michael', '2023-02-11', 'San Francisco', 'CA', 'michael@gmail.com', 'Mobile', 'Hathway', '2023-02-11 16:55:00', '2023-02-11 18:05:00'),
(9, 'karthick', '2023-03-10', 'Boston', 'MA', 'karthick111@gmail.com', 'Laptop', 'Facebook', '2023-03-10 17:13:00', '2023-03-10 18:44:00'),
(4, 'Sanjay kumar', '2023-04-26', 'Houston', 'TX', 'sanjaykrishna@gmail.com', 'Desktop', 'Twitter', '2023-04-26 19:58:00', '2023-04-26 21:00:00'),
(3, 'Dhanesh', '2023-03-07', 'Chicago', 'IL', 'dhanesh@gmail.com', 'Tablet', 'Facebook', '2023-03-07 12:00:00', '2023-03-07 13:30:00'),
(7, 'Manoj Raj', '2023-01-27', 'Seattle', 'WA', 'ManojRaj@gmail.com', 'Mobile', 'Pinterest', '2023-01-27 15:51:00', '2023-01-27 17:00:00'),
(5, 'Michael', '2023-01-04', 'San Francisco', 'CA', 'michael@gmail.com', 'Tablet', 'Instagram', '2023-01-04 09:30:00', '2023-01-04 10:45:00'),
(2, 'hemanth', '2023-05-05', 'Los Angeles', 'CA', 'Hemanth@gmail.com', 'Desktop', 'Facebook', '2023-05-05 13:15:00', '2023-05-05 14:45:00'),
(9, 'karthick', '2023-04-20', 'Boston', 'MA', 'karthick111@gmail.com', 'Tablet', 'Hathway', '2023-04-20 12:30:00', '2023-04-20 13:45:00'),
(6, 'sankar', '2023-01-25', 'Miami', 'FL', 'sara@gmail.com', 'Laptop', 'Twitter', '2023-01-25 14:30:00', '2023-01-25 15:45:00'),
(3, 'Dhanesh', '2023-05-13', 'Chicago', 'IL', 'dhanesh@gmail.com', 'Tablet', 'YouTube', '2023-05-13 08:54:00', '2023-05-13 09:59:00'),
(6, 'sankar', '2023-03-08', 'Miami', 'FL', 'sara@gmail.com', 'Desktop', 'YouTube', '2023-03-08 08:45:00', '2023-03-08 10:00:00'),
(4, 'Sanjay kumar', '2023-02-22', 'Houston', 'TX', 'sanjaykrishna@gmail.com', 'Mobile', 'Instagram', '2023-02-22 09:50:00', '2023-02-22 11:10:00'),
(5, 'Michael', '2023-04-27', 'San Francisco', 'CA', 'michael@gmail.com', 'Laptop', 'Pinterest', '2023-04-27 12:45:00', '2023-04-27 14:15:00'),
(9, 'karthick', '2023-05-30', 'Boston', 'MA', 'karthick111@gmail.com', 'Tablet', 'Instagram', '2023-05-30 09:45:00', '2023-05-30 11:00:00'),
(2, 'hemanth', '2023-01-15', 'Los Angeles', 'CA', 'Hemanth@gmail.com', 'Desktop', 'YouTube', '2023-01-15 09:06:00', '2023-01-15 11:05:00'),
(10, 'sanju', '2023-04-25', 'Seattle', 'WA', 'sanju@gmail.com', 'Tablet', 'Instagram', '2023-04-25 11:25:00', '2023-04-25 13:15:00'),
(8, 'Maneesh', '2023-05-22', 'Dallas', 'TX', 'maneesh122@gmail.com', 'Mobile', 'Pinterest', '2023-05-22 11:30:00', '2023-05-22 12:45:00'),
(7, 'Manoj Raj', '2023-02-08', 'Seattle', 'WA', 'ManojRaj@gmail.com', 'Laptop', 'YouTube', '2023-02-08 17:00:00', '2023-02-08 18:30:00'),
(3, 'Dhanesh', '2023-04-16', 'Chicago', 'IL', 'dhanesh@gmail.com', 'Mobile', 'Pinterest', '2023-04-16 14:34:00', '2023-04-16 16:09:00'),
(8, 'Maneesh', '2023-02-08', 'Dallas', 'TX', 'maneesh122@gmail.com', 'Desktop', 'Twitter', '2023-02-08 16:15:00', '2023-02-08 17:45:00'),
(5, 'Michael', '2023-05-29', 'San Francisco', 'CA', 'michael@gmail.com', 'Laptop', 'YouTube', '2023-05-29 11:15:00', '2023-05-29 12:30:00'),
(1, 'Sharan', '2023-06-04', 'New York', 'NY', 'miraclesharan@gmail.com', 'Desktop', 'Pinterest', '2023-06-04 18:00:00', '2023-06-04 19:00:00'), 
(4, 'Sanjay kumar', '2023-06-01', 'Houston', 'TX', 'sanjaykrishna@gmail.com', 'Tablet', 'Facebook', '2023-06-01 10:45:00', '2023-06-01 12:00:00'),
(7, 'Manoj Raj', '2023-04-30', 'Seattle', 'WA', 'ManojRaj@gmail.com', 'Mobile', 'Twitter', '2023-04-30 15:45:00', '2023-04-30 17:00:00'),
(9, 'karthick', '2023-06-28', 'Boston', 'MA', 'karthick111@gmail.com', 'Laptop', 'Pinterest', '2023-06-28 14:00:00', '2023-06-28 15:30:00'),
(1, 'Sharan', '2023-02-23', 'New York', 'NY', 'miraclesharan@gmail.com', 'Desktop', 'YouTube', '2023-02-23 15:30:00', '2023-02-23 17:15:00'), 
(6, 'sankar', '2023-05-20', 'Miami', 'FL', 'sara@gmail.com', 'Mobile', 'Instagram', '2023-05-20 10:16:00', '2023-05-20 11:47:00'),
(10, 'sanju', '2023-01-10', 'Seattle', 'WA', 'sanju@gmail.com', 'Laptop', 'Facebook', '2023-01-10 16:33:00', '2023-01-10 18:00:00'),
(2, 'hemanth', '2023-02-10', 'Los Angeles', 'CA', 'Hemanth@gmail.com', 'Tablet', 'Instagram', '2023-02-10 10:13:00', '2023-02-10 12:01:00'),
(10, 'sanju', '2023-02-10', 'Seattle', 'WA', 'sanju@gmail.com', 'Mobile', 'Pinterest', '2023-02-10 10:30:00', '2023-02-10 12:00:00'),
(8, 'Maneesh', '2023-03-15', 'Dallas', 'TX', 'maneesh122@gmail.com', 'Laptop', 'YouTube', '2023-03-15 12:15:00', '2023-03-15 13:30:00'),
(1, 'Sharan', '2023-03-05', 'New York', 'NY', 'miraclesharan@gmail.com', 'Mobile', 'Twitter', '2023-03-05 10:10:00', '2023-03-05 11:11:00'),
(3, 'Dhanesh', '2023-01-30', 'Chicago', 'IL', 'dhanesh@gmail.com', 'Desktop', 'Hathway', '2023-01-30 14:42:00', '2023-01-30 15:47:00'),
(4, 'Sanjay kumar', '2023-01-11', 'Houston', 'TX', 'sanjaykrishna@gmail.com', 'Laptop', 'Pinterest', '2023-01-11 14:14:00', '2023-01-11 16:13:00'),
(1, 'Sharan', '2023-05-31', 'New York', 'NY', 'miraclesharan@gmail.com', 'Mobile', 'Instagram', '2023-05-31 12:59:00', '2023-05-31 14:59:00'), 
(6, 'sankar', '2023-02-02', 'Miami', 'FL', 'sara@gmail.com', 'Tablet', 'Hathway', '2023-02-02 12:59:00', '2023-02-02 14:22:00'),
(2, 'hemanth', '2023-04-30', 'Los Angeles', 'CA', 'Hemanth@gmail.com', 'Mobile', 'Pinterest', '2023-04-30 16:05:00', '2023-04-30 18:02:00'),
(10, 'sanju', '2023-03-15', 'Seattle', 'WA', 'sanju@gmail.com', 'desktop', 'YouTube', '2023-03-15 13:38:00', '2023-03-15 15:28:00'),
(3, 'Dhanesh', '2023-06-20', 'Chicago', 'IL', 'dhanesh@gmail.com', 'Laptop', 'Instagram', '2023-06-20 17:15:00', '2023-06-20 19:12:00'),
(10, 'sanju', '2023-06-20', 'Seattle', 'WA', 'sanju@gmail.com', 'Mobile', 'Hathway', '2023-06-20 13:30:00', '2023-06-20 14:45:00');

#ALTER TABLE
ALTER TABLE customer
rename to customer_table;

#DELETE
delete cust_id from customer_table
where cust_id=8;

#UPDATE
update  customer_table 
set cust_name="hemanth kumar" 
where cust_name="hemanth";
