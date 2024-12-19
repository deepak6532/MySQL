# DDl => Data Defination Langugage
# Create,drop,truncate,alter

use regex2;

create table test(id int,name varchar(20));

insert into test values(10,"Ankit");  # DMl operation 

insert into values("Aman");    #ERROR

insert into test(name) values("Yash");  
insert into test values(30,"Jay");

select * from test;   


# ==== update : update column  : Dml operation 
# delete : dml operation

update test set name="Deepak" where id=10;   # update column values in a particular condition 


delete from test where id is null;           # delete row in particular data

select * from test;

insert into test values(23,"new");

delete from test where name= "new";

select * from test;



# Drop table test :          Data and structure both deleted


# trucate : Ddl operation

truncate test;         # remove all data in a table  but structure not deleted 




# alter 


use regex2;

create table companies(id int);
insert into companies values(10);
select * from companies;

# alter : add column new 

alter table companies add column phone varchar(15);

select *from companies;

update companies set phone="8875692821" where id =10; 


alter table companies add column employee_count int not null;

select * from companies;

# alter table table_name drop column _name  :      delete columnn in a table

alter table companies drop employee_count;

select *from companies;


# rename table :Ddl   ,change table name 

rename table companies to newcompany;


select *from newcompany;

alter table newcompany rename to company;     # seocnd method to change table name

select * from company;


# change columnn name using  alter and rename

desc company;

alter table company rename column id to eid;

select * from company;


# Add primary key in a column 

alter table company add primary key (eid);

desc company;

select * from company;


# create constraint 
alter table company add constraint regex_company_uk unique(phone);

select *from company;
insert into company values(20,"9376072346");

# modify : only change  datatype


alter table company modify eid double;

desc company;

alter table company modify 	phone bigint;

desc company;



# change column name and datatype both 

# change

alter table company change phone mobile bigint;

desc company;


# interview question: 
# diffrece between drop,delete,truncate

