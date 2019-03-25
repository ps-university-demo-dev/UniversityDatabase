CREATE TABLE Degrees
(
    DegreeId         INT IDENTITY NOT NULL,
	DepartmentCode   VARCHAR(2)   NOT NULL,
	DegreeTypeCode   VARCHAR(2)   NOT NULL,
	DegreeName       VARCHAR(30)  NOT NULL,
	CONSTRAINT PK_Degrees
	    PRIMARY KEY (DegreeId),
	CONSTRAINT FK_Degrees_DepartmentCode
	    FOREIGN KEY (DepartmentCode) REFERENCES Departments (DepartmentCode)
);
