SHOW DATABASES;

CREATE DATABASE project_db;

USE project_db;

SHOW TABLES;

CREATE TABLE users(
    email VARCHAR(50) UNIQUE,
    password VARCHAR(100) NOT NULL,
    role ENUM("ADMIN","USER")
);

DESC users;

INSERT INTO users VALUES("paraspatil@gmail.com","paras123","user");
INSERT INTO users VALUES("phalleomkar1000@gmail.com","omkar123","admin");
INSERT INTO users VALUES("truptizore08@gmail.com","trupti123","user");
INSERT INTO users VALUES("nehapatil@gmail.com","neha123","user");
INSERT INTO users VALUES('s1', 'pass123', 'user');
INSERT INTO users VALUES('s2', 'pass123', 'user');
INSERT INTO users VALUES('s3', 'pass123', 'user');
INSERT INTO users VALUES('admin@test.com', 'admin123', 'admin');
INSERT INTO users VALUES('john@test.com', 'pass123', 'user');

SELECT * FROM users;


CREATE TABLE courses(
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50) NOT NULL,
    description VARCHAR(255),
    fees int NOT NULL,
    start_date DATE,
    end_date DATE,
    video_expire_days INT
)AUTO_INCREMENT = 101;

DESC courses;

INSERT INTO courses(course_name,description,fees,start_date,end_date,video_expire_days) VALUES('IIT-MERN-2025', 'MERN', 4000, '2025-12-20', '2026-01-20', 30);
INSERT INTO courses(course_name,description,fees,start_date,end_date,video_expire_days) VALUES('AI', 'AI Course', 10000, '2025-12-24', '2026-01-24', 5);
INSERT INTO courses(course_name,description,fees,start_date,end_date,video_expire_days) VALUES('Android', 'Android Dev', 9999, '2025-12-24', '2026-01-24', 7);
INSERT INTO courses(course_name,description,fees,start_date,end_date,video_expire_days) VALUES('python', 'I py', 10000, '2025-12-24', '2026-01-24', 20);
INSERT INTO courses(course_name,description,fees,start_date,end_date,video_expire_days) VALUES('IIT-MERN-July', 'MERN July', 4000, '2025-07-20', '2025-08-20', 30);

SELECT * FROM courses;



CREATE TABLE videos(
    video_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    title VARCHAR(50) NOT NULL,
    description VARCHAR(255),
    youtube_url VARCHAR(255) NOT NULL,
    added_at DATE,
    CONSTRAINT fk_v_cursid FOREIGN KEY (course_id) REFERENCES courses(course_id)
)AUTO_INCREMENT = 1001;

DESC videos;

INSERT INTO videos(course_id,title,description,youtube_url,added_at) VALUES(101,"Introduction to MERN","Overview of MERN stack","https://www.youtube.com/watch?v=YhJ-lPiCfyc","2025-07-05");
INSERT INTO videos(course_id,title,description,youtube_url,added_at) VALUES(102,"Python Web Frameworks","Introduction to Django and Flask","https://www.youtube.com/watch?v=f00Kxt-PFYA","2025-08-10");
INSERT INTO videos(course_id,title,description,youtube_url,added_at) VALUES(103,"Data Science Basics","Getting started with Data Science","https://www.youtube.com/watch?v=ua-CiDNNj30","2025-09-15");
INSERT INTO videos(course_id,title,description,youtube_url,added_at) VALUES(104,"Frontend Fundamentals","HTML, CSS and JavaScript basics","https://www.youtube.com/watch?v=UB1O30fR-EE","2025-06-20");
INSERT INTO videos(course_id,title,description,youtube_url,added_at) VALUES(105,"Backend Development","Node.js and Express introduction","https://www.youtube.com/watch?v=Oe421EPjeBE","2025-07-25");
INSERT INTO videos(course_id,title,description,youtube_url,added_at) VALUES(101,"MERN Stack Setup","Setting up development environment for MERN","https://www.youtube.com/watch?v=G3e-cpL7ofc","2025-07-10");
INSERT INTO videos(course_id,title,youtube_url,added_at) VALUES(101,'MERN video 6','https://www.youtube.com/watch?v=cCnonxT-oZc','2025-11-26');
INSERT INTO videos(course_id,title,youtube_url,added_at) VALUES(101,'MERN 10','https://www.youtube.com/watch?v=VBhy3ircd_M','2025-11-26');
INSERT INTO videos(course_id,title,youtube_url,added_at) VALUES(102,'Intro to AI','https://www.youtube.com/watch?v=D1eL1EnxXXQ','2025-12-25');
INSERT INTO videos(course_id,title,youtube_url,added_at) VALUES(104,'Python Basics','https://www.youtube.com/watch?v=vLqTf2b6GZw','2025-12-25');


SELECT * FROM videos;



CREATE TABLE students(
    reg_no INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL,
    course_id INT NOT NULL,
    mobile_no BIGINT(10),
    profile_pic BLOB,
    FOREIGN KEY (email) REFERENCES users(email),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

DESC students;

INSERT INTO students(name,email,course_id,mobile_no) VALUES("Paras","paraspatil@gmail.com",101,9876543210);
INSERT INTO students(name,email,course_id,mobile_no) VALUES("Trupti","truptizore08@gmail.com",102,8765432109);
INSERT INTO students(name,email,course_id,mobile_no) VALUES("Neha","nehapatil@gmail.com",105,7654321098);
INSERT INTO students(name,email,course_id,mobile_no) VALUES('student1', 's1', 101, 1234567856);
INSERT INTO students(name,email,course_id,mobile_no) VALUES('student3', 's3', 101, 1234563456);
INSERT INTO students(name,email,course_id,mobile_no) VALUES('student2', 's2', 103, 123456423);
INSERT INTO students(name,email,course_id,mobile_no) VALUES('John Doe', 'john@test.com', 102, 9876543563);

SELECT * FROM students;