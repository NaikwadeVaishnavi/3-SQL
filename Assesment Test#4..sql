create table locations (LOCATION_ID serial primary  key,
						address varchar(60) ,
						postel_code int not null,
						city varchar(40) not null,
						state_pro varchar(30),
						countery_id varchar(12))

insert into locations values (,'via cola',4567,'ROMA','','IT')
insert into locations values (2,'ALLA DELLA',515246,'TOKYO','TOKYO PRE','JP')
SELECT * FROM LOCATIONS

select * from couiry
