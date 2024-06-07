USE TOPS

create table salespeople(
  salesman_id int PRIMARY KEY,
  name Varchar(20),
  city Varchar (20),
  commission DECIMAL(20,2)
  )

insert into salespeople(salesman_id, name, city, commission) 
values (5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12)


Select * from salespeople

create table orders(
  order_no int PRIMARY KEY,
  purch_amt DECIMAL,
  ord_date DATE,
  customer_id int,
  salesman_id int Foreign key references salespeople(salesman_id)
  )

insert into orders(order_no, purch_amt, ord_date, customer_id, salesman_id) 
values (70001, 150.5, '2012-10-05',3005,5002),
(70009, 270.65, '2012-09-10',3001,5005),
(70002, 65.26, '2012-10-05',3002,5001),
(70004, 110.5, '2012-08-17',3009,5003),
(70007, 948.5, '2012-09-10',3005,5002),
(70005, 2400.6, '2012-07-27',3007,5001),
(70008, 5760, '2012-09-10',3002,5001),
(70010, 1983.43, '2012-10-10',3004,5006),
(70003, 2480.4, '2012-10-10',3009,5003),
(70012, 250.45, '2012-06-27',3008,5002),
(70011, 75.29, '2012-08-17',3003,5007),
(70013, 3045.6, '2012-04-25',3002,5001)

Select * from orders

Select order_no, ord_date, purch_amt from orders
Where salesman_id = 5001

Insert Into sales(salesman_id, name, city, commission)
Select order_no, purch_amt, ord_date, customer_id from orders
Where salesman_id = 5001

Select * from sales

Select salespeople.salesman_id, salespeople.name, salespeople.city, orders.order_no, orders.purch_amt, orders.ord_date, orders.customer_id
into sales
from salespeople
Left Join orders ON orders.salesman_id = salespeople.salesman_id
where
orders.salesman_id = 5001

select * from sales
