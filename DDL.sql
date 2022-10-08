use designDatabase;
create table students (
    id int primary key,
    full_name varchar(255),
    address varchar(255),
    major varchar(255)
);
create table course (
    id int primary key,
    name varchar(255),
    duration int
);
create table schedule (
    id int primary key ,
    course_id int,
    date date,
    time timestamp,
    foreign key (course_id) references course(id)
);
create table students_schedule (
    student_id int,
    schedule_id int,
    foreign key (student_id) references students(id),
    foreign key (schedule_id) references schedule(id)
);
