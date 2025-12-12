create database project;

use project;

show tables;

create table user(
    email varchar(30)unique,
    password varchar(15),
    role enum("user","host")
);
drop table user;

insert into user (email,password,role)
values("paraspatil1344@gmail.com","paras123456","host"),
("truptipatil6244@gmail.com","trupti123456","user"),
("omkarphalle1234@gmail.com","omkar123456","user");

select * from user;

create table course(
    course_id int primary key auto_increment,
    course_name varchar(20),
    description varchar(300),
    fees int,
    start_date date,
    end_date date,
    video_expire_days int

)auto_increment=101;

drop table course;

insert into course (course_name,description,fees,start_date,end_date,video_expire_days)
values("mern","interenship course",4000,"2025-12-10","2026-12-05",25),
("gen ai","interenship course",4000,"2025-12-10","2026-12-05",25),
("java","interenship course",4000,"2025-12-10","2026-12-05",25),
("python","interenship course",4000,"2025-12-10","2026-12-05",25),
("andriod","interenship course",4000,"2025-12-10","2026-12-05",25);

select * from course;
truncate table course;



create table videos(
    video_id int primary key auto_increment,
    course_id int,
    title varchar(20),
    description varchar(330),
    youtube_url varchar(200),
    added_at date
)auto_increment=201;

drop table videos;

insert into videos (title, description, youtube_url, added_at)
values
("one shot mern", "complete mern", "https://youtu.be/Vi9bxu-M-ag?si=dkRDmjURsLG0_kML", '2025-11-10'),
("one shot gen ai", "complete gen ai", "https://www.youtube.com/watch?v=D1eL1EnxXXQ", '2024-11-10'),
("one shot java", "complete java", "https://www.youtube.com/results?search_query=java+one+shot", '2023-11-10'),
("one shot python", "complete python", "https://www.youtube.com/watch?v=vLqTf2b6GZw&t=98s", '2023-11-10'),
("one shot android", "complete android", "https://www.youtube.com/watch?v=u64gyCdqawU", '2023-11-10');


create table student(
    reg_no int primary key auto_increment,
    name varchar(20) not null,
    email varchar(30) not null,
    course_id int not null,
    mobile_no bigint not null,
    profile_pic blob,
    foreign key(email) references user(email), 
    foreign key(course_id) references course(course_id)                              
);

drop table student;

insert into student (name,email,course_id,mobile_no)
values("paras","paraspatil1344@gmail.com","101",9763210564),
("trupti","truptipatil6244@gmail.com","102",4535210564),
("omkar","omkarphalle1234@gmail.com","103",9778600564);

select * from student;


#Q1
select * from course 
where start_date> curdate();

#Q2

select  c.course_name, s.reg_no, s.name, s.email, s.mobile_no,c.course_id
from  student as s
inner join course as c on c.course_id=s.course_id;

#Q3

select s.*, c.* from course as c
join student as s on s.course_id = c.course_id
where s.email ="s1";  

#Q4

SELECT
  c.course_id,
  c.course_name,
  c.start_date,
  c.end_date,
  c.video_expire_days,
  JSON_ARRAYAGG(
    JSON_OBJECT(
      'video_id', v.video_id,
      'title', v.title,
      'added_at', DATE_FORMAT(v.added_at, '%Y-%m-%d %H:%i:%s')
    )
  ) AS active_videos
FROM student s
JOIN course c ON s.course_id = c.course_id
LEFT JOIN videos v
  ON v.course_id = c.course_id
  AND DATE_ADD(v.added_at, INTERVAL c.video_expire_days DAY) >= NOW()
WHERE s.email = email
GROUP BY c.course_id, c.course_name, c.start_date, c.end_date, c.video_expire_days;







