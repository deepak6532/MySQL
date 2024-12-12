use sakila;

-- Multi-row functions 


select *from payment;

select distinct(customer_id) from payment;

select distinct(customer_id),amount from payment;

select sum(amount) from payment;

select count(amount) from payment;

select count(*),avg(amount),max(amount),min(amount)  from payment;

select * from payment;

select *from payment where customer_id=1;

select sum(amount) from payment where customer_id=1;

select count(amount) from payment where customer_id=1;



-- group by

select distinct(customer_id),amount from payment;

select customer_id  from payment group by customer_id;

select amount from payment group by amount;

select sum(customer_id)  from payment group by customer_id;

select customer_id ,sum(amount) ,count(customer_id) from payment group by customer_id;


select *from payment;

-- question
select count(customer_id),staff_id,sum(customer_id) from payment group by staff_id;

-- question 2

# you have to find out to total number of payment ,total amount 
-- spend and total number of customer served in each month 

select count(payment_id),sum(amount), month(payment_date) from payment group by month(payment_Date) having count(payment_id) >2000;



# select addreess table


select *from address;

select count(address_id) from address;

select count(address2) from address;


# question : get the district name the total district prsent and the sum of city_id for each district 
select *from address;
select district,count(district),sum(city_id) from address group by district;