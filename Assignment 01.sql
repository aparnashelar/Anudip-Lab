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
8 rows in set (0.23 sec)

mysql> use e_commerce;
Database changed
mysql> create table employee(employeeID int(10)not null priccrccccreate table employee(employeeID int(10)not null primary key, employeeName varchar(50) not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.11 sec)
       
mysql> insert into employee values(01,'ankit kanu',50000),(02,'ishaan gupta',60000),(03,'shreya chingam',100000),(04,'ganesh yadav',40000),(05,'shweta pal',70000);
Query OK, 5 rows affected (0.06 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select*from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | ankit kanu     |  50000 |
|          2 | ishaan gupta   |  60000 |
|          3 | shreya chingam | 100000 |
|          4 | ganesh yadav   |  40000 |
|          5 | shweta pal     |  70000 |
+------------+----------------+--------+
5 rows in set (0.01 sec)

mysql> update employee set salary=80000 where employeeId=5;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | ankit kanu     |  50000 |
|          2 | ishaan gupta   |  60000 |
|          3 | shreya chingam | 100000 |
|          4 | ganesh yadav   |  40000 |
|          5 | shweta pal     |  80000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set employeeName='Anup pal'where employeeID=2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | ankit kanu     |  50000 |
|          2 | Anup pal       |  60000 |
|          3 | shreya chingam | 100000 |
|          4 | ganesh yadav   |  40000 |
|          5 | shweta pal     |  80000 |
+------------+----------------+--------+
5 rows in set (0.01 sec)

mysql> delete from employee where employeeid=5;
Query OK, 1 row affected (0.01 sec)

mysql> select*from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | ankit kanu     |  50000 |
|          2 | Anup pal       |  60000 |
|          3 | shreya chingam | 100000 |
|          4 | ganesh yadav   |  40000 |
+------------+----------------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee;
Query OK, 4 rows affected (0.01 sec)

mysql> select*from employee;
Empty set (0.00 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.05 sec)

mysql>  insert into employee values(01,'ankit kanu',50000),(02,'ishaan gupta',60000),(03,'shreya chingam',100000),(04,'ganesh yadav',40000),(05,'shweta pal',70000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select*from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | ankit kanu     |  50000 |
|          2 | ishaan gupta   |  60000 |
|          3 | shreya chingam | 100000 |
|          4 | ganesh yadav   |  40000 |
|          5 | shweta pal     |  70000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> truncate table employee;
Query OK, 0 rows affected (0.07 sec)

mysql> select*from employee;
Empty set (0.00 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.04 sec)

mysql> create table employee(employeeID int(10)not null primary key, employeeName varchar(50) not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into employee values(01,'ankit kanu',50000),(02,'ishaan gupta',60000),(03,'shreya chingam',100000),(04,'ganesh yadav',40000),(05,'shweta pal',70000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select*from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | ankit kanu     |  50000 |
|          2 | ishaan gupta   |  60000 |
|          3 | shreya chingam | 100000 |
|          4 | ganesh yadav   |  40000 |
|          5 | shweta pal     |  70000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee add email varchar(100)not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(50)  | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee modify employeeName varchar(100)not null;
Query OK, 5 rows affected (0.08 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee drop column email;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename column salary to employeeSalary;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename to employee_details;
Query OK, 0 rows affected (0.03 sec)

mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details drop primary key;
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   |     | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details add constraint primary key(employeeID);
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql>