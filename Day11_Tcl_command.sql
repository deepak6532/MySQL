# Tcl (transaction control language)

# transaction => any logical task

select @@autocommit;

use regex;

create table deepak(eid int);

insert into deepak values (10);
select *from deepak;
select * from deepak;


set  @@autocommit=0;
select  @@autocommit;

# not save in table

insert into deepak values(20);

commit;   # it is use to save data

select * from deepak;

commit;

select * from deepak;
insert into deepak values(30);

select * from deepak;

insert into deepak values(40);
insert into deepak values(50);
select * from deepak;
commit;


# rollback;           it is use to remove pending transaction 
select * from deepak;

rollback;
select * from deepak;

insert into deepak values(50);


savepoint reges_insert;    # savepoint    save_point_name  is use to point we will back rollback

delete from deepak where eid =20;

delete from deepak where eid =50;
select * from deepak;
rollback to reges_insert;

select * from deepak;

