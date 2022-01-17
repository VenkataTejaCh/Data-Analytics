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
insert into Worker_table values("Vipul","Engineer",300);
insert into Worker_table values("Satish","Engineer",300);




Select * from Worker_table;


# Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

Select left(First_Name,3) from Worker_table;

# Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.

Select INSTR(FIRST_NAME, BINARY'a') as positon from Worker_table where FIRST_NAME = 'Amitabh';

# Q-3. Write an SQL query to print the name of employees having the highest salary in each department.

Select Department,  Salary, First_Name from worker_table group by Department order by salary desc  ;


