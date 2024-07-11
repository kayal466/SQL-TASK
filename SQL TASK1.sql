create database kayalvizhi;
use kayalvizhi;
CREATE TABLE STAFF(
EMPID INT PRIMARY KEY,
EMPNAME VARCHAR(30),
DESIGNATION VARCHAR(30),
SALARY INT,
AGE INT
);
select * from staff;
insert into staff values(101,'Sam','Data Analyst',45000,22); 
insert into staff values(102,'John','Data Scientist',78000,32); 
insert into staff values(103,'Avan','Business Analyst',40000,27);
insert into staff values(104,'James','Software Developer',42000,24);
insert into staff values(105,'Nick','Marketing Manager',38000,21); 
-- Select all the columns from the given table- employee
select * from staff;
-- Select only empid and empname from the given table 
select empid,empname from staff;

-- Select the empid and empname from the table whose salary is more than 10000
select empid,empname 
from staff
where salary > 10000; 
-- Find the empname whose age is between 20 and 30 and salary is less than 40000
select empname from staff
where age between 20 and 30 and salary <40000;
-- Display the empid, empname and sort salary in ascending order
select empid,empname from staff
order by salary asc;
-- Sort the names of employees from eldest to youngest.
select empname from staff
order by age desc;
-- Add a new row of data with the following values to the same employee table- 
 -- empid-105, empname-Nick, designation-Architect, salary-38000, age-21
 insert into staff values(105,'Nick','Architect',38000,21);  -- cannot add the value because primary key is given. 
-- Create a table student with the following columns- student_id, StudentName, SubjectMarks, FavoriteSports, NativeLanguage. 
-- Use the required data types. Give primary key and auto increment constraints for the student_id.
CREATE TABLE STUDENT1 (
STUID INT PRIMARY KEY AUTO_INCREMENT,
STUNAME VARCHAR(30),
SUBMARK INT,
FAVSPORT VARCHAR(30),
NATIVELANGUAGE VARCHAR(20)
);
select * from student1;
-- Insert the values into the student table.
INSERT INTO STUDENT1 values(1,'Santhosh',71,'Cricket','Tamil');
INSERT INTO STUDENT1 values(2,'Karthick',75,'tennis','Hindi');
INSERT INTO STUDENT1 values(3,'Nehlu',65,'Soccer','Urdu');
INSERT INTO STUDENT1 values(4,'Cavy',79,'Hockey','French');
INSERT INTO STUDENT1 values(5,'Hassan',91,'Badminton','Telugu');
INSERT INTO STUDENT1 values(6,'Suriya',82,'Cricket','Tamil');
INSERT INTO STUDENT1 values(7,'Amit',63,'tennis','Kannada');
INSERT INTO STUDENT1 values(8,'Paru',50,'Boxing','Telugu');
INSERT INTO STUDENT1 values(9,'Dhaya',75,'Boxing','Hindi');
INSERT INTO STUDENT1 values(10,'Shagu',77,'Basketball','Telugu');
INSERT INTO STUDENT1 values(11,'Archana',46,'Hockey','Urdu');

select * from stuDENT1;
-- Add a new column - Address to the same table. Fill the address column with the following values for all the students 
ALTER table STUDENT1
ADD ADDRESS VARCHAR(50);

UPDATE STUDENT1 SET ADDRESS='CHENNAI'
WHERE STUID=1;

UPDATE STUDENT1 SET ADDRESS='HYDERABAD'
WHERE STUID=2;
UPDATE STUDENT1 SET ADDRESS='DELHI'
WHERE STUID=3;
UPDATE STUDENT1 SET ADDRESS='LUCKNOW'
WHERE STUID=4;
UPDATE STUDENT1 SET ADDRESS='PONDICHERRY'
WHERE STUID=5;
UPDATE STUDENT1 SET ADDRESS='GUJARAT'
WHERE STUID=6;
UPDATE STUDENT1 SET ADDRESS='MUMBAI'
WHERE STUID=7;
UPDATE STUDENT1 SET ADDRESS='DELHI'
WHERE STUID=8;
UPDATE STUDENT1 SET ADDRESS='CHENNAI'
WHERE STUID=9;
UPDATE STUDENT1 SET ADDRESS='CHANDIGARH'
WHERE STUID=10;
UPDATE STUDENT1 SET ADDRESS='MUMBAI'
WHERE STUID=11;
SELECT * FROM STUDENT1;
-- Change the SubjectMarks of the students to 99 whose student_id’s are less than 3.
UPDATE STUDENT1 SET SUBMARK =99
WHERE STUID <3;
-- Delete the entire column NativeLanguage.
ALTER TABLE STUDENT1
DROP COLUMN NATIVELANGUAGE;
SELECT * FROM STUDENT1;
-- Delete a record from the same student table whose student_id is 6
DELETE FROM STUDENT1 WHERE STUID=6;
SELECT * FROM STUDENT1;
-- Clear all the records from the student table. Retain the table structure.
TRUNCATE TABLE STUDENT1;
-- Delete the table structure of student 
DROP TABLE STUDENT1;