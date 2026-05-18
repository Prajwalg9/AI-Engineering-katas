-- relationships

-- one to one
create table employees(
	emp_id INT generated always as identity primary key,
	name varchar(100)
);
create table id_cards(
	card_id INT PRIMARY KEY,
	emp_id INT UNIQUE,
	issue_date date,

	CONSTRAINT fk_employeess
	FOREIGN KEY (emp_id)
	REFERENCES employees(emp_id)
);



-- one to many
create table dept(
	dept_id INT generated always as identity primary key,
	dept_name varchar(100)
);
create table employeees(
	emp_id INT generated always as identity primary key,
	name varchar(100),
	dept_id INT,

	CONSTRAINT fk_dept
	FOREIGN KEY (dept_id)
	REFERENCES dept(dept_id)
);


-- many to many
CREATE TABLE students(
	id INT PRIMARY KEY,
	name VARCHAR(100)
);
CREATE TABLE courses(
	cid INT PRIMARY KEY,
	cname VARCHAR(100)
);
CREATE TABLE Enrollments(
	id INT,
	cid INT,

	primary key (id,cid),

	constraint fk_student
	foreign key (id)
	references student(id),

	constraint fk_course 
	foreign key (cid)
	references courses(cid)
);


-- show student names with courses
SELECT 
    students.name AS student_name,
    courses.cname AS course_name
FROM enrollments
JOIN students
    ON enrollments.id = students.id
JOIN courses
    ON enrollments.cid = courses.cid;
