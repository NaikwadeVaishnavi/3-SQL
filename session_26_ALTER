---Que 1 
create table job_test (job_id int primary key,
					  job_title varchar(40),
					   min_salary int,
					   max_salary int check (max_salary > 25000) )
--Que 2

alter table job_test add column email varchar(40)

--Que 3
ALTER TABLE job_test RENAME TO jobs_new

--Que 4
alter table jobs_new add column dept_id int 

--Que 5
insert into jobs_new values (1,'data_science',11000,30000,22)
insert into jobs_new values (2,'java Devloper',10000,26000,12)
insert into jobs_new values (3,'data_analytic',15000,34000,22)
insert into jobs_new values (4,'python Devloper',10000,27000,15)


--Que 6
select job_id,dept_id from jobs_new

--que 7
select sum(max_salary) from jobs_new

--Que8
select avg(max_salary) from jobs_new 
select count(*) from jobs_new

--Que 9
create table manager_details (manager_id int primary key ,
							 manager_name varchar(30),
							  dept_id int)
insert into manager_details values (1,'ram',22)
insert into manager_details values (2,'sham',22)							  
insert into manager_details values (3,'gita',12)

select * from manager_details inner join jobs_new on manager_details.dept_id=jobs_new.dept_id

--Que 10
update jobs_new SET dept_id='IT' WHERE dept_id=22

							  
