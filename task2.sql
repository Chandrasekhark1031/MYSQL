create database cricket;
drop database cricket;
use cricket;
show databases;
create table player_info(
id integer auto_increment,
name_ varchar(30),
age integer,
wickets int,
runs int,
primary key(id)
);
select *from player_info;
insert into player_info(name_,age,wickets,runs)
values
('R.sharma',37,12,19000),
('s.gill',24,0,5000),
('v.kohli',35,9,27500),
('r.pant',null,0,5000),
('s.iyer',29,0,4500),
('a.patel',30,140,1800),
('r.jadeja',35,350,4000),
('h.pandya',30,150,4000),
('kl.rahul',32,0,8000),
('s.dube',null,10,1000),
('w.sundar',25,80,700),
('I.kishan',25,0,2000),
('jaiswal',23,0,3000),
('surya',33,3,4500),
('rinku',26,3,1000),
('bumhra',null,250,200),
('siraj',28,180,200),
('shami',32,250,300),
('kuldeep',30,180,200),
('chahal',30,200,200);
select *from player_info;
select *from player_info where age is null;

update player_info set age=26 where id=4;
update player_info set age=31 where id=10;
update player_info set age=28 where id=16;
select *from player_info;

delete from player_info where id=20;

alter table player_info add roles varchar(30);

update player_info set roles='batter' where id=1;

alter table player_info drop column roles;
select *from player_info;

