--1. Retrive the total no of books sold for the each genre;
SELECT Book.Genre,SUM(Orders.Quantity) AS Total_Book_Sold
From Book
JOIN Orders
ON Book.Book_ID = Orders.Book_ID
GROUP BY Genre;

--2.Find the average price of the books in the "FANTACY" genre
SELECT AVG(Price) AS Average_price 
FROM Book
WHERE Genre='Fantasy';


--3.List customer who have placed at least 2 orders 
SELECT Customer_ID,COUNT(Order_ID) AS Order_count
FROM Orders 
GROUP BY Customer_ID
HAVING COUNT(Order_ID) >= 2;

--4.FIND THE MOST FREQUENTLY ORDERED BOOK;
SELECT Book_id,COUNT(Order_ID) AS ORDERD_BOOK
FROM Orders
GROUP BY Book_ID
ORDER BY ORDERD_BOOK DESC LIMIT 1;

--5.SHOW THE TOP 3 MOST EXPENSIVE BOOKS OF THE 'FANTASY' genre;
SELECT * FROM Book
WHERE Genre = 'Fantasy'
ORDER BY Price DESC LIMIT 3;

--6.RETRIVE THE TOTAL QUANTITY OF BOOK SOLD BY EACH AUTHOR

SELECT Book.Author,COUNT(Orders.QUANTITY)AS Total_quantity_of_book
FROM Book
JOIN Orders
ON Book.Book_ID=Orders.Book_id
GROUP BY Author;

--7.list the cities where customer who spent over $30 are located;

SELECT Customers.City,Orders.Total_Amount AS TOTAL_SPEND
FROM Customers
JOIN Orders
ON Customers.Customer_ID=Orders.Customer_ID
WHERE Total_Amount >= 30;

--8.find the customer who spent the most on orders
SELECT Customers.Name ,SUM(Orders.Total_Amount) as total
FROM Customers
JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID
GROUP BY Customers.Customer_ID,Customers.Name
ORDER BY total DESC LIMIT 1 ;


--9.CALCULATE THE STOCK REMAINING AFTER FULFILLING ALL ORDER;
SELECT Book.Book_ID,Book.Title,Book.Stock,COALESCE(SUM(Orders.Quantity),0) AS Order_Quantity,
Book.Stock-COALESCE (SUM(Orders.Quantity),0) AS Remaining_quatity
FROM Book
LEFT JOIN Orders 
ON Book.Book_ID = Orders.Book_ID 
GROUP BY Book.Book_ID
ORDER BY Book.Book_ID;


