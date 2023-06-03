
CREATE TABLE Departments (
	Department_No VARCHAR,
	Department_Name VARCHAR
)
;

CREATE TABLE DepartmentEmp (
	Employee_Number INT,
	Department_No VARCHAR
)
;

CREATE TABLE DepartmentManager (
	Departmen_No VARCHAR,
	Employee_Number INT
)
;

CREATE TABLE Employees (
	Employee_Number INT,
	Employee_TitleID VARCHAR,
	Birth_Date DATE,
	First_Name VARCHAR,
	Last_Name VARCHAR,
	Sex VARCHAR,
	Hire_Date DATE
)
;

CREATE TABLE Salaries (
	Employee_Number INT,
	Salary INT
)
;

CREATE TABLE Titles (
	Title_ID VARCHAR,
	Title VARCHAR
)
;