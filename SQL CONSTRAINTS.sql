create database student;
use student;
show databases;

# create a not null constraint
create table student1(
id integer not null,
fname varchar(20) not null,
age integer not null);
select *from student1;


insert into student1(id,fname,age)values
(1,'chandra',21),
(2,'eswar',20),
(3,'tarun',22);

# create a unique constraint

create table student2(
id int,
fname varchar(20),
age int,
unique(id)
);
select *from student2;

# create a primary key constraint
create table student3(
id int,
fname varchar(20) ,
age int,
primary key(id)
);
select *from student3;


insert into student3(id,fname,age)values
(1,'chandra',21),
(2,'eswar',20),
(3,'tarun',22);

# create a foreign key constrints-used to link 2 tables

desc student3;
# creating another table
create table department(
id int not null,
 department_id int not null,
 department_name varchar(35),
 primary key(department_id),
 constraint file_studentdepartment foreign key(id) reference student3(id)
 );

desc department;

# create a check constraints
create table student4(
id integer not null,
fname varchar(20) not null,
age integer not null,
check(age<20)
);
select *from student4;

# create a default constraint
create table student5(
id integer not null,
fname varchar(20) not null,
age integer not null,
location varchar(34) default 'Hyderabad' 
);
desc student5;







