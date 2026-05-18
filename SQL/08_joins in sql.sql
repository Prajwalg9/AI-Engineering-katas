-- Joins in sql

-- students and courses table
create table students(
	id INT generated always as identity primary key,
	name varchar(100),
	c_id INT 
);
create table courses(
	c_id INT UNIQUE,
	c_name VARCHAR(100)
);

-- INSERTING VALUES
INSERT INTO students(name,c_id)
values('prajwal',101),
('nikhil',102),
('ravi',103),
('raju',NULL);


insert into courses(c_id,c_name)
values(101,'Python'),
(102,'SQL'),
(104,'Java');


-- inner join
SELECT students.name,courses.c_name
FROM students
INNER JOIN courses
ON students.c_id = courses.c_id;

-- full outer join 
select students.name,courses.c_name
FROM students 
FULL OUTER JOIN courses
ON students.c_id = courses.c_id;

-- left join
select students.name,courses.c_name
from students 
LEFT JOIN courses
ON students.c_id = courses.c_id;

-- right join 
select students.name,courses.c_name
from students
RIGHT JOIN courses
ON students.c_id = courses.c_id;

