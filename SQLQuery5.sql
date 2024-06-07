

CREATE Table Transport_Comp(
C_ID INT NOT NULL,
C_Name VARCHAR(30) NOT NULL,
Product_Ex_Date DATE,
Transact_Time TIME)

INSERT INTO Transport_Comp(C_ID, C_Name, Product_Ex_Date, Transact_Time)
Values(1,'Accii', '01-02-2003','09:10:11')

Select * from Transport_Comp