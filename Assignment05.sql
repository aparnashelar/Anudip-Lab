mysql> CREATE DATABASE store_procedureEg;

mysql> USE store_procedure;
Database changed
mysql> CREATE TABLE employee (
    ->          employee_id INT PRIMARY KEY,
    ->          name VARCHAR(50) NOT NULL,
    ->          department VARCHAR(50) NOT NULL,
    ->          salary INT NOT NULL
    ->     );
Query OK, 0 rows affected (0.05 sec)

mysql>
mysql>  INSERT INTO employee VALUES
    ->     (1, 'Samiksha Shete', 'HR', 10000),
    ->    (2, 'Sunil Patil', 'Marketing', 20000),
    ->    (3, 'Nilam Patil', 'Finance', 30000),
    ->     (4, 'Sachin Desale', 'IT', 40000),
    ->     (5, 'Vaishnavi Shinde', 'IT', 50000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql>  DESC employee;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| employee_id | int         | NO   | PRI | NULL    |       |
| name        | varchar(50) | NO   |     | NULL    |       |
| department  | varchar(50) | NO   |     | NULL    |       |
| salary      | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

mysql> DELIMITER //
mysql>
mysql>  CREATE PROCEDURE GetEmployeeDetails()
    ->  BEGIN
    ->        SELECT * FROM employee;
    ->      END //

mysql> DELIMITER ;
mysql>
mysql>  CALL GetEmployeeDetails();
+-------------+------------------+------------+--------+
| employee_id | name             | department | salary |
+-------------+------------------+------------+--------+
|           1 | Samiksha Shete   | HR         |  10000 |
|           2 | Sunil Patil      | Marketing  |  20000 |
|           3 | Nilam Patil      | Finance    |  30000 |
|           4 | Sachin Desale    | IT         |  40000 |
|           5 | Vaishnavi Shinde | IT         |  50000 |
+-------------+------------------+------------+--------+

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeCount(
    ->     IN dept_name VARCHAR(50)
    -> )
    -> BEGIN
    ->     SELECT COUNT(*) AS total
    ->     FROM employee
    ->     WHERE  department = dept_name;
    -> END //

mysql> CALL GetEmployeeByDepartment('HR');
+-------------+----------------+------------+--------+
| employee_id | name           | department | salary |
+-------------+----------------+------------+--------+
|           1 | Samiksha Shete | HR         |  10000 |
+-------------+----------------+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> CALL GetEmployeeByDepartment('marketing');
+-------------+-------------+------------+--------+
| employee_id | name        | department | salary |
+-------------+-------------+------------+--------+
|           2 | Sunil Patil | Marketing  |  20000 |
+-------------+-------------+------------+--------+


mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE GetEmployeeCount(
    ->     OUT total INT
    -> )
    -> BEGIN
    ->     SELECT COUNT(*) INTO total
    ->     FROM employee;
    -> END //

mysql> DELIMITER ;
mysql> CALL GetEmployeeCount(@total);
Query OK, 1 row affected (0.06 sec)

mysql>
mysql> SELECT @total;
+--------+
| @total |
+--------+
|      5 |
+--------+



