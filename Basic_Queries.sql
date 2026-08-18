1.--retrive all the query in the fiction genre
SELECT *
From Book
WHERE Genre='Fiction';

2.--find the book that publisehd after 1950

SELECT * 
FROM Book
WHERE Published_Year > 1956;

3.-- list all the customer from the canada
SELECT * 
FROM Customers
WHERE Country ='Canada';

4.--show the order placed in the nov 2023;

SELECT * 
FROM Orders 
where Order_Date BETWEEN'2023-11-01'AND '2023-11-30';

5.--RETRIVE THE TOTAL STAKC OF THE BOOK AVAILABLE
SELECT SUM(Stock) AS Total_Stock
FROM Book;

6.--find the  deatils most expensive book
SELECT * 
FROM Book
ORDER BY Price
DESC
LIMIT 1;
7.-- ashow the all customer who purchase a book more than 1 quantity of book;

SELECT * 
FROM Orders
WHERE Quantity > 1;

8.--retrive the all orders where total amount exceed $20;
SELECT * 
FROM Orders 
Where Total_Amount > 20;

9.--list the all available genre in the book table;
SELECT DISTINCT(Genre)
FROM Book;

10.--find the book with the lowest cost
SELECT *
FROM Book
Order BY Stock
LIMIT 1;

11.--calculate the total revenue gerated by from the all order
SELECT SUM(Total_Amount) AS Total_Revenue
FROM Orders;

