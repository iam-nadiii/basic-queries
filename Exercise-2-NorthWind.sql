use NORTHWIND;


SELECT *
FROM northwind.products;


SELECT ProductID, ProductName, UnitPrice
FROM northwind.products
order by UnitPrice;


select *
FROM products
where UnitPrice <= 7.50;

SELECT *
FROM products
where UnitsInStock >= 100;

SELECT *
FROM products
where UnitsInStock >= 100
ORDER BY UnitPrice desc, ProductName asc;

SELECT *
FROM products
where UnitsInStock = 0 and UnitsOnOrder >= 1
ORDER BY ProductName;

SELECT *
FROM NORTHWIND.Categories;


SELECT * 
FROM products
WHERE CategoryID = 8;

SELECT FirstName, LastName
FROM employees;

select *
FROM northwind.employees
where Title like '%Manager%';

select distinct Title
FROM employees;

select *
from employees
where Salary between 2000 and 2500;

select * 
FROM suppliers;

SELECT *
FROM northwind.products
WHERE supplierID = 4;




-- 16. Examine the Products table. How do you know what supplier supplies each
-- product? Write a query to list all the items that "Tokyo Traders" supplies to
-- Northwind