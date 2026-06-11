/*Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
*/

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
9 rows in set (0.01 sec)

mysql> use student_information;
Database changed
mysql> create table student(stud_id int primary key,FirstName varchar(50),LastName varchar(50),Age int,Phoneno varchar(15),Address varchar(100));
Query OK, 0 rows affected (0.05 sec)

mysql> insert into student values(1, 'Aparna', 'Shelar', 22, '9876543210', 'Badlapur'),(2, 'Akash', 'Singh', 21, '9876543211', 'Thane'),(3, 'Sneha', 'Joshi', 23, '9876543212', 'Mumbai'),(4, 'Amit', 'Kulkarni', 22, '9876543213', 'Pune'),(5, 'Priya', 'Deshmukh', 20, '9876543214', 'Nashik');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select*from student;
+---------+-----------+----------+------+------------+----------+
| stud_id | FirstName | LastName | Age  | Phoneno    | Address  |
+---------+-----------+----------+------+------------+----------+
|       1 | Aparna    | Shelar   |   22 | 9876543210 | Badlapur |
|       2 | Akash     | Singh    |   21 | 9876543211 | Thane    |
|       3 | Sneha     | Joshi    |   23 | 9876543212 | Mumbai   |
|       4 | Amit      | Kulkarni |   22 | 9876543213 | Pune     |
|       5 | Priya     | Deshmukh |   20 | 9876543214 | Nashik   |
+---------+-----------+----------+------+------------+----------+
5 rows in set (0.01 sec)

mysql> select*from student order by LastName ASC;
+---------+-----------+----------+------+------------+----------+
| stud_id | FirstName | LastName | Age  | Phoneno    | Address  |
+---------+-----------+----------+------+------------+----------+
|       5 | Priya     | Deshmukh |   20 | 9876543214 | Nashik   |
|       3 | Sneha     | Joshi    |   23 | 9876543212 | Mumbai   |
|       4 | Amit      | Kulkarni |   22 | 9876543213 | Pune     |
|       1 | Aparna    | Shelar   |   22 | 9876543210 | Badlapur |
|       2 | Akash     | Singh    |   21 | 9876543211 | Thane    |
+---------+-----------+----------+------+------------+----------+
5 rows in set (0.00 sec)

mysql>