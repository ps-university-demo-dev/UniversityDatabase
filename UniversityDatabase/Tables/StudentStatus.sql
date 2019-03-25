CREATE TABLE StudentStatus
(
    StudentStatusCode    VARCHAR(1)     NOT NULL,
	StudentStatusName    VARCHAR(20)    NOT NULL,
	IsEnrolled           BIT            NOT NULL,
	CONSTRAINT PK_StudentStatus
	    PRIMARY KEY (StudentStatusCode)
);
