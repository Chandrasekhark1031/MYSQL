create database functions;
#drop database functions;
use functions;
create table stu_info(
id int primary key,
name_ varchar(30),
age int,
mail varchar(30)
);
insert into stu_info(id,name_,age,mail) values
(1,'chandra',22,'chandra@gmail.com'),
(2,'eswar',20,'eswar@gmail.com'),
(3,'dinesh',25,'dinesh@gmail');
select * from stu_info;

# Sql Aggregate function
  
  #Count();
  select count(*) as names_count from stu_info;
  
  # sum()
  select sum(name_) as total_names from stu_info;
  
  # avg()
  select avg(age) as avg_age  from stu_info;
  
  # min() and max()
select min(age) as min_age ,max(age) as max_age from stu_info;

# group by()
select name_, sum(age) as age_sum from stu_info group by  name_;

# having ()
select name_, sum(age) as age_sum from stu_info group by  name_ having age_sum=20;

# Sql String functions
 #concat()
  select CONCAT(name_, '-',age) as stu_details from stu_info ;
  
  # LENGTH()
 select name_, length(name_) as len_name from stu_info;
  
  # upper() and lower()
    select upper(name_) as upper_name,lower(name_) as lower_name from stu_info ;
    
    # substring()
      select name_, substring(name_,1,3) as substr_name from stu_info ;
       
       # left() and right()
         select name_, left(name_,2) as leftside_name ,right(name_,2) as rightside_name from stu_info ;

  #trim()--remove spaces
  select mail,trim(mail) as trim_mail from stu_info;
  
#replace()
  select mail,replace(mail,'@gmail.com','@example.com') as new_mail from stu_info;
  

