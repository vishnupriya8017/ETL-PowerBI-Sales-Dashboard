

-- 1. Total Sales Amount
SELECT SUM(Total) AS Total_Sales FROM Sales;

-- 2. Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity_Sold FROM Sales;

-- 3. Sales by Product
SELECT ProductName, SUM(Total) AS Total_Sales
FROM Sales
GROUP BY ProductName
ORDER BY Total_Sales DESC;

-- 4. Sales by Category
SELECT Category, SUM(Total) AS Total_Sales
FROM Sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 5. Sales Trend Over Time
SELECT Date, SUM(Total) AS Total_Sales
FROM Sales
GROUP BY Date
ORDER BY Date;

-- 6. Top 5 Best-Selling Products
SELECT TOP 5 ProductName, SUM(Total) AS Total_Sales
FROM Sales
GROUP BY ProductName
ORDER BY Total_Sales DESC;

-- 7. Bottom 5 Least-Selling Products
SELECT TOP 5 ProductName, SUM(Total) AS Total_Sales
FROM Sales
GROUP BY ProductName
ORDER BY Total_Sales ASC;
