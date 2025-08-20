use KRG_1B;

-- Employees table
create table Employee (
    emp_id int
);

-- Sample data
insert into 
    Employee
values
    (1),(2),(3),(4),(5),(6),(7),(8),(8),(9),(9);

-- Query to find the maximum EMP_ID excluding duplicates
select 
    max(emp_id)
from (
    select emp_id
    from Employee
    group by emp_id
    having count(emp_id) = 1
) as UniqueEmployees;