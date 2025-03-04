--Insert data

INSERT INTO Sales (Date, ProductName, Category, Quantity, Price, Total)
VALUES
('2024-01-01', 'Laptop', 'Electronics', 1, 800, 800),
('2024-01-02', 'Smartphone', 'Electronics', 2, 500, 1000),
('2024-01-03', 'Headphones', 'Accessories', 3, 50, 150),
('2024-01-04', 'Monitor', 'Electronics', 1, 300, 300),
('2024-01-05', 'Keyboard', 'Accessories', 5, 40, 200),
('2024-01-06', 'Mouse', 'Accessories', 4, 20, 80),
('2024-01-07', 'Tablet', 'Electronics', 2, 600, 1200),
('2024-01-08', 'Smartwatch', 'Electronics', 3, 250, 750),
('2024-01-09', 'Charger', 'Accessories', 10, 15, 150),
('2024-01-10', 'USB Cable', 'Accessories', 20, 10, 200);


OR

--Using BULK INSERT 
--If your CSV file is located at C:\Data\sales_data.csv, run:
	
	BULK INSERT Sales
	FROM 'C:\Data\sales_data.csv'
	WITH (
	    FORMAT = 'CSV',
	    FIRSTROW = 2,
	    FIELDTERMINATOR = ',',
	    ROWTERMINATOR = '\n',
	    TABLOCK
	);
