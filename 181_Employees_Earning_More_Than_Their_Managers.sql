
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/21/2018 18:32:18

create table leetcode181(id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    salary INTEGER,
    managerId INTEGER);

insert into leetcode181(id, name, salary, managerId) 
    values 
        (1, 'Joe', 70000, 3),
        (2, 'Henry', 80000, 4),
        (3, 'Sam', 60000, NULL),
        (4, 'Max', 90000, NULL);

select B.name as Employee from
    leetcode181 A inner join leetcode181 B on A.id = B.managerId 
    where A.salary < B.salary;
