create database saturday;
use saturday;

create table category(
cid int not null,
cname varchar(50) not null,
);
insert into category values(1001, 'electronics');
insert into category values(1002, 'furniture');
select * from category

create table products(
pid int not null,
pname varchar(50) not null,
cid int not null,
foreign key (cid) references category(cid)
);
insert into products values(901, 'iphone', 1001);
insert into products values(902, 'chair', 1002);
insert into products values(903, 'samsung', 1001);
select * from products

delete from category where cid=1002;

update category set cid=1003 where cid=1001;



