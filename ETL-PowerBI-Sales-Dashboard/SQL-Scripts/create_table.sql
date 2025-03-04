--create a Sales Table to store data from a CSV file

CREATE TABLE Sales (
    SalesID INT IDENTITY(1,1) PRIMARY KEY,
    Date DATE,
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10,2),
    Total DECIMAL(10,2)
);
