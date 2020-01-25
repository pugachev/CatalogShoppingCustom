create table IF NOT EXISTS catalog (id MEDIUMINT PRIMARY KEY AUTO_INCREMENT ,name varchar(128),price int,detail text,pictureurl varchar(255),index(id) ) type=INNODB;
create table IF NOT EXISTS shopping (id varchar(32) primary key,userid varchar(32),shoppingdate date,index(id))  type=INNODB;
create table IF NOT EXISTS shoppingdetail (shoppingid varchar(32),no int,productid MEDIUMINT,counts int,primary key(shoppingid,no),index(shoppingid),index(productid),foreign key(shoppingid) references shopping(id),foreign key(productid) references catalog(id)) type=INNODB;
create table IF NOT EXISTS member (name varchar(16),mail varchar(255) primary key,password varchar(32),address varchar(255),tel char(12),birth date,index(mail)) TYPE=INNODB;
create table IF NOT EXISTS roles (mail varchar(255),role varchar(32),index(mail),foreign key(mail) references member(mail)) TYPE=INNODB;


create table IF NOT EXISTS catalog (id MEDIUMINT PRIMARY KEY AUTO_INCREMENT ,name varchar(128),price int,detail text,pictureurl varchar(255),index(id) )
create table IF NOT EXISTS shopping (id varchar(32) primary key,userid varchar(32),shoppingdate date,index(id))
create table IF NOT EXISTS shoppingdetail (shoppingid varchar(32),no int,productid MEDIUMINT,counts int,totalfee int,primary key(shoppingid,no),index(shoppingid),index(productid),foreign key(shoppingid) references shopping(id),foreign key(productid) references catalog(id))
create table IF NOT EXISTS member (name varchar(16),mail varchar(255) primary key,password varchar(32),address varchar(255),tel char(12),birth date,index(mail))
create table IF NOT EXISTS roles (mail varchar(255),role varchar(32),index(mail),foreign key(mail) references member(mail));