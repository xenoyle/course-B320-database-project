-- Drop existing tables if they exist
DROP TABLE IF EXISTS GPAHistory;
DROP TABLE IF EXISTS GradePoints;
DROP TABLE IF EXISTS ProfessorAssignments;
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS CourseSchedule;
DROP TABLE IF EXISTS Rooms;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Buildings;
DROP TABLE IF EXISTS Campuses;
DROP TABLE IF EXISTS Subjects;
DROP TABLE IF EXISTS Professors;
DROP TABLE IF EXISTS StudentStatuses;

-- Create StudentStatuses Table
CREATE TABLE StudentStatuses (
    StatusID INT PRIMARY KEY,
    StatusName VARCHAR(20) NOT NULL
);

-- Create Professors Table
CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY,
    ProfessorName VARCHAR(100) NOT NULL
);

-- Create Subjects Table
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    Subject VARCHAR(10) NOT NULL,
    SubjectDescription VARCHAR(255)
);

-- Create Campuses Table
CREATE TABLE Campuses (
    CampusID INT PRIMARY KEY,
    CampusName VARCHAR(100) NOT NULL,
    Address VARCHAR(255) NOT NULL
);

-- Create Buildings Table
CREATE TABLE Buildings (
    BuildingID INT PRIMARY KEY,
    CampusID INT,
    BuildingCode VARCHAR(10),
    BuildingName VARCHAR(255),
    FOREIGN KEY (CampusID) REFERENCES Campuses(CampusID)
);

-- Create Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    SubjectID INT,
    CourseNumber VARCHAR(10) NOT NULL,
    CourseName VARCHAR(255) NOT NULL,
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

-- Create Rooms Table
CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    CampusID INT,
    Building VARCHAR(10),  -- References BuildingCode in Buildings table
    Room VARCHAR(10),
    FOREIGN KEY (CampusID) REFERENCES Campuses(CampusID),
    FOREIGN KEY (Building) REFERENCES Buildings(BuildingCode)
);

-- Create CourseSchedule Table
CREATE TABLE CourseSchedule (
    ScheduleID INT PRIMARY KEY,
    CRN VARCHAR(20) NOT NULL,
    CourseID INT,
    ProfessorID INT,
    RoomID INT,
    AcademicPeriodDesc VARCHAR(50),
    Days VARCHAR(20),
    Time VARCHAR(50),
    MaxEnrollment INT,
    ActualEnrolled INT,
    MeetingTypeDesc VARCHAR(50),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);

-- Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Major VARCHAR(100),
    EnrollmentYear INT,
    StatusID INT,
    FOREIGN KEY (StatusID) REFERENCES StudentStatuses(StatusID)
);

-- Create Enrollments Table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    ScheduleID INT,
    EnrollmentDate DATE,
    Grade VARCHAR(5),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ScheduleID) REFERENCES CourseSchedule(ScheduleID)
);

-- Create ProfessorAssignments Table
CREATE TABLE ProfessorAssignments (
    AssignmentID INT PRIMARY KEY,
    ScheduleID INT,
    ProfessorID INT,
    FOREIGN KEY (ScheduleID) REFERENCES CourseSchedule(ScheduleID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID)
);

-- Optional: Create GradePoints Table for GPA Calculation
CREATE TABLE GradePoints (
    LetterGrade CHAR(2) PRIMARY KEY,
    GradePoint DECIMAL(3, 2)
);

-- Optional: Create GPAHistory Table (for tracking GPA changes over terms)
CREATE TABLE GPAHistory (
    GPAHistoryID INT PRIMARY KEY,
    StudentID INT,
    Term VARCHAR(20),
    GPA DECIMAL(4, 2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
