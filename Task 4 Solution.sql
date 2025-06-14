use meta

--a. Select, Where, Order by, Group by

select * from employee

select * from employee where department in ('HR', 'IT')

select * from employee where salary between 43000 and 58000

select * from employee order by name 

select * from employee order by name  desc

select department, sum(salary) as Total from employee group by Department

--b. Joins

select * from employee e inner join project p on e.id = p.id

Select * from employee e left join project p on e.id = p.id

select * from employee e right join project p on e.id = p.id

--c. Subqueries

select max(salary) as Second_highest_salary from employee where salary < 
(select max(salary) from employee)

select min(salary) from employee where salary in
(select distinct top(5) salary from employee order by salary desc)

--d. Aggregate Functions

select sum(salary) from employee where gender = 'male'

select avg(salary) from employee

--e. Views

create view View_m
as
select * from employee where gender = 'male'

select * from View_m

--f. Indexes

create nonclustered index inx_dep on employee(department)

select * from employee where department = 'Marketing'

create clustered index in_id_c on employee(id)


