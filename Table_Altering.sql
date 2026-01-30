CREATE DATABASE startersql;

USE startersql;

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
gender ENUM('Male', 'Female', 'Other'),
date_of_birth DATE,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT email, gender, date_of_birth from users;

RENAME TABLE  users to programmers;

RENAME TABLE  programmers to users;

ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

ALTER TABLE users ADD COLUMN civic_number INT UNIQUE; 

ALTER TABLE users DROP COLUMN civic_number;

ALTER TABLE users RENAME COLUMN name to names;
 
ALTER TABLE users MODIFY COLUMN names VARCHAR(150);
 
ALTER TABLE  users MODIFY COLUMN email VARCHAR(100) AFTER  id;
 
 ALTER TABLE users MODIFY COLUMN date_of_birth DATE FIRST;

SELECT * FROM users;

