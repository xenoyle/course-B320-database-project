CREATE DATABASE UniversityCoursesDB;
USE UniversityCoursesDB;

-- Drop existing tables if they exist
DROP TABLE IF EXISTS GPAHistory;
DROP TABLE IF EXISTS GradePoints;
DROP TABLE IF EXISTS ProfessorAssignments;
DROP TABLE IF EXISTS Advisors;
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Terms;
DROP TABLE IF EXISTS CourseSchedule;
DROP TABLE IF EXISTS Rooms;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Buildings;
DROP TABLE IF EXISTS Campuses;
DROP TABLE IF EXISTS Subjects;
DROP TABLE IF EXISTS Professors;
DROP TABLE IF EXISTS StudentStatuses;
DROP TABLE IF EXISTS CourseType;

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
    BuildingCode VARCHAR(10),
    BuildingName VARCHAR(255)
);

-- Create Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    SubjectID INT,
    CourseNumber VARCHAR(10) NOT NULL,
    CourseName VARCHAR(255) NOT NULL,
    Credits INT DEFAULT 3,
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

-- Create Rooms Table
CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    CampusID INT,
    BuildingID INT,
    Room VARCHAR(10),
    FOREIGN KEY (CampusID) REFERENCES Campuses(CampusID),
    FOREIGN KEY (BuildingID) REFERENCES Buildings(BuildingID)
);

-- Create Terms Table
CREATE TABLE Terms (
    TermID INT IDENTITY(1,1) PRIMARY KEY,
    TermName VARCHAR(50) NOT NULL,
    TermYear INT NOT NULL
);

-- Create CourseType Table
CREATE TABLE CourseType (
    CourseTypeID INT PRIMARY KEY,
    CourseTypeName VARCHAR(20) NOT NULL
);

-- Create CourseSchedule Table
CREATE TABLE CourseSchedule (
    ScheduleID INT PRIMARY KEY,
    CRN VARCHAR(20) NOT NULL,
    CourseID INT,
    ProfessorID INT,
    RoomID INT,
    TermID INT,
    Days VARCHAR(20),
    Time VARCHAR(50),
    CourseTypeID INT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID),
    FOREIGN KEY (TermID) REFERENCES Terms(TermID),
    FOREIGN KEY (CourseTypeID) REFERENCES CourseType(CourseTypeID)
);

-- Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Major INT,
    EnrollmentYear INT,
    StatusID INT,
    FOREIGN KEY (StatusID) REFERENCES StudentStatuses(StatusID)
);

-- Create Enrollments Table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    ScheduleID INT,
    EnrollmentDate DATE,
    Grade VARCHAR(5),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ScheduleID) REFERENCES CourseSchedule(ScheduleID)
);

-- Create GPAHistory Table
CREATE TABLE GPAHistory (
    GPAHistoryID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    TermID INT,
    GPA DECIMAL(4, 2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (TermID) REFERENCES Terms(TermID)
);

-- Create GradePoints Table
CREATE TABLE GradePoints (
    LetterGrade CHAR(2) PRIMARY KEY,
    GradePoint DECIMAL(3, 2)
);

-- Create Advisors Table
CREATE TABLE Advisors (
    AdvisorID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    ProfessorID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID)
);

-- Create ProfessorAssignments Table
CREATE TABLE ProfessorAssignments (
    AssignmentID INT PRIMARY KEY,
    ScheduleID INT,
    ProfessorID INT,
    FOREIGN KEY (ScheduleID) REFERENCES CourseSchedule(ScheduleID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID)
);
