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
insert into Worker_table values("Vipul","Engineer",100);
insert into Worker_table values("Satish","Engineer",200);




Select * from Worker_table;

# Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

Select * from worker_table where First_name != 'Vipul' and First_name != 'Satish';


#                                                    OR


Select * from worker_table where First_name not in ('Vipul','Satish'); 


# Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

Select * from worker_table where First_name like '_____h';




Create table Email_Employee(
First_name varchar(500),
Email varchar(500)
); 

insert into Email_Employee values("Varun", "Varun1@gmail.com");
insert into Email_Employee values("Dhoni","Dhoni@1234.com");
insert into Email_Employee values("Kohli","Kohli@123.com");
insert into Email_Employee values("Ambani","Ambani@gmail.com");
insert into Email_Employee values("Adani","Adani.com");
insert into Email_Employee values("Mahesh Babu","Mb@gmail.com");

Select * from Email_Employee;

# Q-3. Write a query to validate Email of Employee.

Select * from Email_Employee where Email like ('%Mb@gmail.com%');

