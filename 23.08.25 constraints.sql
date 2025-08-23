#not null
create database notnull;
use notnull;
create table persons(
id int not null,
lastname varchar(255) not null,
firstnamee varchar(255) not null,
age int,
);
alter table persons
modify age int not null;

#unique constraint
create database uniqueid;
use uniqueid;
create table persons(
id int not null,
lastname varchar(255) not null,
firstnamee varchar(255) not null,
age int,
unique (id)
);
alter table persons
drop index uc persons;

#primary key
CREATE TABLE primarykey (
id INT NOT NULL ,  
username VARCHAR(50) NOT NULL,        
email VARCHAR(100) NOT NULL,           
age INT NOT NULL,                      
PRIMARY KEY (id) 
);

#check key
create database checkkey;
use checkkey;
create table persons(
id int not null,
lastname varchar(255) not null,
firstnamee varchar(255) not null,
age int,
check(age=>18)
);






















