
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/21/2018 18:32:18

create table leetcode182(id INTEGER PRIMARY KEY,
    email VARCHAR(50));

insert into leetcode182(id, email) values (1, 'a@b.com'), (2, 'c@d.com'), (3, 'a@b.com');    

select email as Email from leetcode182 
group by email
having count(*) > 1
