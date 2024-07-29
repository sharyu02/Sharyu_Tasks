create database school_managment ; 
use school_managment ; 
create table students ( 
stud_id int primary key , first_name varchar(30) , last_name varchar(30) , email varchar (30), ph_no int , DOB Date ) ; 

create table course ( 
course_id int primary key  , course_name varchar(30) , course_description varchar(100) , credit int ) ;

alter table students 
add grade varchar(2) ;
alter table students modify ph_no varchar(10) ;

insert into students 
( stud_id , first_name , last_name , email , ph_no , DOB) values ( 101 , "Ojas" , "Shirole" , "ojass@gmail.com" , "4545455656" , '2002-02-9' ) , ( 102 , "krish" , "Swani" , "krishs@gmail.com" , "5045455656" , '2003-8-7' ) , ( 103 , "Sid" , "Joshi" , "joshi@gmail.com" , "8282565656" , '2002-10-12' ), ( 104 , "Anuj" , "Shirole" , "anuj@gmail.com" , "5089635214" , '2000-02-9' );

insert into course (course_id , course_name , course_description , credit ) values (101 , "Python A-Z" , "Basic to Advance course " , 4 ),
(102 , "Java Basics" , "Course for placment prep" , 3 ) , (103 , "SQL Basics" , "Intro to SQL" , 5 ) , (104 , "Data Analysis" , "Study of major Analyticial tools" , 3 ) , (105 , "Intocudtion to AI" , "Indtoduction to Basic concept of AI" , 4 );

select first_name , last_name , email from students ; 

drop table students  ; 
drop database school_managment ; 