mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| student_information     |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
9 rows in set (0.24 sec)

mysql> create database joins;
Query OK, 1 row affected (0.04 sec)

mysql> use joins;
Database changed
mysql> create table department(department_id int not null primary key,department_name varchar(30)not null);
Query OK, 0 rows affected (0.09 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(30) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.03 sec)

mysql> insert into department values(1,'HR'),(2,'IT'),(3,'finance'),(4,'market');
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | finance         |
|             4 | market          |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> create table employee(employeeID int primary key not null,employee_name varchar(30)not null,department_id int, foreign key(department_id)references department(department_id));
Query OK, 0 rows affected (0.05 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employeeID    | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(30) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into employee values(1,'Aparna',1),(2,'Akash',2),(3,'Rakhi',3),(4,'Manasvi',null),(5,'Sunny',4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select*from employee;
+------------+---------------+---------------+
| employeeID | employee_name | department_id |
+------------+---------------+---------------+
|          1 | Aparna        |             1 |
|          2 | Akash         |             2 |
|          3 | Rakhi         |             3 |
|          4 | Manasvi       |          NULL |
|          5 | Sunny         |             4 |
+------------+---------------+---------------+
5 rows in set (0.01 sec)

mysql> select*from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | finance         |
|             4 | market          |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee inner join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Aparna        | HR              |
| Akash         | IT              |
| Rakhi         | finance         |
| Sunny         | market          |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Aparna        | HR              |
| Akash         | IT              |
| Rakhi         | finance         |
| Manasvi       | NULL            |
| Sunny         | market          |
+---------------+-----------------+
5 rows in set (0.01 sec)

mysql> select*from employee;
+------------+---------------+---------------+
| employeeID | employee_name | department_id |
+------------+---------------+---------------+
|          1 | Aparna        |             1 |
|          2 | Akash         |             2 |
|          3 | Rakhi         |             3 |
|          4 | Manasvi       |          NULL |
|          5 | Sunny         |             4 |
+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select*from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | finance         |
|             4 | market          |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee right join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Aparna        | HR              |
| Akash         | IT              |
| Rakhi         | finance         |
| Sunny         | market          |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Aparna        | market          |
| Aparna        | finance         |
| Aparna        | IT              |
| Aparna        | HR              |
| Akash         | market          |
| Akash         | finance         |
| Akash         | IT              |
| Akash         | HR              |
| Rakhi         | market          |
| Rakhi         | finance         |
| Rakhi         | IT              |
| Rakhi         | HR              |
| Manasvi       | market          |
| Manasvi       | finance         |
| Manasvi       | IT              |
| Manasvi       | HR              |
| Sunny         | market          |
| Sunny         | finance         |
| Sunny         | IT              |
| Sunny         | HR              |
+---------------+-----------------+
20 rows in set (0.00 sec)

mysql>