use sakila;

select *from actor;

select concat("mr",first_name,' ',last_name) from actor;


select concat_ws(" ","Mr",first_name,' ',last_name) from actor;

select first_name ,substr(first_name,2) from actor;


select first_name ,substr(first_name,2,4) from actor;

select first_name ,substr(first_name,-2,4) from actor;

select first_name ,substr(first_name,-4,6) from actor;


-- position extract in the word 
select first_name ,instr(first_name,'L') from actor;

select first_name ,instr(first_name,'E') from actor;

-- L is word and 3  is the position to start to find word 
select first_name , locate('E',first_name,3) from actor;

select first_name , locate('L',first_name) from actor;

-- length

select first_name ,length(first_name) from actor;

select first_name ,char_length(first_name) from actor;

-- dummy (dual)

select 10+2 from dual;

select trim(" hello  ") from dual; 

-- remove charcater 
select trim(trailing ' ' from " hello  ") from dual;

select trim(trailing  'l' from " hello   xllll") from dual;

-- lpad ,rpad

-- lpad is use to left side add character to full fill condition 
select first_name ,lpad(first_name ,6,"#") from actor;

-- rpad is use to right side add character to full fill condition 
select first_name ,rpad(first_name ,6,"#") from actor;


-- concat, substr,lpad ,trim 



-- round, truncate ,floor, mod, pow ,ceil

select round(13.4) from dual;


select round(12.463,1) from dual;

select round(12.468,2) from dual;

select round(12.465,2) from dual;


select round(42.465,-1) from dual;

select round(46.465,-1) from dual;

select round(56.465,-2) from dual;

select round(356.465,-2) from dual;

select round(656.465,-2) from dual;

select round(456.465,-3) from dual;

select round(656.465,-3) from dual;


-- truncate is used to extract the values 

select truncate(656.465,2) from dual;

select truncate(656.465,1) from dual;

-- floor 

select floor(10.9999) from dual;     -- extract lower value

select ceil(10.999) from dual;			-- extract upper values




