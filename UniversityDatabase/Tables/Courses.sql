CREATE TABLE Courses 
(
    DepartmentCode    VARCHAR(2)     NOT NULL,
	CourseNumber      VARCHAR(3)     NOT NULL,
	CourseName        VARCHAR(50)    NOT NULL,
	Credits           DECIMAL(2,1)   NOT NULL,
	CONSTRAINT PK_Courses 
	    PRIMARY KEY (DepartmentCode, CourseNumber),
	CONSTRAINT FK_Courses_DepartmentCode
	    FOREIGN KEY (DepartmentCode) REFERENCES Departments (DepartmentCode),
	CONSTRAINT CK_Courses_Credits
	    CHECK (Credits > 0.5 AND Credits < 12.0)	
);
