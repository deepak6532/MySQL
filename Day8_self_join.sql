use regex;

create table employee(eid int ,name varchar(20),manager_id int);


insert into employee values(10,"aman",null),(20,"akshay",30),(30,"naina",10),(40,"abhi",30);

select * from employee;


select emp.eid,emp.name,emp.manager_id ,
mgr.eid,mgr.name
from employee as emp join employee as mgr
where emp.manager_id = mgr.eid;





