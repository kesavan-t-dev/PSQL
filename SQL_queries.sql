--create database
CREATE DATABASE postgres_db

-- use database
use postgres_db

CREATE EXTENSION IF NOT EXISTS "pgcrypto"

--table creation
CREATE TABLE teachers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100),
    dept VARCHAR(50),
    salary NUMERIC(10,2),
    join_date DATE,
    performance_rating NUMERIC(3,2) 
);

CREATE TABLE students (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100),
    score NUMERIC(5,2),
    teacher_id UUID,
    dob DATE,
    enrollment_fee NUMERIC(10,2) 
);




Select * from teachers;
Select * from students;




INSERT INTO teachers ( name, dept, salary, join_date, performance_rating) VALUES
-- ('Alice Johnson', 'Mathematics', 70000, '2018-03-15', 4.5),
-- ('Bob Smith', 'Physics', 68000, '2019-06-01', 4.2),
-- ('Carol White', 'Computer Science', 90000, '2017-09-10', 4.8),
-- ('David Brown', 'Mathematics', 72000, '2020-01-20', 4.1),
-- ('Eva Green', 'Physics', 65000, '2016-11-05', 4.0),
-- ('Frank Harris', 'Computer Science', 88000, '2015-05-25', 4.6),
('Grace Lee', 'Mathematics', 71000, '2018-08-14', 4.3),
('Henry Adams', 'Physics', 67000, '2019-12-30', 4.1),
('Ivy Turner', 'Computer Science', 91000, '2017-04-18', 4.9),
('Jack Wilson', 'Mathematics', 70500, '2021-02-11', 4.0);

INSERT INTO students (name, score, teacher_id, dob, enrollment_fee) VALUES
('Liam Carter', 88.5, 'f1aaf4a8-7d3f-4d57-8b97-6bef0644a403', '2010-05-12', 1500),
('Olivia Martin', 92.0, '33333333-3333-3333-3333-333333333333', '2009-08-23', 1600),
('Noah Davis', 76.0, '3e991d73-f436-4170-9a32-088e1c008185', '2011-01-15', 1400),
('Emma Thompson', 85.0, '5a24ea93-6263-47c5-b58f-dab68d3d1124', '2010-11-05', 1500),
('William Scott', 95.0, '8c78d2c6-d088-4857-8036-4f6a6402af7d', '2008-07-19', 1700),
('Sophia Young', 67.0, '2c4079a9-d382-4e96-9f12-c21f49134726', '2012-03-30', 1300),
('James King', 82.0, '4c742ffb-ae0c-4220-b322-b5591f23f798', '2011-09-14', 1450),
('Isabella Wright', 90.0, '1a972595-1722-4097-80b3-e58a056ecfaa', '2009-12-01', 1550),
('Benjamin Hall', 78.0, 'b4d8b495-a244-452d-9f6d-364328a6b634', '2010-06-25', 1480),
('Mia Allen', 84.0, 'c027601b-0db7-4119-b7c8-8a11e8b31e0f', '2011-04-09', 1420);


--# SQL functions Aggregate
--# count
SELECT 
	COUNT(*) AS teachers_count 
FROM teachers;

SELECT 
	COUNT(*) AS students_count 
FROM students;
GO

----------------------------------------------
--# MAX
--for student high score single person
SELECT
	MAX(score) as high_score
FROM students


-- for teacher max salary grp and single person max salary
SELECT 
	MAX(salary) as high_salary
FROM teachers


-- SELECT name, salary
-- FROM teachers
-- WHERE salary = (SELECT MAX(salary) FROM teachers);


-- SELECT *
-- FROM teachers
-- ORDER BY salary DESC
-- LIMIT 1;

SELECT * FROM teachers;
SELECT * FROM students;
---------------------------------------------------------------
--# MIN ()
SELECT 
    MIN(score) AS min_student_score
FROM students;


SELECT 
    dept,
    MIN(salary) AS min_salary
FROM teachers
GROUP BY dept
ORDER BY min_salary ASC; 


----------------------------------------------------------------------
--# AVG

-- based on teacher avg score for students
SELECT 
    t.name AS teacher_name,
    ROUND(AVG(s.score), 2) AS avg_score
FROM students s 
INNER JOIN teachers t ON s.teacher_id = t.id
GROUP BY t.name
ORDER BY avg_score DESC;

-- avg score in students table based on department in teachers table
SELECT 
    t.dept,
    ROUND(AVG(s.score), 2) AS avg_score
FROM students s
INNER JOIN teachers t ON s.teacher_id = t.id
GROUP BY t.dept
ORDER BY avg_score DESC;

--#sum
-- for teachers
-- SELECT 
--     SUM(salary) AS total_teacher_salary
-- FROM teachers;
-- total salary for dept 

SELECT 
    dept,
    SUM(salary) AS total_salary
FROM teachers
GROUP BY dept
ORDER BY total_salary DESC;


-- total fee for teachers based on student
SELECT 
    t.name AS teacher_name,
    SUM(s.enrollment_fee) AS total_fees
FROM students s
INNER JOIN teachers t ON s.teacher_id = t.id
GROUP BY t.name
ORDER BY total_fees DESC;

SELECT * FROM students;
SELECT * FROM teachers;
. 
-------------------------------------------------------------------
-- joins
--inner join for students department count for mathematics 
SELECT t.name,t.dept, COUNT(s.id) AS total_students
FROM teachers t
INNER JOIN students s ON t.id = s.teacher_id
WHERE t.dept = 'Mathematics' 
GROUP BY t.name, t.dept;

--left join 
SELECT t.name as teacher_name, s.name as student_name, s.dob
FROM teachers t
LEFT JOIN students s ON t.id = s.teacher_id 
AND s.dob > '2010-01-01'
ORDER BY s.dob;


--right join
-- show all teacher without student
SELECT s.name AS student_name, t.name AS teacher_name
FROM students s 
RIGHT JOIN teachers t ON s.teacher_id = t.id
WHERE s.name IS NULL;  

-- full outer join
SELECT t.name AS teacher_name, s.name AS student_name
FROM teachers t
FULL OUTER JOIN students s ON t.id = s.teacher_id
WHERE t.name LIKE '%s' 
AND t.dept IN ('Mathematics', 'Computer Science');

--where
SELECT *
FROM students
WHERE score > 80 AND enrollment_fee > 1500;

SELECT *
FROM teachers
WHERE salary > 80000;


--date
--for students age
SELECT 
    name,
    dob,
    AGE(CURRENT_DATE, dob) AS student_age
FROM students

--for teachers who joined date from today subtract years
SELECT *
FROM teachers
WHERE join_date >= CURRENT_DATE - INTERVAL '8 years';


--having
SELECT 
    dept,
    ROUND(AVG(salary), 2) AS avg_salary
FROM teachers
GROUP BY dept
HAVING AVG(salary) > 80000;

SELECT 
    name,
    ROUND(AVG(score), 2) AS avg_score
FROM students
GROUP BY name
HAVING AVG(score) > 85;


-- String functions
SELECT CONCAT_WS(',',name,score) as concat_string from students;

SELECT 
    name,
    UPPER(name) AS name_upper
FROM teachers;

SELECT 
    name,
    SUBSTRING(name FROM 1 FOR 3) AS short_name
FROM teachers;


--Numeric functions
SELECT 
    name,
    salary,
    FLOOR(salary) AS salary_floor
FROM teachers;

SELECT 
    name,
    enrollment_fee,
    CEIL(enrollment_fee) AS fee_ceiling
FROM students;


--multiple aggreate for single select

SELECT dept, COUNT(*) AS total_teachers,SUM(salary) AS total_salary
FROM teachers
GROUP BY dept;


SELECT t.dept, EXTRACT(YEAR FROM s.dob) AS birth_year, COUNT(s.id) AS total_students
FROM teachers t
LEFT JOIN students s  ON t.id = s.teacher_id
-- WHERE dob >= '2010-02-21'
GROUP BY t.dept, birth_year
ORDER BY t.dept;


