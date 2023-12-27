
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/21/2018 18:32:18

create table leetcode181_Activity(player_id INT, device_id INT, event_date DATE, games_played INT);

# Write your MySQL query statement below

select 
    player_id, min(event_date) as first_login
    from    
        activity 
    group by 
        player_id