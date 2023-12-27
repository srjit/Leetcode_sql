
create table leetcode570_Employee(
id int,
name varchar(20),
department varchar(20),
managerId int
);

drop table leetcode570_Employee;

insert into leetcode570_Employee 
    values
        (101,'John','A', null),
        (102,'Dan','A', 101),
        (103,'James','A', 101),
        (104,'Amy','A', 101),
        (105,'Anne','A', 102),
        (106,'Ron','B', 102);

select e2.name from 
        employee e1
    inner join 
        employee e2
    on e1.managerId = e2.id
    group by
        e1.managerId
having count(e1.id) >= 5