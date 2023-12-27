
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/21/2018 18:32:18

create table leetcode197_Weather(id INT, recordDate DATE, temperature INT);

insert into leetcode197_Weather(id, recordDate, temperature) 
values
   (1, STR_TO_DATE('2015-01-01', '%Y-%m-%d'), 10),
   (2, STR_TO_DATE('2015-01-02', '%Y-%m-%d'), 25),
   (3, STR_TO_DATE('2015-01-03', '%Y-%m-%d'), 20),
   (4, STR_TO_DATE('2015-01-04', '%Y-%m-%d'), 30);

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

select a.Id
    from 
        Weather a,
        Weather b
    where
        a.Temperature > b.Temperature
        and 
        DATEDIFF(a.RecordDate, b.RecordDate) = 1
