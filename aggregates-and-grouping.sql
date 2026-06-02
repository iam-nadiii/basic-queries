use Northwind;

-- 1. How many suppliers are there? Use a query!
select count(*)
From suppliers;

-- 2. What is the sum of all the employee's salaries?
select sum(Salary) as TotalSalaries
From employees;

-- 3. What is the price of the cheapest item that Northwind sells?
select ProductName, ProductID, min(UnitPrice) AS CheapestPrice
From products;

-- 4. What is the average price of items that Northwind sells?
Select avg(UnitPrice) as AveragePrice
From products;

-- 5. What is the price of the most expensive item that Northwind sells?
Select ProductName, ProductID, max(UnitPrice) as MostExpensiveItem
From products;

-- 6. What is the supplier ID of each supplier and the number of items they supply?
-- You can answer this query by only looking at the Products table.
select SupplierID, count(*)
From products
Group By SupplierID;

-- 7. What is the category ID of each category and the average price of each item in the
-- category? You can answer this query by only looking at the Products table.
Select CategoryID, avg(UnitPrice)
From products
group by CategoryId;

-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of
-- each supplier and the number of items they supply? You can answer this query
-- by only looking at the Products table.
Select SupplierID, count(*) as ItemCount
From products
Group by SupplierID
Having count(*) >= 5;

-- 9. List the product id, product name, and inventory value (unit price * units on
-- hand). Sort the results in descending order by value. If two or more have the
-- same value, order by product name
Select productId, productName, (unitPrice * UnitsInStock) as InventoryValue
From products
order by InventoryValue desc, productname asc;