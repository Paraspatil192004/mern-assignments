create database project;

use project;

create table user{
    email varchar(20)primary key,
    password varchar(15),
    role enum("user","host")
}

insert into user (email,password,role)
values("paraspatil1344@gmail.com","paras123456","host")
("truptipatil6244@gmail.com","trupti123456","user")
("omkarphalle1234@gmail.com","omkar123456","user")


create table course{
    course_id int primary key auto_increament,
    course_name varchar(20),
    description varchar(15),
    fees int,
    start_date date,
    end_date date,
    video-expire_days int

}auto_increament=101;

insert into course (course_name,description,fees,start_date,end_date,video_expire_days)
values("mern","interenship course",4000,"2025-12-10","2026-12-05",25)
("gen ai","interenship course",4000,"2025-12-10","2026-12-05",25)
("java","interenship course",4000,"2025-12-10","2026-12-05",25)




create table videos{
    video_id int primary key auto_increament,
    course_id int auto_increament,
    title varchar(20),
    description varchar(20),
    youtube_url varchar(15),
    added_at date
}auto_increament=201;

insert into videos ("title","description","youtube_url","added_at")
values("one shot mern","complete mern","gejywfyeqwjvfetyfg",2025-11-10)
("one shot gen ai","complete gen ai","dfgjhktukuk",2024-11-10)
("one shot java","complete java","gejywfanjhk",2023-11-10)






create table student{
    reg_no int primary key auto_increament,
    name varchar(20),
    email varchar(20),
    course_id int(10)not null,
    mobile_no int(10)not null,
    profile_pic blob,
    foreign key(email) references user(email) 
    foreign key(course_id) references course(course_id) 
};


insert into student (name,email,course_id,mobile_no)
values("paras","paraspatil1344@gmail.com","101","9763210564")
("trupti","truptipatil6244@gmail.com","102","4535210564")
("omkar","omkarphalle1234@gmail.com","103","9778600564")





