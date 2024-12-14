use employees;
select * from dept_emp;

use sakila;

select * from payment;

select payment_id,amount from payment where payment_id in (1,3);

# multi row sub query
select * from payment where amount in ( select amount from payment where payment_id in (1,3));

select * from payment where amount  = any( select amount from payment where payment_id in (1,3));

select * from payment where amount > any( select amount from payment where payment_id in (1,3));

select * from payment where amount < any ( select amount from payment where payment_id in (1,3));

select * from payment where amount  = all ( select amount from payment where payment_id in (1,3));

select * from payment where amount  > all ( select amount from payment where payment_id in (1,3));

select count(*) from payment where amount  < all ( select amount from payment where payment_id in (1,3));

use sakila;


create table xyz(id int);

insert into xyz values(20);


insert into xyz values(-20);

select * from xyz;

create table employee(e_id int unsigned);

insert into employee values(32);

insert into employee values(2147483650);
select *from employee;


create table abc(salary double(5,6));
insert into abc values(20.1);
insert into abc values(230.1234342);


select * from abc;

create table boole(i bool);
insert into boole values(true),(False);
insert into boole values(1);


select * from boole;

create table aadi(salary char(5));
insert into aadi values('aaa');
insert into aadi values('asasasassddf  ');

select salary,length(salary) from aadi;


create table new(name varchar(6));

insert into new values("deepak");


insert into new values("ankitj  ");
select * from new;


create table date_time(dob date);

insert into date_time values('2005-11-12');

insert into date_time values('2005-11-12');
select *from date_time;


# condition 

# condition? True: false

select * from actor;

# condition?True:False

select first_name, if(first_name="nick",1,0) from actor;


select first_name ,if(first_name="Nick",0, if ( first_name="ED",2,"not value")) as condition_column from actor; 


select first_name ,
case
	when first_name ="Nick"  Then 0
    when first_name="Ed" then 1
    else  "No value"
End as "newcol"
	from actor;
    
    
select * from payment;

# question 
select payment_id,customer_id,amount,month(payment_date) ,
case
	when amount> 2 then (amount + amount*0.10)
    when amount> 5 then (amount + amount*0.25)
    when amount> 8 then (amount + amount*0.50)
	else amount + amount * 0.05
End as column1
from payment;
    
    

