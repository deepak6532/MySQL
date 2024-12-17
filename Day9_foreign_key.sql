create database regex2;

use regex2;

create table product(pid int primary key,pname varchar(20),price int);

insert into product values(10,"tv",100),(20,"mobile",200),(30,"gyser",4000),(40,"yash",5000);


create table orders(oid int ,city varchar(20),product_id int,
foreign key (product_id) references product(pid));

select *from product;
select * from orders;

insert into orders values(1991,"jaipur",10),(1992,"goa",20),(1993,"uk",10),(1994,"shimla",40);

insert into orders values(1990,"error",80);    # not insert 

select * from orders;        

select * from product;



