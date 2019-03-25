CREATE TABLE CourseEnrollments
(
    CourseEnrollmentId     INT          NOT NULL,
	StudentId              VARCHAR(8)   NOT NULL,
	CourseSectionId        INT          NOT NULL,
	GradeCode              VARCHAR(1)   NULL,
	CONSTRAINT PK_CourseEnrollments
	    PRIMARY KEY (CourseEnrollmentId),
	CONSTRAINT FK_CourseEnrollments_Students
	    FOREIGN KEY (StudentId) REFERENCES Students (StudentId),
	CONSTRAINT FK_CourseEnrollments_CourseSections
	    FOREIGN KEY (CourseSectionId) REFERENCES CourseSections (CourseSectionId),
	CONSTRAINT FK_CourseEnrollments_Grades
	    FOREIGN KEY (GradeCode) REFERENCES Grades (GradeCode)
);
