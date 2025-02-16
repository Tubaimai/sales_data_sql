CREATE database SALES_PERFORMANCE;
USE SALES_PERFORMANCE;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Country VARCHAR(100)
);
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country) VALUES
(1, 'Acme Corp', 'John Doe', 'USA'),
(2, 'Global Solutions', 'Jane Smith', 'Canada'),
(3, 'Tech Innovators', 'Michael Johnson', 'UK'),
(4, 'Innovative Tech Ltd', 'Sarah Lee', 'Australia'),
(5, 'Green Energy Co', 'David Kim', 'Germany'),
(6, 'Healthwise Technologies', 'Linda White', 'USA'),
(7, 'MedSolutions', 'Robert Brown', 'Canada'),
(8, 'Future Enterprises', 'Emily Davis', 'India'),
(9, 'NextGen Health', 'William Wilson', 'USA'),
(10, 'Smart Innovations', 'Rachel Green', 'UK'),
(11, 'Healthy Horizons', 'Charles Clark', 'Germany'),
(12, 'Digital Ventures', 'Samantha Martinez', 'Australia'),
(13, 'Wellness Systems', 'Jessica Taylor', 'USA'),
(14, 'TechHealth Solutions', 'George Harris', 'Canada'),
(15, 'HealthTech Innovations', 'Linda Martin', 'India'),
(16, 'Global Health Enterprises', 'Paul Allen', 'UK'),
(17, 'MedTech Labs', 'Angela Scott', 'Australia'),
(18, 'LifeCare Health', 'Joseph King', 'USA'),
(19, 'BioInnovations', 'Elizabeth Moore', 'Germany'),
(20, 'NextWave Solutions', 'Daniel Evans', 'Canada');

SELECT * FROM customers;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(100),
    UnitPrice DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Category, UnitPrice) VALUES
(1, 'iPhone 13', 'Electronics', 999.00),
(2, 'Sofa Set', 'Furniture', 850.00),
(3, 'T-shirt', 'Clothing', 25.00),
(4, 'iPhone 13', 'Electronics', 999.00),
(5, 'Sofa Set', 'Furniture', 850.00),
(6, 'T-shirt', 'Clothing', 25.00),
(7, 'iPad Pro', 'Electronics', 799.00),
(8, 'Office Chair', 'Furniture', 120.00),
(9, 'Sweater', 'Clothing', 40.00),
(10, 'Samsung Galaxy S21', 'Electronics', 799.00),
(11, 'Wooden Dining Table', 'Furniture', 350.00),
(12, 'Jeans', 'Clothing', 45.00),
(13, 'MacBook Air', 'Electronics', 999.00),
(14, 'Coffee Table', 'Furniture', 180.00),
(15, 'Jacket', 'Clothing', 60.00),
(16, 'Apple Watch Series 7', 'Electronics', 399.00),
(17, 'King Size Bed', 'Furniture', 1200.00),
(18, 'Dress', 'Clothing', 70.00),
(19, 'Sony PlayStation 5', 'Electronics', 499.00),
(20, 'Dining Chair Set', 'Furniture', 240.00);

select * from Products;

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    SaleDate DATE,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
    );
    
INSERT INTO Sales (SaleID, SaleDate, CustomerID, ProductID, Quantity, TotalAmount) VALUES
(1, '2025-01-15', 1, 2, 1, 850.00),
(2, '2025-01-15', 2, 3, 3, 75.00),
(3, '2025-01-15', 3, 1, 2, 1998.00),
(4, '2025-01-16', 4, 5, 1, 875.00),
(5, '2025-01-16', 5, 7, 2, 698.00),
(6, '2025-01-16', 6, 6, 1, 45.00),
(7, '2025-01-17', 7, 9, 1, 40.00),
(8, '2025-01-17', 8, 10, 1, 799.00),
(9, '2025-01-17', 9, 13, 1, 999.00),
(10, '2025-01-18', 10, 16, 3, 1197.00),
(11, '2025-01-18', 11, 11, 2, 700.00),
(12, '2025-01-18', 12, 4, 1, 799.00),
(13, '2025-01-19', 13, 14, 1, 180.00),
(14, '2025-01-19', 14, 12, 1, 75.00),
(15, '2025-01-19', 15, 15, 2, 120.00),
(16, '2025-01-20', 16, 19, 1, 499.00),
(17, '2025-01-20', 17, 8, 1, 120.00),
(18, '2025-01-20', 18, 18, 1, 70.00),
(19, '2025-01-21', 19, 17, 1, 1200.00),
(20, '2025-01-21', 20, 20, 4, 960.00);

select * from Sales;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Position VARCHAR(100),
    HireDate DATE,
    RegionID INT
);

INSERT INTO Employees (EmployeeID, EmployeeName, Position, HireDate, RegionID) VALUES
(1, 'John Doe', 'BDE', '2020-01-15', 1),
(2, 'Jane Smith', 'Sr.BDE', '2023-03-22', 2),
(3, 'William Johnson', 'Assistant Manager', '2021-06-10', 1),
(4, 'Emily Davis', 'Senior Manager', '2019-08-05', 3),
(5, 'Michael Brown', 'BDE', '2022-11-17', 2),
(6, 'Sarah Wilson', 'Sr.BDE', '2020-02-28', 1),
(7, 'David Lee', 'Assistant Manager', '2024-01-13', 3),
(8, 'Olivia Harris', 'Regional Head', '2017-12-01', 2),
(9, 'James Clark', 'BDE', '2021-09-25', 1),
(10, 'Sophia Lewis', 'Senior Manager', '2023-05-19', 3),
(11, 'Daniel Walker', 'Regional Head', '2022-04-15', 1),
(12, 'Chloe Martin', 'Assistant Manager', '2021-02-27', 2);

select * from Employees;

CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    RegionName VARCHAR(100)
);

INSERT INTO Regions (RegionID, RegionName) VALUES
(1, 'APAC'),
(2, 'MEA'),
(3, 'EU'),
(4, 'US');

#no of sales per day
select SaleDate, count(SaleID) as no_of_sale_per_day from Sales
group by SaleDate
order by SaleDate;

--- total revenue for each product category.
SELECT P.Category, sum(S.TotalAmount) AS Total_Revenue FROM Products p join
Sales S
ON P.ProductID=S.ProductID
group by P.Category;

--- Calculate the running total revenue for each product category.
SELECT P.Category,S.SaleDate, sum(S.TotalAmount) over (partition by P.Category order by S.SaleDate ) as Running_Total FROM Products p join
Sales S
ON P.ProductID=S.ProductID;

--- 5 DAYS ROLLING REVENUE
SELECT P.Category,S.SaleDate, sum(S.TotalAmount) over (partition by P.Category order by S.SaleDate rows between 4 preceding AND current row) as Running_REVENUE_5_DAYS FROM Products p join
Sales S
ON P.ProductID=S.ProductID
order by P.Category,S.SaleDate;

---Total Revenue By Region
select R.RegionName,sum(S.TotalAmount) as Total_Revenue from Sales S 
Join Customers C ON C.CustomerID= S.CustomerID
JOIN Employees E ON E.EmployeeID=S.SaleID
JOIN Products P ON P.ProductID=S.ProductID
JOIN Regions R ON R.RegionID = E.RegionID
GROUP BY R.RegionName

---TOP 5 SELLING PRODUCT
SELECT P.ProductName,Sum(S.Quantity) as total_unit_sold from Sales S
Join Products P
ON P.ProductID=S.ProductID
GROUP BY P.ProductName
order by total_unit_sold desc
Limit 5;
---TOP 5 CUSTOMER BY REVENUE
SELECT C.CustomerName,Sum(S.TotalAmount) as total_Revenue from Sales S
Join Customers C
ON C.CustomerID=S.SaleID
GROUP BY C.CustomerName
order by total_Revenue desc
Limit 5

---Top performer(no of sale)
select E.EmployeeName,SUM(S.TotalAmount) as total_sales from Sales S
JOIN Employee E
ON S.SaleID=E.EmployeeID
GROUP BY E.EmployeeName
ORDER BY total_sales DESC
LIMIT 5

---Avg sales per product
select P.ProductName,AVG(S.TotalAmount) AS SALES_REVENUE from Sales S
JOIN Products P
ON P.ProductID=S.ProductID
GROUP BY P.ProductName
ORDER BY SALES_REVENUE DESC;

--REVENUE BY CUSTOMER FOR LAST 10 DAYS
SELECT C.CustomerName,sum(S.TotalAmount) as revenue_last_10_days from Sales S JOIN 
Customers C ON C.CustomerID = S.CustomerID
WHERE S.SaleDate >= CURDATE()- INTERVAL 10 DAY
GROUP BY C.CustomerName

---Top 3 Sales for each customer
select CustomerID,SaleDate,TotalAmount,RowNum
from(
select CustomerID,SaleDate,TotalAmount,
       ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY TotalAmount desc) as RowNum
from sales) as RankedSale
where RowNum <=3
order by CustomerID

---Sales Category
select saleID,TotalAmount,
      case
          when TotalAmount >300 then 'HIGH'
          WHEN TotalAmount between 200 and 300 then 'Median'
          else 'Low'
       End as salesCategory
from sales;       

---first 5 products
select * from Products
order by ProductName
limit 5 offset 0;

---Find Customer Without Sale
SELECT C.CustomerName from Customers C
WHERE NOT EXISTS (
     SELECT 1
     FROM SALES S
     where C.CustomerID = S.CustomerID
);   

--Sales Summery by Products
create view sales_summery as
select P.ProductName,sum(S.TotalAmount) as TotalRevenue, count(S.SaleID) AS TotalSale from Sales S
JOIN Products P
ON P.ProductID = S.ProductID
GROUP BY P.ProductName;

--Find Products with more sale than the average
select ProductName from Products
where ProductID IN (SELECT ProductID
                   from Sales
                   group by ProductID
                   Having sum(TotalAmount) > ( select avg(TotalAmount) from Sales));

--sales ranking by total amount
 SELECT SaleID,TotalAmount,
        rank() over ( order by TotalAmount desc ) as SalesRank 
from Sales;   

SELECT SaleID,TotalAmount,
        dense_rank() over ( order by TotalAmount desc ) as SalesRank 
from Sales;   

----SalesRank by product
SELECT S.SaleID,P.ProductName,TotalAmount,
        rank() over ( PARTITION BY P.ProductName order by TotalAmount desc ) as ProductRank 
from Sales S JOIN Products P
ON P.ProductID = S.ProductID  

---CTE FOR SALE SUMMARY
 WITH CTE AS(
     SELECT ProductID, sum(TotalAmount) as total_revenue from Sales
     Group by ProductID
)
SELECT P.ProductName, cc.total_revenue
from CTE CC
JOIN Products p on P.ProductID= cc.ProductID

---
    