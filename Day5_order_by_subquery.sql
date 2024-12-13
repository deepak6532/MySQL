use sakila;

select *from city;

select *from address;

select city_id ,count(district) from address group by city_id having count(district)>=2;


# order by

select *from address;

select *from address order by district;

select *from address order by district,city_id;

select *from address order by district ,city_id desc;  # descending 

select *from address order by district desc;

select customer_id ,sum(amount) as "totalAmount" from payment group by customer_id order by totalAmount;

select customer_id ,sum(amount) as "totalAmount" from payment group by customer_id order by totalAmount desc;

-- Subquery

use sakila;

select *from payment;

select amount from payment where payment_id = 3;
select * from payment where amount = 5.99 ;

select amount from payment where payment_id = 5;
select * from payment where amount=9.99;

select * from payment where amount= (select amount from payment where payment_id = 3);

# query(nested query/subquery)  first execute sub query and then execute query 


# question : get the payment id ,staff,id and rental id and 
# amount only for that  payment where the rental id is 
# greater thean  the rental id or payment id 4


select payment_id ,staff_id, rental_id, amount from payment 
where rental_id > 
( select rental_id from payment where payment_id = 4);


# question 2:
# get the payment id ,amount ,the 10 % increment amount for 
# those payment where the month of payment date = the month of payment id = 5 
 select month(payment_date) from payment where payment_id=5; 


select payment_id, amount,amount + (amount*0.10) from payment 
where month(payment_date)=
(select month(payment_date) from payment where payment_id=5); 


# question 3:  
# get the customer id and the totoal number of payment done by 
# each customer only for those whose total number of payment should
# be greater than the total number of payment done by customer 
# id  =2

select count(payment_id) from payment  where customer_id = 2;

select customer_id ,count(payment_id) from payment group by 
customer_id having  count(payment_id) > 
(select count(payment_id) from payment  where customer_id = 2);

# multi row sub query : - in any and all operator
# what is co related sub query  (important)
 