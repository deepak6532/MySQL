use demo_db;

show tables;

select * from order_lines;

select * from orders;

select * from products;

select * from invoices;


#1 find out the top three product id based on the number of quantity sold 

 -- select product_id , quantity from order_lines limit 3;

select product_id,sum(quantity) as quantity  from order_lines group by product_id order by sum(quantity) desc limit 3;

#2  get the order date the product id the product name and the order id  which has been sold in the multiple s of 2

select * from order_lines;
select * from orders;
select * from products;

select  date(order_date) as date , order_lines.product_id , product_name ,order_id from orders join order_lines 
 join products on  orders.id = order_lines.id
 and   products.product_id = order_lines.product_id
 where order_lines.quantity%2=0;

 

#3  get the brand name the order value the product name for each product sold 
select * from order_lines;
select * from orders;
select * from products;
select * from invoices;
select * from brands;


select *from products;

select brands.brand, orders.order_value , PRODUCTS.product_name from  order_lines
join products on order_lines.product_id = products.product_id
join brands ON brands.product_id = products.product_id
join orders on order_lines.order_id = orders.id;




-- SELECT brands.brand, (ol.quantity * p.price) AS order_value, p.product_name                                       
-- FROM order_lines ol
-- JOIN products p ON ol.product_id = p.product_id
-- JOIN orders o ON ol.order_id = o.id
-- join brands on brands.product_id= p.product_id;


#4 get the average order value for each order which has been placed after half on  hours 

select * from order_lines;
select * from orders;
select * from products;
select * from invoices;

select avg(order_value) from  orders ;


#5 get the order id the number of quantity sold the month and the total price  for each brand 

select order_id ,sum(quantity),month(order_date) from order_lines group by order_id join orders on order_lines.id = orders.id;

