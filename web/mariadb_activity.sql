CREATE DATABASE school;

SHOW DATABASE;

USE school;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(100),
    year_level INT
);

SHOW TABLES;

DESCRIBE students;

INSERT INTO students (name, course, year_level)
VALUES
('Juan Dela Cruz', 'BSIT', 1),
('Maria Santos', 'BSCS', 2),
('Pedro Reyes', 'BSIT', 3);

SELECT * FROM students;

SELECT * FROM students
WHERE course = 'BSIT';

SELECT * FROM students
WHERE year_level = '2';

INSERT students (name, course, year_level)
VALUES
('James Juguilon', 'BSIT', 3);

SELECT * FROM students;

UPDATE students
SET year_level = 2
WHERE name = 'Juan Dela Cruz';

SELECT * FROM students;

DELETE FROM students
WHERE name = 'Pedro Reyes';

SELECT * FROM students;

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    description VARCHAR(255),
    units INT
);

SELECT * FROM courses;

INSERT INTO courses (course_name, description, units)
VALUES
('CC17', 'Mobile Application Design and Developmetn', 3),
('CIT17', 'Web Information System', 3),
('CIT6', 'Capstone Project 1', 3);

SELECT * FROM courses;

-- 1. What command is used to create a database? CREATE DATABASE database_name;
-- 2. What command is used to select a database? USE database_name;
-- 3. What command is used to display all tables? SHOW TABLES;
-- 4. What SQL command is used to add records? INSERT INTO 
-- 5. What SQL command is used to retrieve records? SELECT
-- 6. What is the purpose of the PRIMARY KEY? It identifies each unique record on the table, no duplicates or null values. 
-- 7. What is the purpose of AUTO_INCREMENT? Auto generates a unique number and commonly used on primary keys.
-- 8. What is the difference between UPDATE and DELETE? UPDATE modifies or changes an existing record from tables, DELETE removes record from tables