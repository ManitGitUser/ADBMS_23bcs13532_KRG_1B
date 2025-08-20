use KRG_1B;

-- TableA to store employee salaries from system A
create table TableA (
    emp_id int primary key,
    ename varchar(50),
    salary int
);

-- TableB to store employee salaries from system B
create table TableB (
    emp_id int primary key,
    ename varchar(50),
    salary int
);

-- Sample data for TableA
insert into TableA 
values
    (1, 'Gurpreet', 1000),
    (2, 'Manit', 300);

-- Sample data for TableB
insert into TableB
values
    (2, 'Manit', 400),
    (3, 'Sukhmandeep', 100);

-- Query to find each unique employee with their lowest salary across both tables
select
    emp_id as 'Employee ID',
    ename as 'Name',
    min(salary) as 'Salary'
from (
    select * from TableA
    union all
    select * from TableB
) as Combined_Salaries
group by
    emp_id, ename;