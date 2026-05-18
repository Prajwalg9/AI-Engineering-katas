CREATE TABLE sales(
	product varchar(100),
	category varchar(100),
	amount int,
	sale_date date
);

INSERT INTO sales("product","category","amount","sale_date")
VALUES
('Laptop', 'Electronics', 55000, '2026-01-05'),
('Mouse', 'Electronics', 799, '2026-01-08'),
('Keyboard', 'Electronics', 1499, '2026-01-10'),
('Office Chair', 'Furniture', 7200, '2026-01-12'),
('Notebook', 'Stationery', 120, '2026-01-15'),
('Pen Pack', 'Stationery', 250, '2026-01-18'),
('Water Bottle', 'Accessories', 499, '2026-01-20'),
('Smartphone', 'Electronics', 32000, '2026-01-22'),
('Table', 'Furniture', 9500, '2026-01-25'),
('Backpack', 'Accessories', 1800, '2026-01-28');



-- calculate no of records
SELECT COUNT(*) FROM sales;


-- sum of amount
SELECT SUM(amount) FROM sales;


-- average sales
SELECT AVG(amount) FROM sales;

-- minimum and maxmum
SELECT MIN(amount),MAX(amount) from sales;

-- groupby
-- calculate sales by each category
SELECT category, sum(amount) from sales
GROUP BY category;

-- now if you want to find which categoy has sale>5000
SELECT category, sum(amount) FROM sales
GROUP BY category
HAVING sum(amount)>5000;