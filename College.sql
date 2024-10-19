CREATE DATABASE college; # command to create a database 
SHOW DATABASES; # list out the databases
USE college; # command to select a specific database
DROP DATABASE student; # permanently delete the database
SHOW DATABASES;
DROP DATABASE IF EXISTS student ; # IF EXISTS tell that if database exist delete else don'table 
# Latest version has not direct command for rename a database for technical and security purpose	
CREATE TABLE student(
stu_id INT PRIMARY KEY AUTO_INCREMENT ,
stu_name VARCHAR(100) NOT NULL,
stu_age INT(2) NOT NULL,
stu_mobile_no INT(10) NOT NULL);
CREATE TABLE student(
stu_id INT PRIMARY KEY AUTO_INCREMENT ,
stu_name VARCHAR(100) NOT NULL,
stu_age INT(2) NOT NULL,
stu_mobile_no INT(10) NOT NULL);
DROP TABLE student;
CREATE TABLE student(
stu_id INT PRIMARY KEY AUTO_INCREMENT ,
stu_name VARCHAR(100) NOT NULL,
stu_age INT(2) NOT NULL,
stu_mobile_no INT(10) NOT NULL); # Command to create a structure of table
DESC student; # command to see the structure of table 
INSERT INTO student (stu_id,stu_name,stu_age,stu_mobile_no) VALUES
(1,"Rahul",24,9324563),(2,"Raj",35,97829273),(3,"Shammir",45,98278910); # Inserting data into table
SELECT * FROM student; # Selecting data  from table 
SELECT stu_name FROM student WHERE stu_age=35; #Selecting name based on condition
UPDATE student SET stu_age=26 WHERE stu_name="RAJ"; # updating a colunm based on condition but gives an error because safe mode is enabled . It prevent to accidently delete or update a row without a where clause that uses a KEY coulmn without key it can;t be update or delete
SET SQL_SAFE_UPDATES = 0; # this query temporialy disabled safe mode 0-disable & 1 -- enable
UPDATE student SET stu_age=26 WHERE stu_name="RAJ";
SELECT * FROM student;
DELETE FROM student WHERE stu_id=1;
SELECT * FROM student;
SELECT * FROM student ORDER BY stu_age DESC;
SELECT * FROM student LIMIT 2;
SELECT * FROM student WHERE stu_name LIKE 'S%';
SELECT * FROM student WHERE stu_name LIKE '%j';
