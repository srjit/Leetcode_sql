
create table 
    leetcode550_Activity(
        player_id INT, 
        device_id INT, 
        event_date DATE, 
        games_played INT);

insert into 
    leetcode550_Activity 
    values 
        (1, 2, STR_TO_DATE('2016-03-01','%Y-%m-%d'), 5),
        (1, 2, STR_TO_DATE('2016-03-02','%Y-%m-%d'), 6),
        (2, 3, STR_TO_DATE('2017-06-25','%Y-%m-%d'), 1),
        (3, 1, STR_TO_DATE('2016-03-02','%Y-%m-%d'), 0),
        (3, 4, STR_TO_DATE('2018-07-03','%Y-%m-%d'), 5);

select * from leetcode550_Activity

# Write your MySQL query statement below

SELECT ROUND(SUM(login)/COUNT(DISTINCT player_id), 2) AS fraction
FROM (
  SELECT
    player_id,
    DATEDIFF(event_date, MIN(event_date) OVER(PARTITION BY player_id)) = 1 AS login
  FROM leetcode550_Activity
) AS t