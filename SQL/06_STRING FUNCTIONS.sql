-- STRING FUNCTIONS 

-- 1) UPPER
SELECT UPPER('mYnsshh');

-- 2) LOWER
SELECT LOWER('mYnsshh');

-- 3) LENGTH
SELECT LENGTH('mYnsshh');

-- 4) SUBSTRING
SELECT SUBSTRING('mYnsshh',2,3);

-- 5)TRIMING
SELECT TRIM('  hello  ');    -- 'hello'
SELECT LTRIM('  hello  ');   -- 'hello  '
SELECT RTRIM('  hello  ');   -- '  hello'

-- 6) CONCAT
SELECT CONCAT('Hello', ' ', 'World'); 
SELECT 'Hello' || ' '|| 'World';  -- POSTGRES/SQLITE


-- 7) REPLACE
SELECT REPLACE('Hello World','World','SQL');


-- 8) left/ right
select  LEFT('hELLO wORLD',5);
SELECT RIGHT('hELLO wORLD',5);

-- 9) REVERSE
SELECT REVERSE('SQL');


-- 10) FORMAT AND TO CHAR
SELECT TO_CHAR(1234, '9999');   