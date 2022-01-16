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


Select * from Worker_table;


# Q-1: Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.

Select First_Name as WORKER_NAME from Worker_table limit 1;

# Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

Select Distinct Department from Worker_table;

# Q-3. Write an SQL query to show the last 5 record from a table.

Select * from Worker_table order by Salary desc limit 5;














