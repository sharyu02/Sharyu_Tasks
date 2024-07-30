use D2;

CREATE table Employees(
EmployeeID INT Primary Key,
FirstName VARCHAR(50) Not Null,
LastName VARCHAR(50) Not Null,
Email VARCHAR(100) Not Null Unique,
Salary INT Not Null,
DepartmentID INT);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(1, 'John', 'Doe', 'john.doe@company.com', 60000, 1),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 2),
(3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 1),
(4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 3),
(5, 'David', 'Brown', 'david.brown@company.com', 65000, 2),
(6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 3);

CREATE TABLE Departments (
    DepartmentID int NOT NULL PRIMARY KEY,
    DepartmentName varchar(50) NOT NULL
);


INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Marketing'),
(2, 'Sales'),
(3, 'IT'),
(4, 'Finance'),
(5, 'HR');


CREATE TABLE Projects (
    ProjectID int PRIMARY KEY,
    ProjectName varchar(100) NOT NULL,
    DepartmentID int,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Projects (ProjectID, ProjectName, DepartmentID) VALUES
(1, 'Project A', 1),
(2, 'Project B', 2),
(3, 'Project C', 3),
(4, 'Project D', 4),
(5, 'Project E', 5);


alter table Employees
add foreign key (DepartmentID) references Departments( DepartmentID) ; 

alter table Employees 
add constraint c1 unique (Email) ; 

alter table Departments 
add constraint c2 primary key (DepartmentID) ; 

insert into Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) values (7 , "Krish" , "swami" , "swami@gamil.com" , 50000 , 8) ;
 
 insert into Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) values
 (7 , "Krish" , "swami" , "sarah.davis@company.com" , 50000 , 3) ;
 
 delete from Departments 
 where DepartmentID = 2 ; 
 
 update Departments
 set DepartmentID = 9 
 where DepartmentID = 3 ; 
