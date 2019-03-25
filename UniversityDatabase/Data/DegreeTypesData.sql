MERGE INTO DegreeTypes AS Target
USING (VALUES
    ('BS', 'Bachelor of Science'),
	('MS', 'Master of Science')
)
AS Source (DegreeTypeCode, DegreeTypeName)
ON Target.DegreeTypeCode = Source.DegreeTypeCode
    WHEN MATCHED THEN
        UPDATE
		    SET
			    DegreeTypeName = Source.DegreeTypeName
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (DegreeTypeCode, DegreeTypeName)
        VALUES (DegreeTypeCode, DegreeTypeName);