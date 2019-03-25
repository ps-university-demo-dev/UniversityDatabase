SET IDENTITY_INSERT Degrees ON

MERGE INTO Degrees AS Target
USING (VALUES
    (1, 'BS', 'MA', 'BS Mathematics'),
	(2, 'BS', 'PH', 'BS Physics'),
	(3, 'BS', 'CH', 'BS Chemistry'),
    (4, 'BS', 'CM', 'BS Chemical Engineering'),
    (5, 'BS', 'CE', 'BS Civil Engineering'),
    (6, 'BS', 'ME', 'BS Mechanical Engineering'),
    (8, 'BS', 'EE', 'BS Electrical Engineering'),
    (9, 'BS', 'CS', 'BS Computer Science')
)
AS Source (DegreeId, DegreeTypeCode, DepartmentCode, DegreeName)
ON Target.DegreeTypeCode = Source.DegreeTypeCode
    AND Target.DepartmentCode = Source.DepartmentCode
    WHEN MATCHED THEN
        UPDATE
		    SET			    
				DegreeName = Source.DegreeName
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (DegreeId, DegreeTypeCode, DepartmentCode, DegreeName)
        VALUES (DegreeId, DegreeTypeCode, DepartmentCode, DegreeName);

DECLARE @nextDegreeId INT;
SELECT @nextDegreeId = (
        SELECT max(DegreeId)
            FROM Degrees
	) ;

DBCC CHECKIDENT (Degrees, RESEED, @nextDegreeId)
SET IDENTITY_INSERT Degrees OFF