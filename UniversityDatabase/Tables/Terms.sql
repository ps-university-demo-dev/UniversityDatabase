CREATE TABLE Terms
(
    TermCode       VARCHAR(6)     NOT NULL,
	SemesterCode   VARCHAR(2)     NOT NULL,
	TermYear       INT            NOT NULL,
	CONSTRAINT PK_Terms
	    PRIMARY KEY (TermCode),
	CONSTRAINT FK_Terms_SemesterCode
	    FOREIGN KEY (SemesterCode) REFERENCES Semesters (SemesterCode)
);

