-check for missing values:
SELECT * FROM Sales WHERE Quantity IS NULL OR Price IS NULL;


--Fix missing values:
UPDATE Sales SET Quantity = 0 WHERE Quantity IS NULL;


-- Create a calculated column for Total Sales Amount
ALTER TABLE Sales ADD TotalAmount AS (Quantity * Price);

