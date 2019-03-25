CREATE TABLE Departments
(
    DepartmentCode    VARCHAR(2)   NOT NULL,
	DepartmentName    VARCHAR(30)  NOT NULL,
	CONSTRAINT PK_Departments 
	    PRIMARY KEY (DepartmentCode)
);
