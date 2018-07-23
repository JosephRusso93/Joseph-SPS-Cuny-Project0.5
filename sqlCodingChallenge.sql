/*
CREATE Table Products(
ProductID int identity(1,1) ,
pName varchar(255) NOT NULL,
pPrice int NOT NULL,
PRIMARY KEY (ProductID)
);

CREATE Table Customers(
CustomerID int identity(1,1) ,
FirstName varchar(255) NOT NULL,
LastName varchar(255) NOT NULL,
CardNumber varchar(255) NOT NuLL,
PRIMARY KEY (CustomerID)
);

CREATE TABLE Orders(
OrderID int identity(1,1),
ProdID int,
CustID int,
FOREIGN KEY (ProdID) REFERENCES Products(ProductID),
FOREIGN KEY (CustID) REFERENCES Customers(CustomerID),
PRIMARY KEY(OrderID)
);

INSERT INTO Products (pName,pPrice)
VALUES('LG-V30',900),('iPhone',200),('iPhoneX',700);

INSERT INTO Customers (FirstName,LastName,CardNumber)
VALUES('Joe','Russo','78956'), ('Tina','Smith','123456'),('Jack','Smith','456123');

INSERT INTO Orders Values(
(SELECT ProductID FROM Products WHERE (pName = 'iPhone')),
(SELECT CustomerID From Customers WHERE (FirstName='Tina')));

INSERT INTO Orders Values(
(SELECT ProductID FROM Products WHERE (pName = 'LG-V30')),
(SELECT CustomerID From Customers WHERE (FirstName='Joe')))

Values((query1 ),(query2));
*/
--SELECT * FROM Products
--SELECT * FROM Customers


SELECT * FROM Orders



SELECT OrderID,pName,FirstName,LastName FROM Orders
INNER JOIN Customers
ON CustID=CustomerID
INNER JOIN Products
ON ProdID=ProductID
WHERE FirstName='Tina';


SELECT FORMAT(sum(pPrice),'C','en-us')AS Total_Revenue_from_iPhone_Sales FROM Orders
Inner JOIN Products
on ProdID=ProductID
WHERE pNAme='iPhone';

UPDATE Products
SET pPrice=250
WHERE pName='iPhone';
