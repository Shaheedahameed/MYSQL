CREATE DATABASE Sales;

USE sales;

CREATE TABLE Orders (
Order_id INT PRIMARY KEY,
Customer_name VARCHAR (255) NOT NULL,
Product_category VARCHAR (255) NOT NULL,
Ordered_item VARCHAR (255) NOT NULL,
Contact_No VARCHAR (255) UNIQUE NOT NULL,
);

ALTER TABLE Orders 
ADD COLUMN Orders_Quantity INT;

RENAME TABLE Orders TO sales_Orders;

INSERT INTO Sales_Orders (order_id,Customer_name,Product_Category,Ordered_item,Contact_No,Order_Quantity)

VALUES
(1,'Anu','Electronics','Laptop','6984523579',2),
(2,'Nila','Fashion','Shirt','2163549878',4),
(3,'Ahana','Home Goods','chair','9833456178',6),
(4,'Vishnu','Electonics','Phone','9988551166',1),
(5,'Ishani','Fashion','pants','9876543210',2),
(6,'Shanu','Makeup','Eyeliner','3487561240',1),
(7,'Tovino','Fashion','Shoes','6487253690',1),
(8,'Greeshma','Home Goods','Table','4875369120',1),
(9,'Jinsha','Electronics','ipad','9486213576',2),
(10,'Fasil','Skin care','Lipbalm','3654798201',1);

SELECT Customer_name, Order_item FROM Sales_orders;

UPDATE Sales_Orders SET Ordered_item = 'Smart Phone' WHERE Order_id = 4;

DROP TABLE Sales_Orders;