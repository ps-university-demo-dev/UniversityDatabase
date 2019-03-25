MERGE INTO StudentStatus AS Target
USING (VALUES
    ('E', 'Enrolled', 1),
	('G', 'Graduated', 0),
	('W', 'Withdrawn', 0)
)
AS Source (StudentStatusCode, StudentStatusName, IsEnrolled)
ON Target.StudentStatusCode = Source.StudentStatusCode
    WHEN MATCHED THEN
        UPDATE
		    SET
			    StudentStatusName = Source.StudentStatusName,
				IsEnrolled = Source.IsEnrolled
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (StudentStatusCode, StudentStatusName, IsEnrolled)
        VALUES (StudentStatusCode, StudentStatusName, IsEnrolled);