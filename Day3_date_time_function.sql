use sakila;

# date function 

select current_Date() from dual;

select current_time() from dual;


select current_timestamp() from dual;

select now() from dual;   # same current_timestamp

select now() ,adddate( now(),2) from dual;

select now(), adddate( now() ,interval 2 month ) from dual;

select now() from dual;


select datediff( now(), '2024-11-28') from dual;

select last_day( now()) from dual;

select month(now()) from dual;

select year(now()) from dual;

select date_format(now() ," %a  %M") from dual; # %c and %m same 

select date_format( now(),"current hour is %h ") from dual;  # % h is number of hour

