# DCL :
# permission 

# Authentication: making sure that a user can access the mysql

# Authorization : making sure that a user can interact with object in the database 

# user  =>username (password)
# user managemnent


use regex;

create user bob identified by 'bob';

#bob@192.168.10.%             X
#bob@%

select current_user();    # show current user

select *from mysql.user;

create user 'sammy' identified by'password';

create user 'sammy' @192.168.10.1 identified by 'password';

select current_user(); 

drop user sammy;

drop user 'sammy'@'192.168.10.1';

drop user 'sa,,y'@'192.168.10.1';


use sakila;
create table test(id int);

insert into sakila.test values(10),(20);

select * from test;


# Grand give privileges(permission)

Grant all privileges on sakila.test to bob;

select *from mysql.user;

show grants for 'bob';

REVOKE all privileges on sakila.test from bob;
show grants for bob;

show grants for 'bob';

alter table sakila.test add column name varchar(20);

select * from sakila.test;

grant select(id) on sakila.test to bob;

show grants for 'bob';

show grants for 'bob';


# changing user password 


#locking user
alter user 'bob' account lock;


-- to unlock

alter user 'bob' account unlock;




# creating role

create role sales1;

grant select on  sakila.*  to sales1;


# grant role to user 

grant sales1 to bob;

flush privileges;

show grants for bob;

set default role all to bob;



# Assignmnet

-- window functions ?
-- windows vs group by function
-- sub query 
-- correlated sub quesries

-- Rdbms 
-- Dbms
-- type od dbms
-- mysql VS SQL
-- Data types in sql 
-- Normalization = >read






