-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS university;
USE university;

-- Create a 'students' table with columns
CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    enrollment_date DATE
);

-- Create a 'students' table with columns
CREATE TABLE IF NOT EXISTS Tutors (
    tutor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Create a 'courses' table with columns
CREATE TABLE IF NOT EXISTS courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    instructor VARCHAR(100),
    credits INT DEFAULT 3
);

-- (Optional) Insert sample data
INSERT IGNORE INTO students (first_name, last_name, email, enrollment_date)
VALUES 
    ('John', 'Doe', 'john.doe@example.com', '2023-09-01'),
    ('Jane', 'Smith', 'jane.smith@example.com', '2023-09-02');

INSERT IGNORE INTO courses (course_name, instructor, credits)
VALUES 
    ('Introduction to Programming', 'Dr. Alice', 4),
    ('Database Systems', 'Prof. Bob', 3);