#WINDOWS FUNCTION
CREATE TABLE employees (
  id INT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(100),
  job_title VARCHAR(100),
  department_id INT,
salary DECIMAL(10, 2),
hired_date DATE
);

INSERT INTO employees VALUES (1, 'John', 'Doe', 'john.doe@gmail.com', 'Software Engineer', 1, 50000, '2022-01-01');
INSERT INTO employees VALUES (2, 'Jane', 'Smith', 'jane.smith@gmail.com', 'Data Scientist', 2, 60000, '2022-02-01');
INSERT INTO employees VALUES (3, 'Bob', 'Johnson', 'bob.johnson@gmail.com', 'Product Manager', 1, 70000, '2022-03-01');
INSERT INTO employees VALUES (4, 'Alice', 'Williams', 'alice.williams@gmail.com', 'Software Engineer', 2,80000, '2022-04-01');
INSERT INTO employees VALUES (5, 'Charlie', 'Brown', 'charlie.brown@gmail.com', 'UX Designer', 3,  60000, '2022-05-01');
INSERT INTO employees VALUES (6, 'Emma', 'Davis', 'emma.davis@gmail.com', 'Data Analyst', 3, 70000, '2022-06-01');

#1.ROW_NUMBER
select id, salary, department_id, row_number() over(partition by department_id order by salary) as row_id from employees;

#2.RANK
select id, department_id, hired_date, salary, rank() over(order by Salary) as rank_num from employees;

#3.DENSE RANK
select id, department_id, hired_date, salary, dense_rank() over(order by salary) as d_rank from employees;

#4.LEAD
select id, department_id, hired_date, salary, lead(salary, 1, 0) over(order by salary) as lead_value from employees;

#5.LAG
select id, department_id, hired_date, salary, lag(salary, 1, 0) over(order by salary) as lag_value from employees;

#6.FIRST_VALUE
select id, department_id, hired_date, salary, first_value(salary) over(partition by department_id order by salary desc) as f_value from employees;

#7.LAST_VALUE
select id, department_id, hired_date, salary, last_value(salary) over(partition by department_id order by salary ) as l_value from employees;
