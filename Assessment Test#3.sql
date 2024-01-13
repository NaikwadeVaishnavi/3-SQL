create table teachers (tech_id serial primary key ,
					  tech_first_name varchar(50) not null,
					  tech_last_name varchar(50) not null,
					  homeroom_number int not null,
					  department varchar(25) not null,
					  tech_phone varchar(20) not null unique,
					  tech_email varchar(70) not null unique
					  )


create table student (student_id serial primary key ,
					  st_first_name varchar(50) not null,
					  st_last_name varchar(50) not null,
					  st_homeroom_number int not null,
					  st_phone varchar(20) not null unique,
					  st_email varchar(70) not null unique,
					  graduation_year int not null 
					 )
					 
insert into student values (1,'Rahul',' Galande',5,'7775551234','Rahul.galande@gmail.com',2023)
select * from student

insert into teachers values (1,'Chandrashekhar',' Gogte ',5,'Biology','7775554321','Chandrashekhar.gogte@gamil.com ')
select * from teachers

alter table student rename column st_first_name to first_name
select * from student

alter table student add column sub varchar(25)
select * from student

alter table student drop column sub

update student  set first_name ='papu' where student_id =1
select * from student

