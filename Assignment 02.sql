mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.34 sec)

mysql> use e_commerce;
Database changed
mysql> select*from employee_details;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | ankit kanu     |          50000 |
|          2 | ishaan gupta   |          60000 |
|          3 | shreya chingam |         100000 |
|          4 | ganesh yadav   |          40000 |
|          5 | shweta pal     |          70000 |
+------------+----------------+----------------+
5 rows in set (0.09 sec)

mysql> select*from employee_details limit 3;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | ankit kanu     |          50000 |
|          2 | ishaan gupta   |          60000 |
|          3 | shreya chingam |         100000 |
+------------+----------------+----------------+
3 rows in set (0.00 sec)

mysql> select*from employee_details limit 2;
+------------+--------------+----------------+
| employeeID | employeeName | employeeSalary |
+------------+--------------+----------------+
|          1 | ankit kanu   |          50000 |
|          2 | ishaan gupta |          60000 |
+------------+--------------+----------------+
2 rows in set (0.00 sec)

mysql> select*from employee_details order by employeeSalary;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          4 | ganesh yadav   |          40000 |
|          1 | ankit kanu     |          50000 |
|          2 | ishaan gupta   |          60000 |
|          5 | shweta pal     |          70000 |
|          3 | shreya chingam |         100000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select*from employee_details order by employeeName;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | ankit kanu     |          50000 |
|          4 | ganesh yadav   |          40000 |
|          2 | ishaan gupta   |          60000 |
|          3 | shreya chingam |         100000 |
|          5 | shweta pal     |          70000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select*from employee_details order by employeeName desc;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          5 | shweta pal     |          70000 |
|          3 | shreya chingam |         100000 |
|          2 | ishaan gupta   |          60000 |
|          4 | ganesh yadav   |          40000 |
|          1 | ankit kanu     |          50000 |
+------------+----------------+----------------+
5 rows in set (0.01 sec)

mysql> select*from employee_details order by employeeSalary desc;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          3 | shreya chingam |         100000 |
|          5 | shweta pal     |          70000 |
|          2 | ishaan gupta   |          60000 |
|          1 | ankit kanu     |          50000 |
|          4 | ganesh yadav   |          40000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select*from employee_details order by employeeSalary desc limit 2;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          3 | shreya chingam |         100000 |
|          5 | shweta pal     |          70000 |
+------------+----------------+----------------+
2 rows in set (0.00 sec)

mysql> select*from customer;
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| customer_id | name    | city     | email                       | phone_no | address         | pin_code |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| c101        | aparna  | badlapur | aparnashelar2221@gmail.com  | 92213    | anant vihar     |   421503 |
| c102        | apeksha | badlapur | apekshashetty2221@gmail.com | 94413    | anant vihar     |   423303 |
| c103        | rakhi   | diva     | rakhikadam2711@gmail.com    | 86213    | pooja residency |   421534 |
| c104        | akash   | badlapur | akashsingh2512@gmail.com    | 92298    | lohar           |   421503 |
| c105        | ashwini | badlapur | ashwinishelar1801@gmail.com | 92213    | anant vihar     |   421503 |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
5 rows in set (0.04 sec)

mysql> select distinct city from customer;
+----------+
| city     |
+----------+
| badlapur |
| diva     |
+----------+
2 rows in set (0.01 sec)

mysql> select city from customer;
+----------+
| city     |
+----------+
| badlapur |
| badlapur |
| diva     |
| badlapur |
| badlapur |
+----------+
5 rows in set (0.00 sec)

mysql> select*from customer;
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| customer_id | name    | city     | email                       | phone_no | address         | pin_code |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| c101        | aparna  | badlapur | aparnashelar2221@gmail.com  | 92213    | anant vihar     |   421503 |
| c102        | apeksha | badlapur | apekshashetty2221@gmail.com | 94413    | anant vihar     |   423303 |
| c103        | rakhi   | diva     | rakhikadam2711@gmail.com    | 86213    | pooja residency |   421534 |
| c104        | akash   | badlapur | akashsingh2512@gmail.com    | 92298    | lohar           |   421503 |
| c105        | ashwini | badlapur | ashwinishelar1801@gmail.com | 92213    | anant vihar     |   421503 |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
5 rows in set (0.00 sec)

mysql> select*from customer where customer_id between'C101' and 'C104';
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| customer_id | name    | city     | email                       | phone_no | address         | pin_code |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| c101        | aparna  | badlapur | aparnashelar2221@gmail.com  | 92213    | anant vihar     |   421503 |
| c102        | apeksha | badlapur | apekshashetty2221@gmail.com | 94413    | anant vihar     |   423303 |
| c103        | rakhi   | diva     | rakhikadam2711@gmail.com    | 86213    | pooja residency |   421534 |
| c104        | akash   | badlapur | akashsingh2512@gmail.com    | 92298    | lohar           |   421503 |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
4 rows in set (0.02 sec)

mysql> select*from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p105       |       20 |       20000 | cash         | 2026-06-08 00:00:00 | shipping     |
|      103 | c105        | p103       |       60 |      100000 | cash         | 2026-02-08 00:00:00 | delivered    |
|      104 | c104        | p104       |       10 |     2000000 | phonepay     | 2026-01-10 00:00:00 | shipping     |
|      105 | c103        | p104       |       20 |       50000 | cash         | 2026-06-06 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.01 sec)

mysql> select*from customer where customer_id between'2026-01-01' and '2026-04-01';
Empty set (0.00 sec)

mysql> select*from customer where customer_id not between'2026-01-01' and '2026-04-01';
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| customer_id | name    | city     | email                       | phone_no | address         | pin_code |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| c101        | aparna  | badlapur | aparnashelar2221@gmail.com  | 92213    | anant vihar     |   421503 |
| c102        | apeksha | badlapur | apekshashetty2221@gmail.com | 94413    | anant vihar     |   423303 |
| c103        | rakhi   | diva     | rakhikadam2711@gmail.com    | 86213    | pooja residency |   421534 |
| c104        | akash   | badlapur | akashsingh2512@gmail.com    | 92298    | lohar           |   421503 |
| c105        | ashwini | badlapur | ashwinishelar1801@gmail.com | 92213    | anant vihar     |   421503 |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
5 rows in set (0.01 sec)

mysql> select*from customer;
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| customer_id | name    | city     | email                       | phone_no | address         | pin_code |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| c101        | aparna  | badlapur | aparnashelar2221@gmail.com  | 92213    | anant vihar     |   421503 |
| c102        | apeksha | badlapur | apekshashetty2221@gmail.com | 94413    | anant vihar     |   423303 |
| c103        | rakhi   | diva     | rakhikadam2711@gmail.com    | 86213    | pooja residency |   421534 |
| c104        | akash   | badlapur | akashsingh2512@gmail.com    | 92298    | lohar           |   421503 |
| c105        | ashwini | badlapur | ashwinishelar1801@gmail.com | 92213    | anant vihar     |   421503 |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
5 rows in set (0.00 sec)

mysql> select*from customer where customer_id in('C101','C103','C105');
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| customer_id | name    | city     | email                       | phone_no | address         | pin_code |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| c101        | aparna  | badlapur | aparnashelar2221@gmail.com  | 92213    | anant vihar     |   421503 |
| c103        | rakhi   | diva     | rakhikadam2711@gmail.com    | 86213    | pooja residency |   421534 |
| c105        | ashwini | badlapur | ashwinishelar1801@gmail.com | 92213    | anant vihar     |   421503 |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
3 rows in set (0.01 sec)

mysql> select*from customer where customer_id not in('C101','C103','C105');
+-------------+---------+----------+-----------------------------+----------+-------------+----------+
| customer_id | name    | city     | email                       | phone_no | address     | pin_code |
+-------------+---------+----------+-----------------------------+----------+-------------+----------+
| c102        | apeksha | badlapur | apekshashetty2221@gmail.com | 94413    | anant vihar |   423303 |
| c104        | akash   | badlapur | akashsingh2512@gmail.com    | 92298    | lohar       |   421503 |
+-------------+---------+----------+-----------------------------+----------+-------------+----------+
2 rows in set (0.00 sec)

mysql> select*from customer where city is null;
Empty set (0.01 sec)

mysql> select*from customer where city is not null;
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| customer_id | name    | city     | email                       | phone_no | address         | pin_code |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
| c101        | aparna  | badlapur | aparnashelar2221@gmail.com  | 92213    | anant vihar     |   421503 |
| c102        | apeksha | badlapur | apekshashetty2221@gmail.com | 94413    | anant vihar     |   423303 |
| c103        | rakhi   | diva     | rakhikadam2711@gmail.com    | 86213    | pooja residency |   421534 |
| c104        | akash   | badlapur | akashsingh2512@gmail.com    | 92298    | lohar           |   421503 |
| c105        | ashwini | badlapur | ashwinishelar1801@gmail.com | 92213    | anant vihar     |   421503 |
+-------------+---------+----------+-----------------------------+----------+-----------------+----------+
5 rows in set (0.00 sec)

mysql> select*from customer where city='Thane' and address='Lodha';
Empty set (0.01 sec)

mysql> select*from customer where city='Thane' or address='Lodha';
Empty set (0.01 sec)
mysql> select*from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p105       |       20 |       20000 | cash         | 2026-06-08 00:00:00 | shipping     |
|      103 | c105        | p103       |       60 |      100000 | cash         | 2026-02-08 00:00:00 | delivered    |
|      104 | c104        | p104       |       10 |     2000000 | phonepay     | 2026-01-10 00:00:00 | shipping     |
|      105 | c103        | p104       |       20 |       50000 | cash         | 2026-06-06 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.02 sec)

mysql> select*from order_details where total_price>30000;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      103 | c105        | p103       |       60 |      100000 | cash         | 2026-02-08 00:00:00 | delivered    |
|      104 | c104        | p104       |       10 |     2000000 | phonepay     | 2026-01-10 00:00:00 | shipping     |
|      105 | c103        | p104       |       20 |       50000 | cash         | 2026-06-06 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
4 rows in set (0.01 sec)