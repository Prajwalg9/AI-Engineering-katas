-- CASES IN SQL
CREATE TABLE GROCERY(
	ID INT PRIMARY KEY,
	NAME VARCHAR(100),
	PRICE NUMERIC(5,2)
);


INSERT INTO grocery(name,price) 
VALUES('rice',2002.2),
('wheat',1100),
('COCO-oil',1020.20);

-- with select
SELECT name,price,
	CASE
		WHEN (price>1000) THEN 'Expensive'
		WHEN price BETWEEN 500 AND 1000 THEN 'Morderate'
		ELSE 'Cheap'
	END AS Price_tag
FROM grocery;


-- without select
alter table grocery
add column price_tag text;

update grocery
set price_tag=
case
	when price>1000 then 'Expensive'
	when price between 500 and 1000 then 'Morderate'
	else 'Cheap'
end;

select * from grocery;