
CREATE TABLE Departments (
	Departmen_No VARCHAR,
	Department_Name VARCHAR NOT NULL,
	PRIMARY KEY (Departmen_No)
);

CREATE TABLE Titles (
	Title_ID VARCHAR,
	Title VARCHAR,
	PRIMARY KEY (Title_ID)
);

CREATE TABLE Employees (
	Employee_Number INT,
	Employee_TitleID VARCHAR,
	Birth_Date DATE,
	First_Name VARCHAR,
	Last_Name VARCHAR,
	Sex VARCHAR,
	Hire_Date DATE,
	PRIMARY KEY (Employee_Number),
	FOREIGN KEY (Employee_TitleID) REFERENCES Titles(Title_ID)
);

CREATE TABLE DepartmentEmp (
	Employee_Number INT,
	Department_No VARCHAR
	PRIMARY KEY (Employee_Number,Departmen_No)
	FOREIGN KEY (Departmen_No) REFERENCES Departments (Departmen_No),
	FOREIGN KEY (Employee_Number) REFERENCES Employees (Employee_Number)
);

CREATE TABLE DepartmentManager (
	Departmen_No VARCHAR,
	Employee_Number INT,
	PRIMARY KEY (Departmen_No,Employee_Number)
	FOREIGN KEY (Departmen_No) REFERENCES Departments (Departmen_No),
	FOREIGN KEY (Employee_Number) REFERENCES Employees (Employee_Number)
);


CREATE TABLE Salaries (
	Employee_Number INT,
	Salary INT,
	PRIMARY KEY (Employee_Number, Salary)
	FOREIGN KEY (Employee_Number) REFERENCES Employees (Employee_Number)
);