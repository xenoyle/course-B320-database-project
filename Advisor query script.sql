SELECT 
    a.AdvisorID,
    s.StudentID,
    s.FirstName + ' ' + s.LastName AS StudentName,
    s.Major AS StudentMajor,
    p.ProfessorID,
    p.ProfessorName AS AdvisorName
FROM 
    Advisors a
JOIN 
    Students s ON a.StudentID = s.StudentID
JOIN 
    Professors p ON a.ProfessorID = p.ProfessorID
ORDER BY 
    p.ProfessorName, s.FirstName, s.LastName;