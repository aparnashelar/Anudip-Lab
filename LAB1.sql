/*Create Database StudentManagementSystem

1.Create Table student

with attribute:  ●StudentID (Primary Key)
●Name
●Age
●Address


2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 
● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback

Add 5 Records in table
*/

mysql> use StudentManagementSystem;
Database changed
mysql> CREATE TABLE student( student_id varchar(10)NOT NULL primary key,name varchar(100)NOT NULL,age varchar(10)NOT NULL,address varchar(100)NOT NULL);
Query OK, 0 rows affected (0.12 sec)

mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| student                           |
+-----------------------------------+
1 row in set (0.04 sec)

mysql> desc student;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| student_id | varchar(10)  | NO   | PRI | NULL    |       |
| name       | varchar(100) | NO   |     | NULL    |       |
| age        | varchar(10)  | NO   |     | NULL    |       |
| address    | varchar(100) | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql>  insert into student(student_id,name,age,address)values('s101','aparna',21,'anant vihar'),('s102','akash',24,'anjali residency'),('s103','rakhi',20,'gauri kunj'),('s104','manasvi',22,'krushna apartment'),('s105','sunny',17,'anant vihar');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select*from student;
+------------+---------+-----+-------------------+
| student_id | name    | age | address           |
+------------+---------+-----+-------------------+
| s101       | aparna  | 21  | anant vihar       |
| s102       | akash   | 24  | anjali residency  |
| s103       | rakhi   | 20  | gauri kunj        |
| s104       | manasvi | 22  | krushna apartment |
| s105       | sunny   | 17  | anant vihar       |
+------------+---------+-----+-------------------+
5 rows in set (0.01 sec)

mysql> create table feedback(feedback_id varchar(10)not null primary key,student_id varchar(10)not null,date datetime not null,instructor_Name varchar(20) not null,feedback varchar(50) not null,foreign key(student_id) references student(student_id));
Query OK, 0 rows affected (0.06 sec)

mysql> desc feedback;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| feedback_id     | varchar(10) | NO   | PRI | NULL    |       |
| student_id      | varchar(10) | NO   | MUL | NULL    |       |
| date            | datetime    | NO   |     | NULL    |       |
| instructor_Name | varchar(20) | NO   |     | NULL    |       |
| feedback        | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into feedback values('f101','s101','2020-06-08','apeksha kumar','brilliant'),('f102','s102','2021-06-09','tanvi patil','great'),('f103','s103','2022-06-07','harsh pawar','good'),('f104','s104','2023-06-06','krishna sharma','nice'),('f105','s105','2024-06-05','anant shelar','good');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select*from feedback;
+-------------+------------+---------------------+-----------------+-----------+
| feedback_id | student_id | date                | instructor_Name | feedback  |
+-------------+------------+---------------------+-----------------+-----------+
| f101        | s101       | 2020-06-08 00:00:00 | apeksha kumar   | brilliant |
| f102        | s102       | 2021-06-09 00:00:00 | tanvi patil     | great     |
| f103        | s103       | 2022-06-07 00:00:00 | harsh pawar     | good      |
| f104        | s104       | 2023-06-06 00:00:00 | krishna sharma  | nice      |
| f105        | s105       | 2024-06-05 00:00:00 | anant shelar    | good      |
+-------------+------------+---------------------+-----------------+-----------+
5 rows in set (0.00 sec)

mysql>