
use KRG_1B;

-- Employees table
create table Employees (
    emp_id int primary key,
    name varchar(100),
    department varchar(100),
    manager_id int
);

-- Sample data
insert into Employees
values
    (1, 'Alice', 'Engineering', NULL),
    (2, 'Bob', 'Engineering', 1),
    (3, 'Charlie', 'Marketing', 1),
    (4, 'David', 'Engineering', 2),
    (5, 'Eva', 'HR', 3);

-- Output query through left join
select 
    e.name as 'employee_name',
    e.department as 'employee_department',
    m.name as 'manager_name',
    m.department as 'manager_department'
from 
    Employees e
LEFT JOIN 
    Employees m 
on 
    e.manager_id = m.emp_id;