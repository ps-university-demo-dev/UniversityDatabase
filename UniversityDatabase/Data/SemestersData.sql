MERGE INTO Semesters AS Target
USING (VALUES
    ('FA', 'Fall',   1),
	('SP', 'Spring', 2),
	('SU', 'Summer', 3)
)
AS Source (SemesterCode, SemesterName, AcademicOrder)
ON Target.SemesterCode = Source.SemesterCode
    WHEN MATCHED THEN
        UPDATE
		    SET
			    SemesterName = Source.SemesterName,
				AcademicOrder = Sourse.AcademicOrder
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (SemesterCode, SemesterName, AcedemicOrder)
        VALUES (SemesterCode, SemesterName, AcademicOrder);