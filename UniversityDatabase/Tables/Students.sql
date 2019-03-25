CREATE TABLE Students
(
    StudentId          VARCHAR(8)     NOT NULL,
	FirstName          VARCHAR(30)    NOT NULL,
	MiddleName         VARCHAR(30)    NULL,
	LastName           VARCHAR(30)    NOT NULL,
	StreetAddress      VARCHAR(40)    NOT NULL,
	City               VARCHAR(30)    NOT NULL,
	State              VARCHAR(2)     NOT NULL,
	ZipCode            VARCHAR(5)     NOT NULL,
	DateOfBirth        DATE           NOT NULL,
	Email              VARCHAR(60)    NULL,
	Phone              VARCHAR(20)    NULL,
	EnrollmentTerm     VARCHAR(6)     NOT NULL,
	StudentStatusCode  VARCHAR(1)     NOT NULL,
	DegreeId           INT            NOT NULL,
	CONSTRAINT PK_Students 
	    PRIMARY KEY (StudentId),
	CONSTRAINT FK_Students_EnrollementTerm
	    FOREIGN KEY (EnrollmentTerm) REFERENCES Terms (TermCode),
	CONSTRAINT FK_Students_StudentStatus
	    FOREIGN KEY (StudentStatusCode) REFERENCES StudentStatus (StudentStatusCode),
	CONSTRAINT FK_Students_DegreeId
	    FOREIGN KEY (DegreeId) REFERENCES Degrees (DegreeId)
);
