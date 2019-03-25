CREATE TABLE Semesters
(
    SemesterCode   VARCHAR(2)    NOT NULL,
	SemesterName   VARCHAR(20)   NOT NULL,
	AcademicOrder  INT           NOT NULL
	CONSTRAINT PK_Semesters
	    PRIMARY KEY (SemesterCode)
);