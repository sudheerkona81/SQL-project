-- AVIRENZA SQL Assignment: Create a Students Table and Run Basic SQL Queries
-- Database: PostgreSQL
-- Run the CREATE TABLE and INSERT statements in DB Fiddle's Schema SQL panel.
-- Run the five SELECT queries in the Query SQL panel.

-- 1. Create the students table
DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id      INT PRIMARY KEY,
    name    VARCHAR(50) NOT NULL,
    city    VARCHAR(50) NOT NULL,
    course  VARCHAR(50) NOT NULL,
    marks   INT CHECK (marks BETWEEN 0 AND 100)
);

-- 2. Insert ten student records
INSERT INTO students (id, name, city, course, marks) VALUES
(1, 'Sudheer', 'Hyderabad',  'Python', 92),
(2, 'Anil',    'Visakhapatnam', 'SQL', 85),
(3, 'Priya',   'Hyderabad',  'Java',   88),
(4, 'Ravi',    'Vijayawada', 'Python', 76),
(5, 'Sneha',   'Chennai',    'SQL',    91),
(6, 'Kiran',   'Visakhapatnam', 'Java', 79),
(7, 'Divya',   'Hyderabad',  'Python', 95),
(8, 'Arun',    'Chennai',    'SQL',    68),
(9, 'Meena',   'Vijayawada', 'Java',   84),
(10,'Rahul',   'Hyderabad',  'Python', 81);

-- QUERY 1: Display all student records.
SELECT * FROM students;

-- QUERY 2: Display students who are from Hyderabad.
SELECT * FROM students
WHERE city = 'Hyderabad';

-- QUERY 3: Display all students from highest marks to lowest marks.
SELECT * FROM students
ORDER BY marks DESC;

-- QUERY 4: Count how many students are enrolled in each course.
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course
ORDER BY course;

-- QUERY 5: Calculate the average marks of all students.
SELECT AVG(marks) AS average_marks
FROM students;
