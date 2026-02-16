create database college;
show databases;
use college;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE
);

INSERT INTO students (student_id, name, age, email)
VALUES (1, 'Akhila', 21, 'akhila@example.com');
INSERT INTO students (student_id, name, age, email)
VALUES (2, 'Rahul', 22, 'rahul@example.com');
INSERT INTO students (student_id, name, age, email)
VALUES (4, 'Arjun', 23, 'arjun@example.com');
UPDATE students
SET age = 25
WHERE student_id = 3;
show tables;
DELETE FROM students
WHERE student_id = 5;
SELECT * 
FROM students
WHERE age > 20 AND name = 'Sneha';
SELECT * 
FROM students
WHERE age = 20 OR age = 21;
SELECT * 
FROM students
WHERE NOT age = 22;
SELECT age, COUNT(*) 
FROM students
GROUP BY age;
SELECT * 
FROM students
ORDER BY age ASC;
SELECT * 
FROM students
ORDER BY age ASC;
SELECT * 
FROM students
ORDER BY name DESC;
SELECT COUNT(*) 
FROM students;
SELECT SUM(age) 
FROM students;
SELECT AVG(age) 
FROM students;
SELECT MIN(age) 
FROM students;
SELECT MAX(age) 
FROM students;
-- INNER JOIN
SELECT s.student_id, s.name, c.course_name
FROM students s
INNER JOIN courses c
ON s.student_id = c.student_id;
-- LEFT JOIN
SELECT s.student_id, s.name, c.course_name
FROM students s
LEFT JOIN courses c
ON s.student_id = c.student_id;
SELECT *
FROM students
WHERE name LIKE '%a';
SELECT *
FROM students
WHERE name LIKE 'a%';
SELECT *
FROM students
WHERE name LIKE '%a%';
SELECT age, COUNT(*) 
FROM students
GROUP BY age
HAVING COUNT(*) > 1;
SELECT age, AVG(age) 
FROM students
GROUP BY age
HAVING AVG(age) > 21;



