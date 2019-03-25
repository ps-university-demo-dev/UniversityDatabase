CREATE TABLE Grades
(
    GradeCode      VARCHAR(1)     NOT NULL,
	Points         DECIMAL(2,1)   NULL,
	IncludeInGpa   BIT            DEFAULT 1   NOT NULL,
	CONSTRAINT PK_Grades
	    PRIMARY KEY (GradeCode)
);
