use KRG_1B;

-- Departments table
create table Departments (
    dept_id int primary key,
    dept_name varchar(100)
);

-- Courses table with foreign key referencing Departments
create table Courses (
    course_id int primary key,
    course_name varchar(100),
    dept_id int,
    foreign key (dept_id) references Departments(dept_id)
);

-- Data for Departments
insert into Departments
values
    (1, 'Computer Science'),
    (2, 'Electrical Engineering'),
    (3, 'Mechanical Engineering'),
    (4, 'Civil Engineering'),
    (5, 'Mathematics');

-- Data for Courses
insert into Courses
values
    (201, 'Data Structures', 1),
    (202, 'Operating Systems', 1),
    (203, 'Database Systems', 1),
    (204, 'Circuits', 2),
    (205, 'Signals and Systems', 2),
    (206, 'Thermodynamics', 3),
    (207, 'Fluid Mechanics', 3),
    (208, 'Statics', 4),
    (209, 'Linear Algebra', 5),
    (210, 'Calculus', 5);

-- Subquery to get departments offering more than 2 courses
select
    d.dept_id,
    d.dept_name
from
    Departments d
where (
    select count(*) 
    from 
        Courses c 
    where 
        c.dept_id = d.dept_id
) > 2;