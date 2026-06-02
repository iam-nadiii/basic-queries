use Northwind;

-- 1. What is the product name(s) of the most expensive products? HINT: Find the
-- max price in a subquery and then use that value to find products whose price
-- equals that value.
SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM products);

-- 2. What is the order id, shipping name and shipping address of all orders shipped via
-- "Federal Shipping"? HINT: Find the shipper id of "Federal Shipping" in a subquery
-- and then use that value to find the orders that used that shipper.
Select OrderID, ShipName, ShipAddress
From orders
where shipVia = (Select ShipperId from northwind.shippers where companyName like 'Federal Shipping');



-- 3. What are the order ids of the orders that ordered "Sasquatch Ale"? HINT: Find
-- the product id of "Sasquatch Ale" in a subquery and then use that value to find
-- the matching orders from the `order details` table. Because the `order details`
-- table has a space in its name, you will need to surround it with back ticks in the
-- FROM clause.

Select orderid, productId
from `order details`
where productId = (Select productID from products where productName like '%sasquatch ale%');


-- 4. What is the name of the employee that sold order 10266?
Select LastName, FirstName
From employees
where EmployeeID = (Select employeeId from orders where orderId = 10266);

-- 5. What is the name of the customer that bought order 10266?
Select *
From customers
where CustomerID = (Select CustomerID from orders where orderId = 10266);