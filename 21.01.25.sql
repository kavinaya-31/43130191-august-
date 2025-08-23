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