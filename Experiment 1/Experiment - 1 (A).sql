-- Database creation
create database KRG_1B;
use KRG_1B;

-- Authors table
create table Authors (
    author_id int primary key,
    name varchar(100),
    country varchar(50)
);

-- Books table with a foreign key referencing Authors
create table Books (
    book_id int primary key,
    title varchar(100),
    author_id int,
    foreign key (author_id) references Authors(author_id)
);

-- Sample data for Authors
insert into Authors
values
    (1, 'JK Rowling', 'UK'),
    (2, 'Ian Fleming', 'UK'),
    (3, 'Jeff Kinney', 'US');

-- Sample data for Books
insert into Books
values
    (101, 'Harry Potter', 1),
    (102, 'Sherlock Holmes', 2),
    (103, 'Diary of a Wimpy Kid', 3);

-- Output inner join
select 
    b.title as 'book_title',
    a.name as 'author_name',
    a.country as 'author_country'
from
    Books b
inner join 
    Authors a on b.author_id = a.author_id;