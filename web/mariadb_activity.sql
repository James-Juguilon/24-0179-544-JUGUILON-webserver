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