# course-B320-database-project
A repository for containing the SQL code and group materials for B320: Database Systems and Mgmt


CREATE TRIGGER UpdateClassification
ON Students
AFTER UPDATE
AS
BEGIN
    UPDATE Students
    SET StatusID = CASE 
        WHEN CreditsEarned < 30 THEN 1
        WHEN CreditsEarned BETWEEN 30 AND 59 THEN 2
        WHEN CreditsEarned BETWEEN 60 AND 89 THEN 3
        WHEN CreditsEarned >= 90 THEN 4
    END
    FROM Inserted i
    WHERE Students.StudentID = i.StudentID;
END;
