create database workers;
use workers;
show tables;

create table Worker_table(
First_Name char(255),
Department varchar(500),
Salary int
);

Select * from Worker_table;

insert into Worker_table values("Varun", "Cricket",1000);
insert into Worker_table values("Dhoni","Cricket",4000);
insert into Worker_table values("Kohli","Cricket",3000);
insert into Worker_table values("Ambani","Business Man",40000);
insert into Worker_table values("Adani","Business Man",30000);
insert into Worker_table values("Mahesh Babu","Hero",8000);
insert into Worker_table values("Lavanya","Actress",1000);
insert into Worker_table values("Sruthi","Student",400);
insert into Worker_table values("Raju","Clerk",40);
insert into Worker_table values("Ramu","Engineer",500);
insert into Worker_table values("Krishna","Producer",2000);
insert into Worker_table values("Rangha","Artist",150);
insert into Worker_table values("Sri","Student",100);
insert into Worker_table values("Monika","Actress",200);
insert into Worker_table values("Amitabh","Engineer",200);



Select * from Worker_table;

# Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

select replace(First_name,'a','A') from worker_table;

# Q-2. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.

select * from worker_table  order by First_Name asc,  department desc;

# Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.

SELECT First_name, Salary from Worker_table WHERE Salary=(SELECT max(Salary) from worker_table);