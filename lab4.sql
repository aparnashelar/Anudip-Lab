lab4



Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName  and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.


CREATE DATABASE StudentManagementSystem;

mysql> USE StudentManagementSystem;
Database changed
mysql> CREATE TABLE Student (
    ->     StudentID INT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql>
mysql> CREATE TABLE Course (
    ->     CourseID INT PRIMARY KEY,
    ->     CourseName VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql>
mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT PRIMARY KEY,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO Student VALUES
    -> (1, 'Samiksha', 'Shete'),
    -> (2, 'Rahul', 'Patil'),
    -> (3, 'Priya', 'Sharma');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Course VALUES
    -> (101, 'DBMS'),
    -> (102, 'Java'),
    -> (103, 'Python');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO Enrollment VALUES
    -> (1, 1, 101),
    -> (2, 1, 102),
    -> (3, 2, 103),
    -> (4, 3, 101);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT
    ->     s.StudentID,
    ->     s.FirstName,
    ->     s.LastName,
    ->     c.CourseID,
    ->     c.CourseName
    -> FROM Student s
    -> INNER JOIN Enrollment e
    ->     ON s.StudentID = e.StudentID
    -> INNER JOIN Course c
    ->     ON e.CourseID = c.CourseID;
+-----------+-----------+----------+----------+------------+
| StudentID | FirstName | LastName | CourseID | CourseName |
+-----------+-----------+----------+----------+------------+
|         1 | Samiksha  | Shete    |      101 | DBMS       |
|         1 | Samiksha  | Shete    |      102 | Java       |
|         2 | Rahul     | Patil    |      103 | Python     |
|         3 | Priya     | Sharma   |      101 | DBMS       |
+-----------+-----------+----------+----------+------------+
4 rows in set (0.00 sec)