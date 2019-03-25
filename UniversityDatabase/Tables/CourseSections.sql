CREATE TABLE CourseSections
(
    CourseSectionId     INT IDENTITY(10000,1)            NOT NULL,
	TermCode            VARCHAR(6)                       NOT NULL,
    DepartmentCode      VARCHAR(2)                       NOT NULL,
	CourseNumber        VARCHAR(3)                       NOT NULL,
	SectionNumber       INT                   DEFAULT 1  NOT NULL,
	CONSTRAINT PK_CourseSections
	    PRIMARY KEY (CourseSectionId),
	CONSTRAINT FK_CourseSections_Terms
	    FOREIGN KEY (TermCode) REFERENCES Terms (TermCode),
	CONSTRAINT FK_CourseSections_Courses
	    FOREIGN KEY (DepartmentCode, CourseNumber) REFERENCES Courses (DepartmentCode, CourseNumber)	
);
