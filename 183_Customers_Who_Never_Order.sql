
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/21/2018 18:32:18

create table leetcode183_Customers(id INTEGER PRIMARY KEY, 
name VARCHAR(50));
create table leetcode183_Orders(id INTEGER PRIMARY KEY, customerId INTEGER);

insert into leetcode183_Customers values (1, "Joe"), (2, "Henry"), (3, "Sam"), (4, "Max");
insert into leetcode183_Orders values (1, 3), (2, 1);

select name as Customers from leetcode183_Customers
where id not in (select distinct customerId from leetcode183_Orders)