show databases;
create database sathyabama;
use sathyabama;
create table ece(
sid int,
sname varchar(30),
smarks int,
sdept varchar(50),
sage int
);
show tables from sathyabama;
desc ece;
insert into ece values (1001, 'vijay', 90, 'ece', 19, 'Sri lanka');
select * from ece;
alter table ece add(
semail varchar(50),sphone int8);
alter table ece drop column semail;
alter table ece add(
scountry varchar(40) default 'India'
);
update ece set slocation = 'India', smarks=87
where sid=1001;
update ece set marks = smarks+1;