use regex;

select *from orders;

select * from  product;

select * from orders natural join product;

# is a rule to applied to column of a table to ensure t

#operator
# function 
# group by 
# sub query
# coreleted 
# joins


create table test(eid int);


insert into test values(200);

select *from test;

insert into test values(null);

select * from test;

drop table test;  # delte table


drop table test;
create table test(eid int not null);


insert into test values(200);

select *from test;

insert into test values(null);
select *from test;



create table test(eid int unique);

insert into test values(200);

select *from test;

insert into test values(null);
insert into test values(null);

insert into test values(200);    # can not be insert duplicate value but insert null in many yim e

select * from test;

select * from test2 where eid is null;
select * from test2 where eid is not null;


create table test2(eid int default 0,name varchar(20) );

insert into test2(eid,name) values(100,"aman");
insert into test2 values(null,"naman");
insert into test2(name) values("naman");

select * from test2;



# primary key

create table test3(eid int primary key auto_increment ,name varchar(20));

insert into test3(eid,name) values(100,"aman");
insert into test3(name) values("yash");
insert into test3(name) values("jay");

select * from test3;

# check condition

create table test4(eid int check (eid>10) ,name varchar(20));

insert into test4(eid,name) values(100,"jay");
insert into test4(eid,name) values(8,"yash");

select * from test4;



drop table test5;

create table test5(eid int ,name varchar(20),
constraint regex_test_eid_chk check (eid>10),
constraint regex_Test_name_uk unique(name));

insert into test5(eid,name) values(100,"jay");
insert into test5(eid,name) values(8,"yash");

insert into test5(eid,name) values(110,"jay");

insert into test5(eid,name) values(110,"rahul");

select * from test5;




