create database students ; 
use students ; 
create table stud ( 
s_id int , s_name varchar(30),  s_age int  );

insert into stud ( s_id , s_name , s_age ) values ( 1 , "Ram" , 21 ) , (2 , "Shamam" , 21) , (3 , "Raj" , 22); 
select * from stud ; 