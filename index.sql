
CREATE DATABASE IF NOT EXISTS user_auth;
USE user_auth;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL, 
    role ENUM('student', 'teacher', 'parent') NOT NULL,
    signup_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (email, password, role)
VALUES ('user1@example.com', 'hashedpassword1', 'student'),
       ('user2@example.com', 'hashedpassword2', 'teacher'),
       ('user3@example.com', 'hashedpassword3', 'parent');
select * from users;