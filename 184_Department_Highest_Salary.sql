

create table leetcode184_Employee(id INT,
    name VARCHAR(255),
    salary INT,
    departmentId INT);


create table leetcode184_Department(id INT PRIMARY KEY,
    name VARCHAR(255));

insert into leetcode184_Employee values (1, 'Joe', 70000, 1), (2, 'Jim', 90000, 1), (3, 'Henry', 80000, 2), (4, 'Sam', 60000, 2), (5, 'Max', 90000, 1);
insert into leetcode184_Department values (1, 'IT'), (2, 'Sales');


select * from leetcode184_Employee
select * from leetcode184_Department



select B.name as Department, A.name as Employee, A.salary as Salary from (select name, `departmentId`, salary, RANK() over (PARTITION BY departmentId order by salary desc) as RNK from leetcode184_Employee) A
inner join leetcode184_Department B on A.departmentId = B.id
where RNK = 1;
