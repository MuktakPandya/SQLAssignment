USE TOPS

create table item_mast(
  PRO_ID int PRIMARY KEY,
  PRO_NAME Varchar(20),
  PRO_PRICE Decimal,
  PRO_COM int
  )

insert into item_mast (PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM) 
values (101,'Mother Board',3200.00,15),
(102,'Key Board',450.00,15),
(103,'Zip Drive',250.00,15),
(104,'Speaker',550.00,15),
(105,'Monitor',5000.00,15),
(106,'DVD Drive',900.00,15),
(107,'CD Drive',800.00,15),
(108,'Printer',2600.00,15),
(109,'Refill Cartridge',350.00,15),
(110,'Mouse',250.00,15)

Select * from item_mast

Select AVG (PRO_PRICE)
from item_mast

Select PRO_NAME, PRO_PRICE from item_mast
Where PRO_PRICE > 250
Order by PRO_PRICE DESC, PRO_NAME ASC

Select PRO_NAME as Item_name, PRO_PRICE as Price_in_Rs
FROM item_mast

