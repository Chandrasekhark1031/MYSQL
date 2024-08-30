create database cricket;
#drop database cricket;
use cricket;
show databases;
create table player_info(
id integer auto_increment,
name_ varchar(30),
age integer,
wickets int,
runs int,
role_ varchar(20),
career_experience varchar(20),
primary key(id)
);
select *from player_info;
insert into player_info(name_,age,wickets,runs,role_,career_experience)
values
('R.sharma',37,12,19000,'batter','17years'),
('s.gill',24,0,5000,'batter','5years'),
('v.kohli',35,9,27500,'batter','15years'),
('r.pant',26,0,5000,'wicket keeper batter','8years'),
('s.iyer',29,0,4500,'batter','8years'),
('a.patel',30,140,1800,'spin bowl allrounder','8years'),
('r.jadeja',35,350,4000,' bowl allrounder','15years'),
('h.pandya',30,150,4000,'fast bowl allrounder','9years'),
('kl.rahul',32,0,8000,'wicket keeper batter','9years'),
('s.dube',31,10,1000,'fast bowl allrounder','4years'),
('w.sundar',25,80,700,'spin bowl allrounder','8years'),
('I.kishan',25,0,2000,'wicket keeper batter','4years'),
('jaiswal',23,0,3000,'batter','2years'),
('surya',33,3,4500,'batter','8years'),
('rinku',26,3,1000,'batter','1years'),
('bumhra',28,250,200,'bowler','8years'),
('siraj',28,180,200,'bowler','6years'),
('shami',32,250,300,'bowler','8years'),
('kuldeep',30,180,200,'bowler','8years'),
('chahal',30,200,200,'bowler','8years');
select *from player_info;

#operators

# Arithmetic operator
 create database arithmetic_operation;
# drop database arithmetic_operation;
 use arithmetic_operation;
 create table numbers(
 a int,
 b int);
 insert into numbers (a,b) values
 (10,5),
 (6,3),
 (8,2);
select
       a,
       b,
      a + b as add_result,
      a - b as sub_result,
      a * b as mul_result,
      a / b as div_result,
      a % b as module_result
from
   numbers;
   
#Comparision operator
   
   #equal to(=)
   select * from player_info where age=30;
   
   #not equal to(!=)
      select * from player_info where age!=30;
      
   # less than(<)
      select * from player_info where age<30;
    
    # greater than (>)
       select * from player_info where age>30;
     
     # less than (or) equal to (<=)
      select * from player_info where age<=30;
      
       # greqter than (or) equal to (>=)
      select * from player_info where age>=30;
      
# Logical operator
      
      # AND:
      select * from player_info where age>30 and career_experience;
      
      # OR:
      select * from player_info where age>30 or  role_='batter';
      
            # NOT:
      select * from player_info where NOT role_='batter';
      
# Concatenation operator using CONCAT()
      select id, CONCAT(name_,' - ',age,' - ',role_) as player_details
      from player_info;
      
# Like operator
  select * from player_info where role_ like '%batter' ;
  
  select * from player_info where role_ like '%keeper%' ;
  
  # in operator
  select * from player_info where role_ like '%batter' ;
  
#IN (or) not in operator
 
   select * from player_info where role_ in ('batter','bowler') ;
   
   select * from player_info where role_ not in ('batter','bowler') ;
   
  # Null (or) Not Null operator
   select * from player_info where age is null;
   
   select * from player_info where age is  not null;
   
  # BETWEEN OPERATOR
  
  select * from player_info where age between  25 and 32;
  
  select * from player_info where age  not between  25 and 32;
  
  
   
   
  
  