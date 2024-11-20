-- 1. Transcript
SELECT 
    s.StudentID,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    t.TermName,
    t.TermYear,
    c.CourseNumber,
    c.CourseName,
    e.Grade
FROM 
    Enrollments e
JOIN 
    Students s ON e.StudentID = s.StudentID
JOIN 
    CourseSchedule cs ON e.ScheduleID = cs.ScheduleID
JOIN 
    Courses c ON cs.CourseID = c.CourseID
JOIN 
    Terms t ON t.TermID = cs.AcademicPeriodDesc
WHERE 
    s.StudentID = @StudentID -- Replace @StudentID with the desired student ID
ORDER BY 
    t.TermYear, t.TermName;


-- 2. Report Number of students by Classification and Program

SELECT 
    ss.StatusName AS Classification,
    COUNT(*) AS StudentCount
FROM 
    Students s
JOIN 
    StudentStatuses ss ON s.StatusID = ss.StatusID
WHERE 
    s.Major = 'CSCI'
GROUP BY 
    ss.StatusName
ORDER BY 
    ss.StatusName;


-- 3. C or better by classification and semester
SELECT 
    t.TermName,
    t.TermYear,
    ss.StatusName AS Classification,
    COUNT(e.EnrollmentID) AS StudentsPassed
FROM 
    Enrollments e
JOIN 
    Students s ON e.StudentID = s.StudentID
JOIN 
    CourseSchedule cs ON e.ScheduleID = cs.ScheduleID
JOIN 
    Terms t ON t.TermID = cs.AcademicPeriodDesc
JOIN 
    StudentStatuses ss ON s.StatusID = ss.StatusID
WHERE 
    s.Major = 'CSCI' AND
    e.Grade IN ('A', 'B', 'C', 'A-', 'B+', 'B-', 'C-', 'C+') -- Grades considered as passing
GROUP BY 
    t.TermName, t.TermYear, ss.StatusName
ORDER BY 
    t.TermYear DESC, t.TermName;


--4. Report Classes offered and completion percentages

SELECT 
    c.CourseNumber,
    c.CourseName,
    t.TermName,
    t.TermYear,
    COUNT(CASE WHEN e.Grade IN ('A', 'B', 'C', 'A-', 'B+', 'B-') THEN 1 END) AS PassedCount,
    COUNT(CASE WHEN e.Grade NOT IN ('A', 'B', 'C', 'A-', 'B+', 'B-') THEN 1 END) AS FailedCount,
    ROUND((COUNT(CASE WHEN e.Grade IN ('A', 'B', 'C', 'A-', 'B+', 'B-') THEN 1 END) * 1.0 / COUNT(e.EnrollmentID)) * 100, 2) AS PassPercentage,
    ROUND((COUNT(CASE WHEN e.Grade NOT IN ('A', 'B', 'C', 'A-', 'B+', 'B-') THEN 1 END) * 1.0 / COUNT(e.EnrollmentID)) * 100, 2) AS FailPercentage
FROM 
    Enrollments e
JOIN 
    CourseSchedule cs ON e.ScheduleID = cs.ScheduleID
JOIN 
    Courses c ON cs.CourseID = c.CourseID
JOIN 
    Terms t ON t.TermID = cs.AcademicPeriodDesc
WHERE 
    c.CourseName LIKE '%Computer Science%'
GROUP BY 
    c.CourseNumber, c.CourseName, t.TermName, t.TermYear
ORDER BY 
    t.TermYear DESC, t.TermName;

-- 5. Under Enrolled course:

SELECT 
    c.CourseNumber,
    c.CourseName,
    cs.CRN,
    COUNT(e.EnrollmentID) AS EnrolledCount
FROM 
    Enrollments e
JOIN 
    CourseSchedule cs ON e.ScheduleID = cs.ScheduleID
JOIN 
    Courses c ON cs.CourseID = c.CourseID
GROUP BY 
    c.CourseNumber, c.CourseName, cs.CRN
HAVING 
    COUNT(e.EnrollmentID) < 10;


-- 6. Gpa range

SELECT 
    CASE 
        WHEN g.GPA >= 3.7 THEN 'A Range'
        WHEN g.GPA >= 3.3 THEN 'B+ Range'
        WHEN g.GPA >= 3.0 THEN 'B Range'
        WHEN g.GPA >= 2.7 THEN 'C+ Range'
        WHEN g.GPA >= 2.0 THEN 'C Range'
        ELSE 'Below C'
    END AS GPACategory,
    COUNT(*) AS StudentCount
FROM 
    GPAHistory g
GROUP BY 
    CASE 
        WHEN g.GPA >= 3.7 THEN 'A Range'
        WHEN g.GPA >= 3.3 THEN 'B+ Range'
        WHEN g.GPA >= 3.0 THEN 'B Range'
        WHEN g.GPA >= 2.7 THEN 'C+ Range'
        WHEN g.GPA >= 2.0 THEN 'C Range'
        ELSE 'Below C'
    END;

-- 7. Students on academic probation

WITH PreviousTermGPA AS (
    SELECT 
        gh.StudentID,
        gh.Term,
        gh.GPA,
        ROW_NUMBER() OVER (PARTITION BY gh.StudentID ORDER BY t.TermYear DESC, t.TermName DESC) AS RowNum
    FROM 
        GPAHistory gh
    JOIN 
        Terms t ON gh.Term = t.TermName
)
SELECT 
    s.StudentID,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    pt.GPA AS PreviousGPA,
    pt.Term AS PreviousTerm
FROM 
    Students s
JOIN 
    PreviousTermGPA pt ON s.StudentID = pt.StudentID
WHERE 
    pt.RowNum = 2 AND pt.GPA < 2.0 -- Second most recent term
ORDER BY 
    s.StudentID;


-- 8. Students Exiting academic probation

WITH CurrentAndPreviousTermGPA AS (
    SELECT 
        gh.StudentID,
        gh.Term,
        gh.GPA,
        ROW_NUMBER() OVER (PARTITION BY gh.StudentID ORDER BY t.TermYear DESC, t.TermName DESC) AS RowNum
    FROM 
        GPAHistory gh
    JOIN 
        Terms t ON gh.Term = t.TermName
)
SELECT 
    s.StudentID,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    cp.PreviousGPA,
    cp.CurrentGPA,
    cp.PreviousTerm,
    cp.CurrentTerm
FROM 
    (
        SELECT 
            c.StudentID,
            c.GPA AS CurrentGPA,
            p.GPA AS PreviousGPA,
            c.Term AS CurrentTerm,
            p.Term AS PreviousTerm
        FROM 
            CurrentAndPreviousTermGPA c
        JOIN 
            CurrentAndPreviousTermGPA p ON c.StudentID = p.StudentID AND c.RowNum = 1 AND p.RowNum = 2
        WHERE 
            p.GPA < 2.0 AND c.GPA >= 2.0
    ) cp
JOIN 
    Students s ON cp.StudentID = s.StudentID
ORDER BY 
    s.StudentID;


-- 9. Semester by semester program summary

SELECT 
    t.TermName,
    t.TermYear,
    COUNT(DISTINCT s.StudentID) AS TotalStudents,
    ROUND(AVG(gh.GPA), 2) AS AverageGPA,
    COUNT(DISTINCT CASE WHEN gh.GPA < 2.0 THEN s.StudentID END) AS ProbationCount,
    COUNT(DISTINCT CASE WHEN ss.StatusName = 'Graduated' THEN s.StudentID END) AS Graduates
FROM 
    Students s
JOIN 
    GPAHistory gh ON s.StudentID = gh.StudentID
JOIN 
    Terms t ON gh.Term = t.TermName
JOIN 
    StudentStatuses ss ON s.StatusID = ss.StatusID
GROUP BY 
    t.TermName, t.TermYear
ORDER BY 
    t.TermYear DESC, t.TermName;

-- 10. Students repeating courses

WITH CourseAttempts AS (
    SELECT 
        e.StudentID,
        cs.CourseID,
        c.CourseNumber,
        c.CourseName,
        t.TermName,
        t.TermYear,
        e.Grade,
        ROW_NUMBER() OVER (PARTITION BY e.StudentID, cs.CourseID ORDER BY t.TermYear, t.TermName) AS Attempt
    FROM 
        Enrollments e
    JOIN 
        CourseSchedule cs ON e.ScheduleID = cs.ScheduleID
    JOIN 
        Courses c ON cs.CourseID = c.CourseID
    JOIN 
        Terms t ON cs.AcademicPeriodDesc = t.TermID
)
SELECT 
    s.StudentID,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    ca.CourseNumber,
    ca.CourseName,
    ca.TermName AS InitialTerm,
    ca.TermYear AS InitialYear,
    ca.Grade AS InitialGrade,
    ca2.TermName AS ReattemptTerm,
    ca2.TermYear AS ReattemptYear,
    CASE 
        WHEN ca2.Grade IS NULL THEN 'In Progress' ELSE ca2.Grade
    END AS ReattemptGrade
FROM 
    CourseAttempts ca
JOIN 
    CourseAttempts ca2 ON ca.StudentID = ca2.StudentID AND ca.CourseID = ca2.CourseID AND ca.Attempt = 1 AND ca2.Attempt = 2
JOIN 
    Students s ON ca.StudentID = s.StudentID
ORDER BY 
    s.StudentID, ca.CourseNumber;

