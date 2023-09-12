--1
SELECT product_id, product_name, category_id
FROM products
WHERE unit_price > 50
--2
SELECT company_name
FROM customers
WHERE country = 'Germany'
--3
SELECT customer_id, order_id
FROM orders
WHERE customer_id = 'ALFKI'
--4
--5
--6
--7
--8
--9
--10
--11
--12
SELECT COUNT(EXTRACT(YEAR FROM order_date) = 1997) AS a FROM orders
--13
SELECT company_name, contact_title 
FROM customers 
WHERE contact_title = 'Owner' OR contact_title = 'CEO'
--14
SELECT MAX(unit_price) FROM products
--15
SELECT AVG(DATE_PART('year', CURRENT_DATE) - DATE_PART('year', birth_date)) AS avg_age
FROM employees
--16
SELECT customer_id, company_name, phone
FROM customers
WHERE phone ILIKE '%123%'
--17
SELECT product_name, discontinued
FROM products
WHERE discontinued = 0 AND units_in_stock < 10 
--18
SELECT MIN(unit_price) AS LowestPrice, MAX(unit_price) AS HighesPrice
FROM products
--19
SELECT order_date
FROM orders
WHERE DATE(order_date) = '1997-05-05'
--20
SELECT product_name, units_in_stock
FROM products
ORDER BY units_in_stock
--21
SELECT product_name, units_in_stock
FROM products
WHERE unit_price > (
  SELECT AVG(unit_price) FROM products
)
--22
SELECT COUNT(employee_id) AS Number_of_employees, city
FROM employees
GROUP BY city