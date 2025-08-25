show databases;
use sathyabama;

create table Category1(
cid int primary key,
cname varchar(30),
cdesc varchar(40)
);

create table Product1(
pid int primary key,
pname varchar(30),
cid int not null,
foreign key(cid) references category1 (cid) 
on delete cascade  
on update cascade  
);

drop table product1;
drop  table category1;

desc product1;
desc category1;

insert into category1 values (1,'Books','About educational Things');
insert into product1 values ,(1,'Science BOOKS',3),(
select * from category1;
select * from product1;

 delete from category1 where cid=1;
 select * from category1; 
 select * from product1; 
 
 update category1 set cid=1 where cid=4;
 select * from category1;
 select * from product1;

create table College(
  cid int primary key,
  cname varchar(30) not null
  );
  
create table department(
  did int primary key,
  dname varchar(30) not null,
  cid int ,
  foreign key(cid) references college (cid) 
  on update cascade
  on delete cascade
  );
  
create table student1(
  sid int primary key,
  sname varchar(30) not null,
  did int ,
  foreign key(did) references department (did)
  on update cascade
  on delete cascade
  );
  
  desc college;
  desc department;
  desc student1;
  insert into college values ( 1,'Sathyabama University');
  insert into department values ( 101,'ECE',1);
  insert into student1 values ( 1001,'arun',101));
  select * from college;
  select * from department;
  select * from student1;
  