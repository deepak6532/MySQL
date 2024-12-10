show databases;

use sakila;

show tables;
select * from actor;


select actor_id,first_name from actor;


select actor_id,first_name,10 from actor;


select actor_id,first_name,actor_id+10 from actor;


select actor_id,first_name,"d" from actor;

select * from actor;

select first_name,actor_id from actor;

select * ,first_name from actor;

select *,first_name,actor_id from actor;

select *from actor where actor_id = 2;

select *from actor where actor_id != 2;

select *from actor where actor_id <= 5;

select first_name,last_name from actor where actor_id = 2;

-- between operator

select * from actor where actor_id between 2 and 7;

-- in  specific value

select *from actor where actor_id in(2,7);


select *from actor where first_name in ('NICK','ED');

select *from actor
 where actor_id = 2 or actor_id = 7;
 
 select *from actor where first_name='NICK' and actor_id >50;
 
 select *from actor where first_name='NICK' or actor_id >50;
 
 
 -- like opertor  => pattern 
 
 select * from actor where first_name='ED';
 
 -- % wild card operator
 
 -- if start with 'E'
 select *from actor where first_name like 'E%';
 
  select *from actor where first_name like '%E';

-- if there is 'E'
select *from actor where first_name like '%E%';

  select *from actor where first_name like 'E%' 
  or first_name like 'T%';
  
select *from actor where first_name like '_L%';
    
select *from actor where first_name like '%T_';
       
select *from actor where first_name like '_L%E_';


--concat method 
select concat(first_name, last_name) from actor;
 
 
 
 
