use Northwind;

-- 1. List the product id, product name, unit price and category name of all products.
-- Order by category name and within that, by product name.
Select productid, productname, unitprice, CategoryName
from products
join categories on products.CategoryID = categories.CategoryID
order by CategoryName asc, ProductName asc;


-- 2. List the product id, product name, unit price and supplier name of all products
-- that cost more than $75. Order by product name.
Select productid, productname, unitprice, CompanyName
from products
join suppliers on products.SupplierID = suppliers.SupplierID
where unitprice > 75
order by productname;

-- 3. List the product id, product name, unit price, category name, and supplier name
-- of every product. Order by product name.
Select productid, productname, unitprice, categoryname, CompanyName
from products
join categories on products.CategoryID = categories.CategoryID
join suppliers on products.SupplierID = suppliers.SupplierID
order by productname;

-- 4. What is the product name(s) and categories of the most expensive products?
-- HINT: Find the max price in a subquery and then use that in your more complex
-- query that joins products with categories.
Select productname, categoryname
from products 
join categories
	on products.CategoryID = categories.CategoryID
where unitprice = (select max(unitprice) from products);

-- 5. List the order id, ship name, shipddress, and shipping company name of every
-- order that shipped to Germany.
Select orderid, shipname, shipaddress, companyName, ShipCountry
from orders
join shippers
	on orders.shipvia = shippers.shipperid
where ShipCountry like '%Germany%';

-- 6. List the order id, order date, ship name, ship address of all orders that ordered
-- "Sasquatch Ale"?
Select orders.orderid, orderdate, shipname, shipaddress, productname
from orders
join `order details`
	on orders.orderid = `order details`.OrderID
join products
	on `order details`.ProductID = products.ProductID
where productname like '%sasquatch ale%';