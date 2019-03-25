CREATE TABLE DegreeRequirements
(
    RequirementId       INT IDENTITY  NOT NULL,
    DegreeId            INT           NOT NULL,
	StudyYear           INT           NOT NULL,
	SemesterCode        VARCHAR(2)    NOT NULL,
    DepartmentCode      VARCHAR(2)    NOT NULL,
	CourseNumber        VARCHAR(3)    NOT NULL,
	CONSTRAINT PK_DegreeRequirements
	    PRIMARY KEY (RequirementId),
	CONSTRAINT FK_DegreeRequirements_DegreeId
	    FOREIGN KEY (DegreeId) REFERENCES Degrees (DegreeId),
	CONSTRAINT FK_DegreeRequirements_Semesters
	    FOREIGN KEY (SemesterCode) REFERENCES Semesters (SemesterCode),
	CONSTRAINT FK_DegreeRequirements_Courses
	    FOREIGN KEY (DepartmentCode, CourseNumber) REFERENCES Courses (DepartmentCode, CourseNumber)
);
