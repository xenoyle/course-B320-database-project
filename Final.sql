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

INSERT INTO StudentStatuses (StatusName) VALUES 
    ('Incoming'),
    ('Freshman'),
    ('Sophomore'),
    ('Junior'),
    ('Senior'),
    ('Alumni');

-- Create Professors Table
CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY AUTO_INCREMENT,
    ProfessorName VARCHAR(100) NOT NULL
);
INSERT INTO Professors (ProfessorName) VALUES
-- Insert unique professors into the Professors table
INSERT INTO Professors (ProfessorName) VALUES
    ('Abbott, Amy E.'),
    ('Adams, Ann-Marie'),
    ('Alvarez, Beda E.'),
    ('Amsden, Juli'),
    ('Angell, Eliot J.'),
    ('Aranda, Blanca'),
    ('Barnes, Emma M.'),
    ('Barnes, Mollie E.'),
    ('Barth, Sean M.'),
    ('Beachkofsky, Sarah L.'),
    ('Beall, Christina'),
    ('Becker, Shawn K.'),
    ('Berrios, Kayla C.'),
    ('Bessent, Laura M.'),
    ('Bond, Christopher'),
    ('Boniecki, Kelli'),
    ('Borgianini, Stephen A.'),
    ('Bowen, John R.'),
    ('Boyle, William P.'),
    ('Brandt, Kenneth C.'),
    ('Brockington, Djuanna M.'),
    ('Brooks, Gary T.'),
    ('Brugler, Mercer R.'),
    ('Burcin, Laura B.'),
    ('Caldwell, Jill E.'),
    ('Canada, Brian A.'),
    ('Capello, Rebecca K.'),
    ('Carey, Brian E.'),
    ('Catma, Serkan'),
    ('Cavanagh, Kimberly K.'),
    ('Cherry, David L.'),
    ('Ciresi, Lisa V.'),
    ('Cohan, Deborah J.'),
    ('Comitz, Paul H.'),
    ('Antonio, Edward L.'),
    ('Daugherty, Crystal'),
    ('Dawson, Audrey R.'),
    ('Dopf, Kevin C.'),
    ('Draud, Travis E.'),
    ('Dudas, Kimberly'),
    ('Duffy, James A.'),
    ('Edmunds, Morgan P.'),
    ('Erdei, Ronald'),
    ('Evans, Zachary C.'),
    ('Farrell, Carmen B.'),
    ('Farris, Amiri'),
    ('Ferrick, Cathleen P.'),
    ('Foss, Michael E.'),
    ('Fusi, Davide'),
    ('Gibson, Ian B.'),
    ('Gibson, Suzanne L.'),
    ('Gill, Diana'),
    ('Glassman, Tavis J.'),
    ('Golabek, Sue C.'),
    ('Griesse, James M.'),
    ('Guittar, Nicholas A.'),
    ('Haering, Samantha J.'),
    ('Hallisy, Beth H.'),
    ('Hammond, Elizabeth'),
    ('Hampson, Courtney E.'),
    ('Hardin, Jon-Michael'),
    ('Harris, Robert W.'),
    ('Heiens, Richard A.'),
    ('Henz, Thomas'),
    ('Higgins, Luke B.'),
    ('Hoffer, Lauren N.'),
    ('Hogenboom, Timothy J.'),
    ('Hollis, Meldon'),
    ('Holmes, Gloria G.'),
    ('Holt, Jan R.'),
    ('Hoy, Kathryn I.'),
    ('Huemme, Robert C.'),
    ('Huggins, Amy'),
    ('Hull, Sarah D.'),
    ('Hunnicutt, Melodie A.'),
    ('Hutchison, Lynne M.'),
    ('Ingram, Carole T.'),
    ('James, Timothy M.'),
    ('Johnson, Elizabeth L.'),
    ('Jones Williams, Morgin'),
    ('Jones, Amalia C.'),
    ('Jones, Jeffrey'),
    ('Kiernan, Katrina'),
    ('Kilgore, Robert E.'),
    ('Knapp, Sandra K.'),
    ('Knop, Brian'),
    ('Krebs, Salome L.'),
    ('Kuehn, Joanne'),
    ('Kunkle, Amy C.'),
    ('Lahar, Cindy J.'),
    ('Landrum, Robert H.'),
    ('Lawson, Alayne F.'),
    ('Layton, Shawn'),
    ('Leadem, John J.'),
    ('Leaphart, Amy E.'),
    ('Leblanc, Jeffrey D.'),
    ('Lefavi, Robert G.'),
    ('Lejeune, Danelle'),
    ('Lewis, Thomas E.'),
    ('Liang, Xuwei'),
    ('Logue, Lindsey N.'),
    ('Lovell, Laurie L.'),
    ('Madden, Kathryn R.'),
    ('Malphrus, P. Ellen'),
    ('Manor, Jalen M.'),
    ('Marlowe, Bruce A.'),
    ('Maxwell, Mary K.'),
    ('McClure, Ellen C.'),
    ('McCombs, Kelly L.'),
    ('McCoy, Erin'),
    ('McQuillen, Jeffrey P.'),
    ('Meriwether, Anna T.'),
    ('Messick, Kyle J.'),
    ('Mitra, Aditi'),
    ('Montie, Eric W.'),
    ('Morgan, Daniel'),
    ('Morris, Olivia S.'),
    ('Mundey, Peter J.'),
    ('Nadeau, Angela L.'),
    ('Nelson, Benjamin J.'),
    ('Connor, Teagan A.'),
    ('Osbaldiston, Richard J.'),
    ('Owen, Sarah'),
    ('Pate, George J.'),
    ('Pawelek, Lukasz D.'),
    ('Pedersen, Andrew'),
    ('Peery, Angela'),
    ('Petrucci, Joan M.'),
    ('Pettay, Daniel T.'),
    ('Ponce, Chelsea M.'),
    ('Poore, Daphne M.'),
    ('Powell, Alyssa B.'),
    ('Prestby, Kelly'),
    ('Ptacin, Anna C.'),
    ('Raley, Jessica A.'),
    ('Reibel, Melody D.'),
    ('Ricardo, Elizabeth'),
    ('Ritchie, Kimberly B.'),
    ('Rizzi, Mary C.'),
    ('Roberts, Summer C.'),
    ('Robinson, Dawn M.'),
    ('Runyan, Catherine F.'),
    ('Russell, Nadine'),
    ('Sams, Laurel A.'),
    ('Sanders, Manuel J.'),
    ('Sawyer, Caroline'),
    ('Seabrook, Michelene R.'),
    ('Sevim, Volkan'),
    ('Shinn, James M.'),
    ('Shroyer, Ashley R.'),
    ('Sidletsky, James'),
    ('Simon, Paul G.'),
    ('Skees, Murray W.'),
    ('Smith, Bradley A.'),
    ('Snoddy, Catherine'),
    ('Staton, Joseph L.'),
    ('Stuart, Aurel E.'),
    ('Sturgis, Cynthia L.'),
    ('Swift, Peter E.'),
    ('Swofford, Sarah C.'),
    ('Thomas, Najmah'),
    ('Thornton, Heather L.'),
    ('Thrasher, William J.'),
    ('Tompkins, Renarta H.'),
    ('Vaillancourt, Rose'),
    ('Vargo, Lori J.'),
    ('Villena-Alvarez, Juanita I.'),
    ('Violette, Jayne L.'),
    ('Weatherhead, Nora K.'),
    ('Webb, Emily M.'),
    ('Weir, Carol A.'),
    ('Whewell, Aubrey'),
    ('Willard, Jeremy'),
    ('Woods, Gabriel L.'),
    ('Wright, Brandon J.'),
    ('Zhang, Xiaomei'),
    ('Zientek, Patricia'),
    ('Zinn, David F.');


-- Create Subjects Table
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY AUTO_INCREMENT,
    Subject VARCHAR(10) NOT NULL,
    SubjectDescription VARCHAR(255)
);

INSERT INTO Subjects (Subject, SubjectDescription) VALUES
    ('ACCT', 'Accounting'),
    ('AFAM', 'African American Studies'),
    ('ANTH', 'Anthropology'),
    ('ARTE', 'Art Education'),
    ('ARTH', 'Art History'),
    ('ARTS', 'Art Studio'),
    ('ASTR', 'Astronomy'),
    ('BADM', 'Business Administration'),
    ('BIOL', 'Biology'),
    ('CHEM', 'Chemistry'),
    ('COMM', 'Communications'),
    ('CPLT', 'Comparative Literature'),
    ('CSCI', 'Computer Science'),
    ('CSXE', 'Computer Science Extension'),
    ('ECON', 'Economics'),
    ('EDCI', 'Education Instruction'),
    ('EDEC', 'Early Childhood Education'),
    ('EDEL', 'Elementary Education'),
    ('EDEX', 'Special Education'),
    ('EDFO', 'Foundations of Education'),
    ('EDME', 'Mathematics Education'),
    ('EDPH', 'Physical Education'),
    ('EDPY', 'Educational Psychology'),
    ('EDRD', 'Reading Education'),
    ('EDRM', 'Educational Research'),
    ('ENGL', 'English'),
    ('ENGR', 'Engineering'),
    ('ENTR', 'Entrepreneurship'),
    ('FREN', 'French'),
    ('GEOG', 'Geography'),
    ('GERM', 'German'),
    ('GLST', 'Global Studies'),
    ('HIST', 'History'),
    ('HMSV', 'Human Services'),
    ('HONS', 'Honors College'),
    ('HPRO', 'Health Promotion'),
    ('HRTM', 'Hospitality and Tourism Management'),
    ('IDST', 'Interdisciplinary Studies'),
    ('INTL', 'International Studies'),
    ('ISAT', 'Information Systems and Technology'),
    ('LANG', 'Languages'),
    ('LBST', 'Liberal Studies'),
    ('LING', 'Linguistics'),
    ('MART', 'Media Arts'),
    ('MATH', 'Mathematics'),
    ('MGMT', 'Management'),
    ('MGSC', 'Management Science'),
    ('MKTG', 'Marketing'),
    ('MSCI', 'Military Science'),
    ('MUSC', 'Music'),
    ('NURS', 'Nursing'),
    ('PEDU', 'Physical Education'),
    ('PHIL', 'Philosophy'),
    ('PHYS', 'Physics'),
    ('POLI', 'Political Science'),
    ('PSYC', 'Psychology'),
    ('PUBH', 'Public Health'),
    ('RELG', 'Religion'),
    ('SOCY', 'Sociology'),
    ('SPAN', 'Spanish'),
    ('SPRT', 'Sports Management'),
    ('STAT', 'Statistics'),
    ('THEA', 'Theatre'),
    ('UNIV', 'University Studies'),
    ('USC', 'University of South Carolina');

-- Create Buildings table
CREATE TABLE Buildings (
    BuildingID INT PRIMARY KEY AUTO_INCREMENT,
    CampusID INT,
    BuildingCode VARCHAR(10),
    BuildingName VARCHAR(255),
    FOREIGN KEY (CampusID) REFERENCES Campuses(CampusID)
);
INSERT INTO Buildings (CampusID, BuildingCode, BuildingName) VALUES
    (1, 'CMPCCTR', 'Campus Center'),
    (1, 'HARG', 'Hargray Building'),
    (1, 'LIBR2', 'Library Building'),
    (1, 'RECCTR', 'Recreation Center'),
    (1, 'SCITEC', 'Science & Technology Building'),
    (2, 'ARTS', 'Art Studio'),
    (2, 'CFA', 'Center for the Arts'),
    (2, 'MSCI', 'Marine Science Building'),
    (2, 'NWCSTL', 'New Castle Building'),
    (2, 'VAD', 'Visual Arts & Design Building'),
    (2, '1100BO', '1100 Boundary Street'),
    (3, 'HHHC', 'Hilton Head Hospitality Center');

-- Create Campuses Table
CREATE TABLE Campuses (
    CampusID INT PRIMARY KEY AUTO_INCREMENT,
    CampusName VARCHAR(100) NOT NULL
);
INSERT INTO Campuses (CampusName, Address) VALUES
    ('Bluffton Campus', '1 University Blvd., Bluffton, SC 29909'),
    ('Beaufort Campus', '801 Carteret Street, Beaufort, SC 29902'),
    ('Hilton Head Island Campus', '1 Sand Shark Drive, Hilton Head Island, SC 29928');

-- Create Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    SubjectID INT,
    CourseNumber VARCHAR(10) NOT NULL,
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

INSERT INTO Rooms (CampusID, Building, Room) VALUES
    -- Bluffton Campus (CampusID = 1)
    (1, 'CMPCCTR', '106A'),
    (1, 'CMPCCTR', '105'),
    (1, 'HARG', '270'),
    (1, 'LIBR2', '207'),
    (1, 'LIBR2', '213'),
    (1, 'RECCTR', '118'),
    (1, 'RECCTR', '114'),
    (1, 'RECCTR', '222'),
    (1, 'RECCTR', '260'),
    (1, 'SCITEC', '102'),
    
    -- Beaufort Campus (CampusID = 2)
    (2, 'ARTS', '101'),
    (2, 'CFA', '102'),
    (2, 'MSCI', '104'),
    (2, 'NWCSTL', '200'),
    (2, 'VAD', '112'),
    (2, '1100BO', '1'),
    (2, '1100BO', '111'),
    (2, 'NWCSTL', '205'),
    
    -- Hilton Head Island Campus (CampusID = 3)
    (3, 'HHHC', '207'),
    (3, 'HHHC', '213'),
    (3, 'HHHC', '102'),
    (3, 'HHHC', '202'),
    (3, 'HHHC', '302');

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