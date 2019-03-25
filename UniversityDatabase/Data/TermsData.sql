MERGE INTO Terms AS Target
USING (VALUES
    ('FA2013', 'FA', 2013),
    ('SP2014', 'SP', 2014),
    ('FA2014', 'FA', 2014),
    ('SP2015', 'SP', 2015),
	('FA2015', 'FA', 2015),
    ('SP2016', 'SP', 2016),
	('FA2016', 'FA', 2016),
    ('SP2017', 'SP', 2017),
	('FA2017', 'FA', 2017),
    ('SP2018', 'SP', 2018),
	('FA2018', 'FA', 2018),
    ('SP2019', 'SP', 2019)
)
AS Source (TermCode, SemesterCode, TermYear)
ON Target.TermCode = Source.TermCode
    WHEN MATCHED THEN
        UPDATE
		    SET
			    SemesterCode = Source.SemesterCode,
				TermYear = Source.TermYear
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (TermCode, SemesterCode, TermYear)
        VALUES (TermCode, SemesterCode, TermYear);