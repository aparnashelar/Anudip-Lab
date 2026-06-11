mysql> use e_commerce;
Database changed
mysql> select *from employee_details;
+-------------+----------------+----------------+
| employee_id | employeeName   | employeeSalary |
+-------------+----------------+----------------+
|         101 | Aniket Kadam   |          60000 |
|         102 | Ankit Verma    |          80000 |
|         103 | Prasad Sakhare |          70000 |
|         104 | Dixit Shah     |          30000 |
|         105 | Manish Khapare |          90000 |
+-------------+----------------+----------------+
5 rows in set (0.018 sec)

mysql> alter table employee_details rename employee;
Query OK, 0 rows affected (0.314 sec)

mysql> select *from employee;
+-------------+----------------+----------------+
| employee_id | employeeName   | employeeSalary |
+-------------+----------------+----------------+
|         101 | Aniket Kadam   |          60000 |
|         102 | Ankit Verma    |          80000 |
|         103 | Prasad Sakhare |          70000 |
|         104 | Dixit Shah     |          30000 |
|         105 | Manish Khapare |          90000 |
+-------------+----------------+----------------+
5 rows in set (0.019 sec)

mysql> select *from employee where employeeSalary>50000;
+-------------+----------------+----------------+
| employee_id | employeeName   | employeeSalary |
+-------------+----------------+----------------+
|         101 | Aniket Kadam   |          60000 |
|         102 | Ankit Verma    |          80000 |
|         103 | Prasad Sakhare |          70000 |
|         105 | Manish Khapare |          90000 |
+-------------+----------------+----------------+
4 rows in set (0.008 sec)

mysql> select *from employee order by employeeSalary;
+-------------+----------------+----------------+
| employee_id | employeeName   | employeeSalary |
+-------------+----------------+----------------+
|         104 | Dixit Shah     |          30000 |
|         101 | Aniket Kadam   |          60000 |
|         103 | Prasad Sakhare |          70000 |
|         102 | Ankit Verma    |          80000 |
|         105 | Manish Khapare |          90000 |
+-------------+----------------+----------------+
5 rows in set (0.142 sec)

mysql> select *from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |       20000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p103       |       10 |       40000 | cash         | 2026-06-06 00:00:00 | delivered    |
|      103 | c104        | p104       |       10 |       50000 | cash         | 2026-06-07 00:00:00 | shipping     |
|      104 | c105        | p105       |       10 |       40000 | gpay         | 2026-06-10 00:00:00 | delivered    |
|      105 | c101        | p101       |       40 |       40000 | cash         | 2026-06-09 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.010 sec)

mysql> create table orders(order_id int primary key,department varchar(50) not null,amount double not null);
Query OK, 0 rows affected (0.206 sec)

mysql> insert into orders values(1,'sales',1000),(2,'sales',1500),(3,'HR',800);
Query OK, 3 rows affected (0.080 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   1500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.007 sec)

mysql> select department,sum(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.094 sec)

mysql> select department,avg(amount) as total_avg from orders group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| sales      |      1250 |
| HR         |       800 |
+------------+-----------+
2 rows in set (0.037 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'nt' at line 1

mysql> select department,sum(amount) as total_amount from orders group by department having sum(amount)>1000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
+------------+--------------+
1 row in set (0.026 sec)

mysql> create table employee_details(employee_id int not null,name varchar(50),department varchar(60) not null,salary double not null);
Query OK, 0 rows affected (0.631 sec)

mysql> insert into employee_details values(1,'Riya Kadam','HR',5000),(2,'Kinjal Patel','IT',7000),(3,'Bhart Thande','IT',6000),(4,'Neha Chikori','HR',7000),(5,'Pillu Yadav','Finance',4500);
Query OK, 5 rows affected (0.381 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee_details;
+-------------+--------------+------------+--------+
| employee_id | name         | department | salary |
+-------------+--------------+------------+--------+
|           1 | Riya Kadam   | HR         |   5000 |
|           2 | Kinjal Patel | IT         |   7000 |
|           3 | Bhart Thande | IT         |   6000 |
|           4 | Neha Chikori | HR         |   7000 |
|           5 | Pillu Yadav  | Finance    |   4500 |
+-------------+--------------+------------+--------+
5 rows in set (0.008 sec)

mysql> select department,count(*) as total_employee from employee_details group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
| Finance    |              1 |
+------------+----------------+
3 rows in set (0.010 sec)

mysql> select department,sum(salary) as total_salary from employee_details group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        12000 |
| IT         |        13000 |
| Finance    |         4500 |
+------------+--------------+
3 rows in set (0.013 sec)

mysql> select department,avg(salary) as total_avg from employee_details group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| HR         |      6000 |
| IT         |      6500 |
| Finance    |      4500 |
+------------+-----------+
3 rows in set (0.009 sec)

mysql> select department,salary,count(*) from employee_details group by department,salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |   5000 |        1 |
| IT         |   7000 |        1 |
| IT         |   6000 |        1 |
| HR         |   7000 |        1 |
| Finance    |   4500 |        1 |
+------------+--------+----------+
5 rows in set (0.008 sec)

mysql> select department,count(*) as total from employee_details group by department having count(*)>1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
+------------+-------+
2 rows in set (0.317 sec)

mysql> select department,count(*) as total from employee_details group by department having count(*)<1;
Empty set (0.012 sec)

mysql> select department,count(*) as total from employee_details group by department having count(*)<=1;
+------------+-------+
| department | total |
+------------+-------+
| Finance    |     1 |
+------------+-------+
1 row in set (0.010 sec)

mysql> select department,count(*) from employee_details group by department having count(*)>1;
+------------+----------+
| department | count(*) |
+------------+----------+
| HR         |        2 |
| IT         |        2 |
+------------+----------+
2 rows in set (0.011 sec)

mysql>