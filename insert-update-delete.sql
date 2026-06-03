use Northwind;

-- 1. Add a new supplier.
Insert Into suppliers
Values(30, 'Costco', 'John Smith', 'Merchandizing Manager', '293 Malcom X', 'Dallas', 'South West', '75000', 'U.S',
'972-383-8929', '289329', null);

-- 2. Add a new product provided by that supplier
Insert into northwind.products
Values(78, 'Baguette', 30, 5, '2 sticks', 2.99, 3000, 4000, 10, 0); 


-- 3. List all products and their suppliers.
Select *
from products
Join suppliers on
products.supplierId = suppliers.supplierid; 

-- 4. Raise the price of your new product by 15%.
Update products
set unitprice = 5.99
where productid = 78;

-- 5. List the products and prices of all products from that supplier.
Select productName, unitprice
from products
where supplierid = (select supplierid from suppliers where supplierid = 30);


-- 6. Delete the new product.
delete from products
where productid = 78;

-- 7. Delete the new supplier.
delete from suppliers
where supplierid = 30;

-- 8. List all products.
Select * 
from products;

-- 9. List all suppliers.
select *
from suppliers;