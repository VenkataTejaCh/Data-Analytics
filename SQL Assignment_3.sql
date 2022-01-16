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

#Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

select rtrim(First_Name) from worker_table;

# Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

select distinct character_length(department), department from worker_table order by character_length(department) desc;

# Q-3. Write an SQL query to fetch nth max salaries from a table.

Select salary from Worker_table;

delimiter //
create procedure Max_Salary(IN nth int)
begin
select salary from worker_table order by Salary desc limit nth;
end //
delimiter ;

call Max_Salary(2)



