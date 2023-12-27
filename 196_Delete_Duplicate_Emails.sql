
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/21/2018 18:32:18

drop table `leetcode196_Person`;
create table leetcode196_Person(id INT, email VARCHAR(255));

insert into leetcode196_Person (id, email) values (1, 'john@example.com'), (2, 'bob@example.com'), (3, 'john@example.com');



select * from leetcode196_Person;

select * from leetcode196_Person p1, leetcode196_Person p2
where p1.email = p2.email and p1.id > p2.id;