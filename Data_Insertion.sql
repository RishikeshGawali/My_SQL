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
 
ALTER TABLE users DROP COLUMN is_active;
  
ALTER TABLE users MODIFY COLUMN names VARCHAR(150);
 
ALTER TABLE  users MODIFY COLUMN email VARCHAR(100) AFTER  id;
 
 ALTER TABLE users MODIFY COLUMN date_of_birth DATE FIRST;

INSERT INTO users VALUES
('2003-01-11', 1, 'rishigawali11@gmail.com', 'Rishikesh', 'Male',DEFAULT);

INSERT INTO users VALUES
('2012-10-10',3,'rishi@gmail.com','Rishi','Male',DEFAULT);

INSERT INTO users VALUES
('2012-10-10',3,'rishikeshgawali11@gmail.com','Rishi','Male',DEFAULT);

INSERT INTO users VALUES
('2004-09-27',4,'tushar@gmail.com','Tushar','Male',DEFAULT);

 INSERT INTO users(names, email, gender, date_of_birth) VALUES
('Pruthviraj','pruthviraj@gmail.com','Male','2002-08-05'),
('Sanket','sanket@gmail.com','Female','2002-03-06'),
('Shivani','Shivani@gmail.com','Other','2002-12-25');

SELECT * FROM users;
