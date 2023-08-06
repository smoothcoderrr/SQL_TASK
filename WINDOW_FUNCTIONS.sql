#WINDOWS FUNCTIONuse internship;
drop table employee;
CREATE TABLE Employee (
    id INT,
    salary DECIMAL(10, 2),
    age INT,
    phone_number VARCHAR(15),
    email_id VARCHAR(255),
    location VARCHAR(100)
);

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (1, 50000, 30, '123-456-7890', 'john@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (2, 60000, 35, '987-654-3210', 'sarah@example.com', 'Paris');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (3, 75000, 42, '555-123-4567', 'mike@example.com', 'New York');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (4, 40000, 28, '111-222-3333', 'anna@example.com', 'Berlin');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (5, 55000, 31, '444-555-6666', 'david@example.com', 'Sydney');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (1, 65000, 36, '777-888-9999', 'laura@example.com', 'Tokyo');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (7, 70000, 39, '222-333-4444', 'peter@example.com', 'Berlin');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (8, 45000, 27, '888-999-0000', 'emily@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (9, 52000, 33, '333-444-5555', 'megan@example.com', 'New York');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (10, 58000, 37, '666-777-8888', 'alex@example.com', 'Paris');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (2, 60000, 35, '555-666-7777', 'samantha@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (12, 48000, 26, '777-888-9999', 'daniel@example.com', 'Tokyo');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (13, 62000, 32, '444-555-6666', 'lisa@example.com', 'New York');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (5, 56000, 30, '222-333-4444', 'jennifer@example.com', 'Berlin');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (15, 70000, 35, '111-222-3333', 'matthew@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (12, 53000, 31, '888-999-0000', 'natalie@example.com', 'Paris');


#B. consecutive numbers for each record locationswise
    
select id, salary, age, phone_number ,location, row_number() over(partition by location) as num_location from employee;

#C. employee_updated with no duplicates
    
with employee_updated as
(select id, salary, age, phone_number, location, row_number()
over(partition by id, phone_number) as row_id from employee)
select * from employee_updated where row_id=1;

#D. all the duplicate phone numbers
    
with remove_duplicates as
(select id, phone_number, location, row_number() over(partition by phone_number, location order by id) as row_num from employee)
select * from remove_duplicates where row_num=1;

#E. difference between row_number and row_id
select id, phone_number, location, id as row_id,row_number() over(partition by phone_number, location order by id) as row_num from employee;

#F. 
#case 1: increasing order of their salary
    
select * from employee
order by salary asc;

#case 2: increasing order of their salary location wise
    
select id, salary, phone_number, location, 
rank() over(partition by location order by salary) as rank_sal from employee; 

#case 3: second-highest salary in each location
    
with highest_sal as
(select id, salary, phone_number, location, 
rank() over(partition by location order by salary) as rank_sal from employee)
select * from highest_sal where rank_sal=2; 

#case :4 least salary in each location
    
select location, min(salary) min_sal
 from employee group by location having min(salary);
