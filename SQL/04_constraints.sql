create table managers(
	id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name varchar(100)
);

insert into managers(name) values ('Prajwal'),('Nikhil'),('Suraj');


create table employees(

	-- primary key
	employee_id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

	-- NOT NULL + UNIQUE
	email varchar(200) NOT NULL UNIQUE,

	-- NOT NULL
	name varchar(100) NOT NULL,

    -- CHECK constraint
	age smallint CHECK(age>=18),

    -- DEFAULT constraint
	department varchar(100) DEFAULT 'Traniee',

    -- UNIQUE constraint
	phone varchar(15) UNIQUE,

    -- CHECK constraint with multiple conditions
	salary numeric(10,2) check(salary>0 and salary<10000000),
	

    -- FOREIGN KEY constraint
	manager_id int,

	-- setting foreign key
	constraint fk_manager
	foreign key (manager_id)
	references managers(id)
);

INSERT INTO employees(email,name,age,department,phone,salary,manager_id) values('prajwalgg99@mail.com','prajwal',19,'fashion','9183726345',1000000.6,2);

select * from managers;