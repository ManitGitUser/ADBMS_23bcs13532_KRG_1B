
use KRG_1B;

-- Year_tbl to store actual NPV data
create table Year_tbl (
    id int,
    year int,
    npv decimal(10, 2)
);

-- Queries table containing lookup pairs
create table Queries (
    id int,
    year int
);

-- Sample data for Year_tbl
insert into Year_tbl
values
    (1, 2021, 10000.50),
    (2, 2021, 20000.00),
    (1, 2022, 15000.75);

-- Sample data for Queries table
insert into Queries
values
    (1, 2021),
    (1, 2022),
    (1, 2023),
    (2, 2021),
    (3, 2021);

-- Output query through left join
select 
    q.id,
    q.year,
    isnull(y.npv, 0) as 'npv'
from 
    Queries q
left join 
    Year_tbl y 
on
    q.id = y.id 
    and 
    q.year = y.year;