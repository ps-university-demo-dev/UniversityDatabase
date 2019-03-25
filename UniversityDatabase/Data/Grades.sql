MERGE INTO Grades AS Target
USING (VALUES
    ('A', 4.0, 1),
	('B', 3.0, 1),
	('C', 2.0, 1),
	('D', 1.0, 1),
	('F', 0.0, 1),
	('W', NULL, 0)
)
AS Source (GradeCode, Points, IncludeInGpa)
ON Target.GradeCode = Source.GradeCode
    WHEN MATCHED THEN
        UPDATE
		    SET
			    Points = Source.Points,
				IncludeInGpa = Source.IncludeInGpa
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (GradeCode, Points, IncludeInGpa)
        VALUES (GradeCode, Points, IncludeInGpa);