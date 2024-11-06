-- Drop Tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS CourseSchedule;
DROP TABLE IF EXISTS Buildings;
DROP TABLE IF EXISTS Rooms;
DROP TABLE IF EXISTS Campuses;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Subjects;
DROP TABLE IF EXISTS Professors;
DROP TABLE IF EXISTS StudentStatuses;

-- Create Database
CREATE DATABASE IF NOT EXISTS UniversityCourses;
USE UniversityCourses;

-- Create StudentStatuses Table
CREATE TABLE StudentStatuses (
    StatusID INT PRIMARY KEY AUTO_INCREMENT,
    StatusName VARCHAR(20) NOT NULL
);


-- Create Professors Table
CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY AUTO_INCREMENT,
    ProfessorName VARCHAR(100) NOT NULL
);

-- Create Subjects Table
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY AUTO_INCREMENT,
    Subject VARCHAR(10) NOT NULL,
    SubjectDescription VARCHAR(255)
);

-- Create Campuses Table
CREATE TABLE Campuses (
    CampusID INT PRIMARY KEY AUTO_INCREMENT,
    CampusName VARCHAR(100) NOT NULL,
    Address VARCHAR(255) NOT NULL
);

-- Create Buildings table
CREATE TABLE Buildings (
    BuildingID INT PRIMARY KEY AUTO_INCREMENT,
    CampusID INT,
    BuildingCode VARCHAR(10),
    BuildingName VARCHAR(255),
    FOREIGN KEY (CampusID) REFERENCES Campuses(CampusID)
);

-- Create Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    SubjectID INT,
    CourseNumber VARCHAR(10) NOT NULL,
    CourseName VARCHAR(255) NOT NULL,
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

-- Create Rooms Table
CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY AUTO_INCREMENT,
    CampusID INT,
    Building VARCHAR(10),  -- References BuildingCode in Buildings table
    Room VARCHAR(10),
    FOREIGN KEY (CampusID) REFERENCES Campuses(CampusID),
    FOREIGN KEY (Building) REFERENCES Buildings(BuildingCode)
);

-- Create Course Schedule Table
CREATE TABLE CourseSchedule (
    ScheduleID INT PRIMARY KEY AUTO_INCREMENT,
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

-- Create Students Table with StatusID as foreign key
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
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
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    ScheduleID INT,
    EnrollmentDate DATE,
    Grade VARCHAR(5),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ScheduleID) REFERENCES CourseSchedule(ScheduleID)
);
-- Create ProfessorAssignments Table
CREATE TABLE ProfessorAssignments (
    AssignmentID INT PRIMARY KEY AUTO_INCREMENT,
    ScheduleID INT,
    ProfessorID INT,
    FOREIGN KEY (ScheduleID) REFERENCES CourseSchedule(ScheduleID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID)
);
