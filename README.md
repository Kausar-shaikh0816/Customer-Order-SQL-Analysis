Customer & Order SQL Analysis

Project Overview
This project focuses on analyzing customer, order, and book data using MySQL and SQL.
The objective is to transform raw CSV data into a structured relational database and perform SQL-based analysis to understand customer behavior, order patterns, product performance, and business trends.
The project demonstrates practical SQL skills including database creation, data exploration, filtering, joins, aggregations, subqueries, and advanced SQL analysis.

 Project Objectives
The main objectives of this project are:

Analyze customer purchasing behavior
Analyze order patterns
Identify top customers
Identify best-performing books/products
Calculate sales and revenue-related metrics
Practice SQL JOIN operations
Perform aggregation-based analysis
Use advanced SQL queries to answer business questions
Generate meaningful insights from relational data

 Dataset
The project uses three CSV datasets:

1. Customers
Contains customer-related information such as:
Customer ID
Customer Name
Customer details

3. Orders
Contains information related to customer orders, such as:
Order ID
Customer ID
Book ID
Order details

3. Books
Contains information about the books/products available in the dataset.
The CSV files are stored inside the data folder.

Database Structure

The project uses a relational database consisting of three main tables:

Customers
    |
    | customer_id
    |
    ↓
Orders
    |
    | book_id
    |
    ↓
Books
Customers Table

Stores information about customers.
Primary Key: customer_id
Orders Table
Stores customer order information.
Primary Key: order_id
Foreign Key: customer_id
Books Table
Stores information about books/products.
Primary Key: book_id
🛠️ Technologies Used
MySQL
SQL
MySQL Workbench
CSV
GitHub
🧠 SQL Concepts Used

The project demonstrates the following SQL concepts:

CREATE DATABASE
CREATE TABLE
Primary Keys
Foreign Keys
SELECT
WHERE
ORDER BY
GROUP BY
HAVING
LIMIT
Aggregate Functions
COUNT()
SUM()
AVG()
MIN()
MAX()
INNER JOIN
LEFT JOIN
Subqueries
Advanced SQL queries

Additional concepts can be added as the project is expanded:

CTEs
Window Functions
CASE
Date Functions

Project Structure
Customer-Order-SQL-Analysis/
│
├── data/
│   ├── Customers.csv
│   ├── Orders.csv
│   └── Books.csv
│
├── sql/
│   ├── Create_Table.sql
│   ├── Basic_Queries.sql
│   └── Advanced_Query.sql
│
├── screenshots/
│   ├── database_schema.png
│   ├── query_results.png
│   └── dashboard.png
│
└── README.md

Update the folder structure above if your actual GitHub folders have different names.

 Analysis Performed
1. Customer Analysis

Customer data is analyzed to understand:

Number of customers
Customer order frequency
Customers with the highest number of orders
Customer purchasing behavior
2. Order Analysis

Order data is analyzed to identify:

Total number of orders
Orders placed by individual customers
Order distribution
Most frequently ordered products
3. Book/Product Analysis

Book/product analysis is performed to identify:

Most frequently ordered books
Best-performing books
Product-level order patterns
4. Customer & Order Analysis Using JOIN

The Customers and Orders tables are joined using the customer ID.

Example:

SELECT
    c.customer_id,
    c.customer_name,
    o.order_id
FROM Customers c
INNER JOIN Orders o
    ON c.customer_id = o.customer_id;

This allows customer information to be combined with their order information.

 Key Business Questions

The project attempts to answer questions such as:

How many customers are present in the database?
How many orders have been placed?
Which customers have placed the most orders?
Which books/products are ordered most frequently?
Which customers generate the highest order value?
Which customers have not placed any orders?
What is the distribution of orders across customers?
What are the most important patterns in customer and order data?

Query Results
SQL queries are executed using MySQL Workbench, and important results are captured as screenshots.
Customer Analysis
Order Analysis

Top Products / Books
Replace the image filenames with the actual screenshot filenames you upload to GitHub.

 Key Insights

Based on the SQL analysis, the project can be used to identify:

High-value customers
Frequently ordering customers
Popular books/products
Customer ordering patterns
Product demand patterns
Overall order distribution
Actual Insights

Add your final data-based findings here after running the queries.

Example:

- Customer __________ placed the highest number of orders.
- __________ was the most frequently ordered book.
- The total number of orders was __________.
- The highest order activity was observed in __________.

Replace these placeholders with the actual results from your database.

Dashboard

A future enhancement of this project is to create an interactive dashboard using Power BI.

The planned dashboard will contain:

KPI Cards
Total Customers
Total Orders
Total Revenue / Sales
Average Order Value
Visualizations
Monthly Order Trends
Top Customers
Top Books/Products
Orders by Customer
Product Performance
Filters
Customer
Product/Book
Date
Order
Planned Architecture
CSV Files
    ↓
MySQL Database
    ↓
SQL Queries
    ↓
Power BI
    ↓
Interactive Dashboard

Dashboard screenshots will be added to the repository after implementation.

Learning Outcomes

Through this project, I practiced:

Creating relational database tables
Working with CSV datasets
Writing SQL queries
Filtering and sorting data
Using aggregate functions
Performing SQL JOINs
Using subqueries
Performing customer and order analysis
Converting raw data into meaningful business insights

Future Improvements
The project can be further enhanced by adding:
Data cleaning and validation
CTE-based analysis
Window functions
Customer segmentation
Monthly sales analysis
Revenue analysis
Power BI dashboard
Interactive filters
Additional business KPIs
Automated data pipeline
Cloud database deployment using AWS


Author

Kausar Shaikh
MCA Student | SQL & Data Analytics Enthusiast
Skills Demonstrated

SQL MySQL Data Analysis Database Management Power BI Python

⭐ Project Purpose

This project was developed as a practical SQL and data analytics portfolio project to demonstrate the ability to work with relational data, write SQL queries, perform analysis, and derive business-oriented insights from structured datasets.
