MERGE INTO Departments AS Target
USING (VALUES
    ('MA', 'Math'),
	('PH', 'Physics'),
	('CH', 'Chemistry'),
	('CM', 'Chemical Engineering'),
    ('CE', 'Civil Engineering'),
    ('ME', 'Mechnical Engineering'),
	('EE', 'Electrical Engineering'),
	('CS', 'Computer Science'),
	('LA', 'Liberal Arts'),
	('MG', 'Engineering Management')
)
AS Source (DepartmentCode, DepartmentName)
ON Target.DepartmentCode = Source.DepartmentCode
    WHEN MATCHED THEN
        UPDATE
		    SET
			    DepartmentName = Source.DepartmentName
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (DepartmentCode, DepartmentName)
        VALUES (DepartmentCode, DepartmentName);
