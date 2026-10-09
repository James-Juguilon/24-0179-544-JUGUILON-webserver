CREATE TABLE enrollments (
enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT,
course_id INT,
enrollment_date DATE
);

ALTER TABLE enrollments
ADD CONSTRAINT fk_student
FOREIGN KEY (student_id)
REFERENCES students(id);

ALTER TABLE enrollments
ADD CONSTRAINT fk_course
FOREIGN KEY (course_id)
REFERENCES courses(course_id);

NSERT INTO enrollments
(student_id, course_id, enrollment_date)
VALUES
(1, 1, '2026-10-07'),
(2, 2, '2026-10-07'),
(4, 3, '2026-10-07');

SELECT
students.name,
courses.course_name,
enrollments.enrollment_date
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN courses
ON enrollments.course_id = courses.course_id;

SELECT
students.name,
courses.course_name
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN courses
ON enrollments.course_id = courses.course_id
WHERE courses.course_name = 'CIT6';

SELECT
students.name,
courses.course_name
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN courses
ON enrollments.course_id = courses.course_id
ORDER BY students.name ASC;

SELECT
students.name,
courses.course_name
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN courses
ON enrollments.course_id = courses.course_id
ORDER BY students.name DESC;

SELECT COUNT(*) AS total_students
FROM students;

SELECT COUNT(*) AS total_enrollments
FROM enrollments;

SELECT
courses.course_name,
COUNT(enrollments.student_id) AS number_of_students
FROM courses
LEFT JOIN enrollments
ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name;

SELECT
courses.course_name,
COUNT(enrollments.student_id) AS number_of_students
FROM courses
LEFT JOIN enrollments
ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name
ORDER BY number_of_students DESC;

SELECT
students.id AS student_id,
students.name AS student_name,
courses.course_name,
enrollments.enrollment_date
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN courses
ON enrollments.course_id = courses.course_id
ORDER BY students.name;

-- CHALLENGE TASKS
INSERT INTO students (name, course, year_level)
VALUES
('John Rod', 'BSCS', 3),
('Johnny Joestar', 'BSIT', 2),
('Gyro Zeppeli', 'BSIT', 2);

SELECT * FROM students;

INSERT INTO courses (course_name, description, units)
VALUES
('CC6', 'Emerging Technologies in IT', 3),
('CC13', 'System Analysis and Design', 3),
('SOCSCI', 'The Contemporary World', 3);

SELECT * FROM courses;

INSERT INTO enrollments (student_id, course_id, enrollment_date) 
VALUES 
    (5, 4, '2026-10-07'), 
    (6, 5, '2026-10-07'), 
    (7, 6, '2026-10-07'), 
    (4, 4, '2026-10-07'), 
    (5, 3, '2026-10-07'), 
    (2, 6, '2026-10-07'), 
    (1, 5, '2026-10-07'), 
    (6, 4, '2026-10-07');

-- TASK 1
SELECT
students.name,
courses.course_name
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN courses
ON enrollments.course_id = courses.course_id
WHERE courses.course_name = 'CIT17';

-- TASK 2
SELECT
students.name,
courses.course_name,
courses.description
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN courses
ON enrollments.course_id = courses.course_id
WHERE students.name = 'Juan Dela Cruz';

-- TASK 3
SELECT
courses.course_name,
COUNT(enrollments.student_id) AS total_students
FROM courses
LEFT JOIN enrollments
ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name;

-- TASK 4
SELECT
courses.course_name,
COUNT(enrollments.student_id) AS total_students
FROM courses
JOIN enrollments
ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name
ORDER BY total_students DESC
LIMIT 1;

-- TASK 5
SELECT
id,
name,
course,
year_level
FROM students
ORDER BY name ASC;

-- TASK 6
SELECT
COUNT(*) AS total_enrollments
FROM enrollments;