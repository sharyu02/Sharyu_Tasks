use D2 ; 
select * from Employees ;

select FirstName , LastName , Salary 
from Employees 
order by salary desc 
limit 3 ; 

select FirstName , LastName , Salary 
From Employees 
order by Salary 
limit 3 ; 

Select FirstName , LastName , Salary 
from Employees 
order by Salary Desc 
limit 1 , 1 ; 

select FirstName , LastName , Salary 
From Employees 
order by Salary 
limit 1 , 1 ; 

Select FirstName , LastName , Salary 
From Employees 
order by Salary Desc
limit 2 , 1 ; 

Select FirstName , LastName , Salary 
From Employees 
order by Salary 
limit 2 , 1 ; 

Select FirstName , LastName , Salary 
From Employees 
Where Salary between 65000 and 80000
order by FirstName Desc 
limit 3 ; 

