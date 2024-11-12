INSERT INTO StudentStatuses (StatusID, StatusName) VALUES 
    (1, 'Incoming'),
    (2, 'Freshman'),
    (3, 'Sophomore'),
    (4, 'Junior'),
    (5, 'Senior'),
    (6, 'Alumni');

INSERT INTO CourseType (CourseTypeID, CourseTypeName) VALUES
    (1, 'Class'),
    (2, 'Exam'),
    (3, 'Lab'),
    (4, 'Web');

INSERT INTO Campuses (CampusID, CampusName, Address) VALUES
    (1, 'Bluffton Campus', '1 University Blvd., Bluffton, SC 29909'),
    (2, 'Beaufort Campus', '801 Carteret Street, Beaufort, SC 29902'),
    (3, 'Hilton Head Island Campus', '1 Sand Shark Drive, Hilton Head Island, SC 29928');

INSERT INTO Buildings (BuildingID, BuildingCode, BuildingName) VALUES
    (1, 'CMPCTR', 'Campus Center'),
    (2, 'HARG', 'Hargray Building'),
    (3, 'LIBR2', 'Library Building'),
    (4, 'RECCTR', 'Recreation Center'),
    (5, 'SCITEC', 'Science & Technology Building'),
    (6, 'ARTS', 'Art Studio'),
    (7, 'CFA', 'Center for the Arts'),
    (8, 'MSCIE', 'Marine Science Building'),
    (9, 'NWCSTL', 'New Castle Building'),
    (10, 'VAD', 'Visual Arts & Design Building'),
    (11, '1100BO', '1100 Boundary Street'),
    (12, 'HHHC', 'Hilton Head Hospitality Center');


INSERT INTO Rooms (RoomID, CampusID, BuildingID, Room) VALUES
    -- Bluffton Campus (CampusID = 1)
    (1, 1, 1, '105'),
    (2, 1, 1, '106A'),
    (3, 1, 1, '106C'),
    (4, 1, 1, '113'),
    (5, 1, 1, '148'),

    (6, 1, 2, '156'),
    (7, 1, 2, '158'),
    (8, 1, 2, '159'),
    (9, 1, 2, '160'),
    (10, 1, 2, '160B'),
    (11, 1, 2, '162'),
    (12, 1, 2, '204'),
    (13, 1, 2, '260'),
    (14, 1, 2, '270'),
    (15, 1, 2, '271'),
    (16, 1, 2, '274'),
    (17, 1, 2, '275'),
    (18, 1, 2, '276'),
    (19, 1, 2, '277'),
    (20, 1, 2, '278'),

    (21, 1, 3, '144'),
    (22, 1, 3, '147'),
    (23, 1, 3, '207'),
    (24, 1, 3, '213'),
    (25, 1, 3, '219'),
    (26, 1, 3, '237'),
    (27, 1, 3, '238'),
    (28, 1, 3, '241'),
    (29, 1, 3, '243'),
    (30, 1, 3, '267'),

    (31, 1, 4, '1'),

    (32, 1, 5, '102'),
    (33, 1, 5, '114'),
    (34, 1, 5, '118'),
    (35, 1, 5, '122'),
    (36, 1, 5, '123'),
    (37, 1, 5, '132'),
    (38, 1, 5, '136'),
    (39, 1, 5, '205'),
    (40, 1, 5, '222'),
    (41, 1, 5, '223'),
    (42, 1, 5, '231'),
    (43, 1, 5, '260'),
    (44, 1, 5, '261'),
    (45, 1, 5, '263'),
    (46, 1, 5, '277'),
    
    -- Beaufort Campus (CampusID = 2)
    (47, 2, 6, '101'),

    (48, 2, 7, '100'),
    (49, 2, 7, '101'), 
    (50, 2, 7, '102'), 
    (51, 2, 7, '103'), 
    (52, 2, 7, '113'), 
    (53, 2, 7, '116'), 
    (54, 2, 7, '118'), 
    (55, 2, 7, '201'), 
    (56, 2, 7, '202'), 
    (57, 2, 7, '203'), 
    (58, 2, 7, '204'), 
    (59, 2, 7, '205'), 
    (60, 2, 7, '206'),

    (61, 2, 8, '101'),
    (62, 2, 8, '102'),
    (63, 2, 8, '201'),

    (64, 2, 9, '1'),

    (65, 2, 10, '112'),
    (66, 2, 10, '123'),
    (67, 2, 10, '200'),

    (68, 2, 11, '104'),
    (69, 2, 11, '113'),
    
    -- Hilton Head Island Campus (CampusID = 3)
    (70, 3, 12, '103'),
    (71, 3, 12, '104'),
    (72, 3, 12, '114'),
    (73, 3, 12, '115'),
    (74, 3, 12, '202'),
    (75, 3, 12, '204'),
    (76, 3, 12, '205'),
    (77, 3, 12, '207'),
    (78, 3, 12, '213'),
    (79, 3, 12, '214');


INSERT INTO Students (StudentID, FirstName, LastName, Email, Major, EnrollmentYear, StatusID) VALUES
    /* INCOMING */
    -- CSCI
    (1, 'Aiden', 'Morgan','amorgan@email.uscb.edu',13,2025,1),
    (2, 'Emma', 'Young','eyoung@email.uscb.edu',13,2025,1),
    (3, 'Jacob', 'Holland','jholland@email.uscb.edu',13,2025,1),
    (4, 'Olivia', 'Blake','oblake@email.uscb.edu',13,2025,1),
    (5, 'Ethan', 'Brooks','ebrooks@email.uscb.edu',13,2025,1),
    (6, 'Sophia', 'Tran','stran@email.uscb.edu',13,2025,1),
    (7, 'William', 'Liu','wliu@email.uscb.edu',13,2025,1),
    (8, 'Isabella', 'Shah','ishah@email.uscb.edu',13,2025,1),
    (9, 'Lucas', 'Yoon','lyoon@email.uscb.edu',13,2025,1),
    (10, 'Ava', 'Chen','achen@email.uscb.edu',13,2025,1),
    -- ISAT
    (11, 'Liam', 'Carter','lcarter@email.uscb.edu',40,2025,1),
    (12, 'Mia', 'Baker','mbaker@email.uscb.edu',40,2025,1),
    (13, 'Noah', 'King','nking@email.uscb.edu',40,2025,1),
    (14, 'Isabella', 'Choi','ichoi@email.uscb.edu',40,2025,1),
    (15, 'Daniel', 'Singh','dsingh@email.uscb.edu',40,2025,1),
    (16, 'Emma', 'Kumar','ekumar@email.uscb.edu',40,2025,1),
    (17, 'Sebastian', 'Ortiz','sortiz@email.uscb.edu',40,2025,1),
    (18, 'Olivia', 'Navarro','onavarro@email.uscb.edu',40,2025,1),
    (19, 'Mateo', 'Pham','mpham@email.uscb.edu',40,2025,1),
    (20, 'Ava', 'Ali','aali@email.uscb.edu',40,2025,1),
    -- PSYC
    (21, 'Michael', 'Kim','mkim@email.uscb.edu',56,2025,1),
    (22, 'Emily', 'Peters','epeters@email.uscb.edu',56,2025,1),
    (23, 'Alexander', 'Lopez','alopez@email.uscb.edu',56,2025,1),
    (24, 'Isabella', 'Rao','irao@email.uscb.edu',56,2025,1),
    (25, 'Joshua', 'Park','jpark@email.uscb.edu',56,2025,1),

    /* FRESHMEN */
    -- CSCI
    (26, 'David', 'Nguyen','dnguyen@email.uscb.edu',13,2024,2),
    (27, 'Avery', 'Patel','apatel@email.uscb.edu',13,2024,2),
    (28, 'Owen', 'Sullivan','osullivan@email.uscb.edu',13,2024,2),
    (29, 'Aubrey', 'Greene','agreene@email.uscb.edu',13,2024,2),
    (30, 'Ethan', 'Foster','efoster@email.uscb.edu',13,2024,2),
    (31, 'Liam', 'Dixon','ldixon@email.uscb.edu',13,2024,2),
    (32, 'Ava', 'Vargas','avargas@email.uscb.edu',13,2024,2),
    (33, 'Noah', 'Larsen','nlarsen@email.uscb.edu',13,2024,2),
    (34, 'Isabella', 'Chavez','ichavez@email.uscb.edu',13,2024,2),
    (35, 'Ethan', 'Hoffman','ehoffman@email.uscb.edu',13,2024,2),
    -- ISAT
    (36, 'Sophia', 'Moreno','smoreno@email.uscb.edu',40,2024,2),
    (37, 'Logan', 'Silva','lsilva@email.uscb.edu',40,2024,2),
    (38, 'Isabella', 'Rivera','irivera@email.uscb.edu',40,2024,2),
    (39, 'Mason', 'Cruz','mcruz@email.uscb.edu',40,2024,2),
    (40, 'Abigail', 'Flores','aflores@email.uscb.edu',40,2024,2),
    (41, 'Olivia', 'Torres','otorres@email.uscb.edu',40,2024,2),
    (42, 'Alexander', 'Gomez','agomez@email.uscb.edu',40,2024,2),
    (43, 'Mia', 'Ruiz','mruiz@email.uscb.edu',40,2024,2),
    (44, 'Michael', 'Delgado','mdelgado@email.uscb.edu',40,2024,2),
    (45, 'Emily', 'Sanders','esanders@email.uscb.edu',40,2024,2),
    -- PSYC
    (46, 'Jacob', 'Webb','jwebb@email.uscb.edu',56,2024,2),
    (47, 'Emma', 'Garcia','egarcia@email.uscb.edu',56,2024,2),
    (48, 'William', 'Beck','wbeck@email.uscb.edu',56,2024,2),
    (49, 'Mia', 'Turner','mturner@email.uscb.edu',56,2024,2),
    (50, 'Lucas', 'Graham','lgraham@email.uscb.edu',56,2024,2),

    /* SOPHOMORES */
    -- CSCI
    (51, 'Daniel', 'Kim','dkim@email.uscb.edu',13,2023,3),
    (52, 'Sophia', 'Stone','sstone@email.uscb.edu',13,2023,3),
    (53, 'Sebastian', 'Cross','scross@email.uscb.edu',13,2023,3),
    (54, 'Abigail', 'Hayes','ahayes@email.uscb.edu',13,2023,3),
    (55, 'Logan', 'Reed','lreed@email.uscb.edu',13,2023,3),
    (56, 'Emily', 'Castro','ecastro@email.uscb.edu',13,2023,3),
    (57, 'James', 'Daniels','jdaniels@email.uscb.edu',13,2023,3),
    (58, 'Avery', 'Fisher','afisher@email.uscb.edu',13,2023,3),
    (59, 'Grace', 'Simmons','gsimmons@email.uscb.edu',13,2023,3),
    (60, 'Henry', 'Patterson','hpatterson@email.uscb.edu',13,2023,3),
    -- ISAT
    (61, 'Sophia', 'Morales','smorales@email.uscb.edu',40,2023,3),
    (62, 'Benjamin', 'Harper','bharper@email.uscb.edu',40,2023,3),
    (63, 'Mason', 'Reyes','mreyes@email.uscb.edu',40,2023,3),
    (64, 'Ella', 'Armstrong','earmstrong@email.uscb.edu',40,2023,3),
    (65, 'Oliver', 'Gutierrez','ogutierrez@email.uscb.edu',40,2023,3),
    (66, 'Ethan', 'Caldwell','ecaldwell@email.uscb.edu',40,2023,3),
    (67, 'Amelia', 'Ramirez','aramirez@email.uscb.edu',40,2023,3),
    (68, 'Logan', 'Bowman','lbowman@email.uscb.edu',40,2023,3),
    (69, 'Aria', 'Kennedy','akennedy@email.uscb.edu',40,2023,3),
    (70, 'Evan', 'Bates','ebates@email.uscb.edu',40,2023,3),
    -- PSYC
    (71, 'Emma', 'Moss','emoss@email.uscb.edu',56,2023,3),
    (72, 'Joshua', 'Cook','jcook@email.uscb.edu',56,2023,3),
    (73, 'Avery', 'Adams','aadams@email.uscb.edu',56,2023,3),
    (74, 'Owen', 'Russell','orussell@email.uscb.edu',56,2023,3),
    (75, 'Aubrey', 'Bryant','abryant@email.uscb.edu',56,2023,3),

    /* JUNIORS */
    -- CSCI
    (76, 'Olivia', 'Stevens','ostevens@email.uscb.edu',13,2022,4),
    (77, 'Alexander', 'Evans','aevans@email.uscb.edu',13,2022,4),
    (78, 'Mia', 'Carter','mcarter@email.uscb.edu',13,2022,4),
    (79, 'Michael', 'Peterson','mpeterson@email.uscb.edu',13,2022,4),
    (80, 'Emily', 'Long','elong@email.uscb.edu',13,2022,4),
    (81, 'David', 'Phillips','dphillips@email.uscb.edu',13,2022,4),
    (82, 'Sofia', 'Ross','sross@email.uscb.edu',13,2022,4),
    (83, 'Lucas', 'Harrison','lharrison@email.uscb.edu',13,2022,4),
    (84, 'Lily', 'Bryant','lbryant@email.uscb.edu',13,2022,4),
    (85, 'Ryan', 'Ford','rford@email.uscb.edu',13,2022,4),
    -- ISAT
    (86, 'Mason', 'Ward','mward@email.uscb.edu',40,2022,4),
    (87, 'Lily', 'Griffith','lgriffith@email.uscb.edu',40,2022,4),
    (88, 'Jacob', 'Ellis','jellis@email.uscb.edu',40,2022,4),
    (89, 'Emma', 'Ferguson','eferguson@email.uscb.edu',40,2022,4),
    (90, 'Logan', 'Garrett','lgarrett@email.uscb.edu',40,2022,4),
    (91, 'Isabella', 'Price','iprice@email.uscb.edu',40,2022,4),
    (92, 'Ethan', 'Jacobs','ejacobs@email.uscb.edu',40,2022,4),
    (93, 'Benjamin', 'Barnes','bbarnes@email.uscb.edu',40,2022,4),
    (94, 'Alexander', 'Schmidt','aschmidt@email.uscb.edu',40,2022,4),
    (95, 'Sophia', 'Richards','srichards@email.uscb.edu',40,2022,4),
    -- PSYC
    (96, 'Jacob', 'Sanchez','jsanchez@email.uscb.edu',56,2022,4),
    (97, 'Abigail', 'Torres','atorres@email.uscb.edu',56,2022,4),
    (98, 'Lucas', 'Scott','lscott@email.uscb.edu',56,2022,4),
    (99, 'Sophia', 'Howard','showard@email.uscb.edu',56,2022,4),
    (100, 'Mia', 'Coleman','mcoleman@email.uscb.edu',56,2022,4),

    /* SENIORS */
    -- CSCI
    (101, 'Nathan', 'Morgan','nmorgan@email.uscb.edu',13,2021,5),
    (102, 'Amelia', 'Butler','abutler@email.uscb.edu',13,2021,5),
    (103, 'Isaac', 'Cox','icox@email.uscb.edu',13,2021,5),
    (104, 'Charlotte', 'Diaz','cdiaz@email.uscb.edu',13,2021,5),
    (105, 'Grace', 'Rogers','grogers@email.uscb.edu',13,2021,5),
    (106, 'Gabriel', 'Jordan','gjordan@email.uscb.edu',13,2021,5),
    (107, 'Ella', 'Perry','eperry@email.uscb.edu',13,2021,5),
    (108, 'Henry', 'Jenkins','hjenkins@email.uscb.edu',13,2021,5),
    (109, 'Sebastian', 'Fleming','sfleming@email.uscb.edu',13,2021,5),
    (110, 'Scarlett', 'Dean','sdean@email.uscb.edu',13,2021,5),
    -- ISAT
    (111, 'Mila', 'Henderson','mhenderson@email.uscb.edu',40,2021,5),
    (112, 'Zoe', 'Nash','znash@email.uscb.edu',40,2021,5),
    (113, 'Julian', 'Reid','jreid@email.uscb.edu',40,2021,5),
    (114, 'Ellie', 'Owens','eowens@email.uscb.edu',40,2021,5),
    (115, 'Levi', 'Mendoza','lmendoza@email.uscb.edu',40,2021,5),
    (116, 'Violet', 'Fox','vfox@email.uscb.edu',40,2021,5),
    (117, 'Jack', 'Gray','jgray@email.uscb.edu',40,2021,5),
    (118, 'Maya', 'Hughes','mhughes@email.uscb.edu',40,2021,5),
    (119, 'Liam', 'Watson','lwatson@email.uscb.edu',40,2021,5),
    (120, 'Lily', 'Bishop','lbishop@email.uscb.edu',40,2021,5),
    -- PSYC
    (121, 'Aubrey', 'Sutton','asutton@email.uscb.edu',56,2021,5),
    (122, 'Daniel', 'Wade','dwade@email.uscb.edu',56,2021,5),
    (123, 'Evelyn', 'Shaw','eshaw@email.uscb.edu',56,2021,5),
    (124, 'Isaiah', 'Rich','irich@email.uscb.edu',56,2021,5),
    (125, 'Sophia', 'Fowler','sfowler@email.uscb.edu',56,2021,5),

    /* ALUMNI */
    -- CSCI
    (126, 'Benjamin', 'Walker','bwalker@email.uscb.edu',13,2020,6),
    (127, 'Ava', 'Rogers','arogers@email.uscb.edu',13,2020,6),
    (128, 'Henry', 'Long','hlong@email.uscb.edu',13,2020,6),
    (129, 'Olivia', 'Mitchell','omitchell@email.uscb.edu',13,2020,6),
    (130, 'Liam', 'Brooks','lbrooks@email.uscb.edu',13,2019,6),
    (131, 'Emily', 'Howard','ehoward@email.uscb.edu',13,2019,6),
    (132, 'Noah', 'Foster','nfoster@email.uscb.edu',13,2019,6),
    (133, 'Sophia', 'Reed','sreed@email.uscb.edu',13,2019,6),
    (134, 'James', 'Clark','jclark@email.uscb.edu',13,2018,6),
    (135, 'Mia', 'Ramos','mramos@email.uscb.edu',13,2018,6),
    -- ISAT
    (136, 'Ethan', 'Murphy','emurphy@email.uscb.edu',40,2020,6),
    (137, 'Lily', 'Price','lprice@email.uscb.edu',40,2020,6),
    (138, 'Alexander', 'Jenkins','ajenkins@email.uscb.edu',40,2020,6),
    (139, 'Ella', 'Barnes','ebarnes@email.uscb.edu',40,2020,6),
    (140, 'Jackson', 'Sanders','jsanders@email.uscb.edu',40,2019,6),
    (141, 'Avery', 'Wright','awright@email.uscb.edu',40,2019,6),
    (142, 'Grace', 'Cook','gcook@email.uscb.edu',40,2019,6),
    (143, 'Mason', 'Bell','mbell@email.uscb.edu',40,2019,6),
    (144, 'Emily', 'Gray','egray@email.uscb.edu',40,2018,6),
    (145, 'Lucas', 'Hayes','lhayes@email.uscb.edu',40,2018,6),
    -- PSYC
    (146, 'Sofia', 'Henderson','shenderson@email.uscb.edu',56,2020,6),
    (147, 'Ryan', 'Bennett','rbennett@email.uscb.edu',56,2020,6),
    (148, 'Zoe', 'Simpson','zsimpson@email.uscb.edu',56,2019,6),
    (149, 'Joe', 'Harkman','jharkman@email.uscb.edu',56,2019,6),
    (150, 'Aiden', 'Rivera','arivera@email.uscb.edu',56,2018,6);

INSERT INTO GradePoints (LetterGrade, GradePoint) VALUES
    ('A', 4.00),
    ('A-', 3.70),
    ('B+', 3.30),
    ('B', 3.00),
    ('B-', 2.70),
    ('C+', 2.30),
    ('C', 2.00),
    ('C-', 1.70),
    ('D+', 1.30),
    ('D', 1.00),
    ('D-', 0.70),
    ('F', 0.00);

INSERT INTO Enrollments (StudentID, ScheduleID, EnrollmentDate, Grade) VALUES
    (1, 1040, '2024-08-15', NULL), -- Aiden Morgan enrolled in CSCI B150
    (1, 650, '2024-08-15', NULL), -- Aiden Morgan enrolled in MATH B111
    (1, 247, '2024-08-15', NULL), -- Aiden Morgan enrolled in ENGL B101
    (1, 716, '2024-08-15', NULL), -- Aiden Morgan enrolled in GERM B101
    (1, 1004, '2024-08-15', NULL), -- Aiden Morgan enrolled in COMM B201

    (2, 1040, '2024-08-15', NULL), -- Emma Young enrolled in CSCI B150
    (2, 650, '2024-08-15', NULL), -- Emma Young enrolled in MATH B111
    (2, 247, '2024-08-15', NULL), -- Emma Young enrolled in ENGL B101
    (2, 716, '2024-08-15', NULL), -- Emma Young enrolled in GERM B101
    (2, 1004, '2024-08-15', NULL), -- Emma Young enrolled in COMM B201

    (3, 1040, '2024-08-15', NULL), -- Jacob Holland enrolled in CSCI B150
    (3, 650, '2024-08-15', NULL), -- Jacob Holland enrolled in MATH B111
    (3, 247, '2024-08-15', NULL), -- Jacob Holland enrolled in ENGL B101
    (3, 716, '2024-08-15', NULL), -- Jacob Holland enrolled in GERM B101
    (3, 1004, '2024-08-15', NULL), -- Jacob Holland enrolled in COMM B201

    (4, 1040, '2024-08-15', NULL), -- Olivia Blake enrolled in CSCI B150
    (4, 650, '2024-08-15', NULL), -- Olivia Blake enrolled in MATH B111
    (4, 247, '2024-08-15', NULL), -- Olivia Blake enrolled in ENGL B101
    (4, 716, '2024-08-15', NULL), -- Olivia Blake enrolled in GERM B101
    (4, 1004, '2024-08-15', NULL), -- Olivia Blake enrolled in COMM B201

    (5, 1040, '2024-08-15', NULL), -- Ethan Brooks enrolled in CSCI B150
    (5, 650, '2024-08-15', NULL), -- Ethan Brooks enrolled in MATH B111
    (5, 247, '2024-08-15', NULL), -- Ethan Brooks enrolled in ENGL B101
    (5, 716, '2024-08-15', NULL), -- Ethan Brooks enrolled in GERM B101
    (5, 1004, '2024-08-15', NULL), -- Ethan Brooks enrolled in COMM B201

    (6, 1040, '2024-08-15', NULL), -- Sophia Tran enrolled in CSCI B150
    (6, 650, '2024-08-15', NULL), -- Sophia Tran enrolled in MATH B111
    (6, 247, '2024-08-15', NULL), -- Sophia Tran enrolled in ENGL B101
    (6, 716, '2024-08-15', NULL), -- Sophia Tran enrolled in GERM B101
    (6, 1004, '2024-08-15', NULL), -- Sophia Tran enrolled in COMM B201

    (7, 1040, '2024-08-15', NULL), -- William Liu enrolled in CSCI B150
    (7, 650, '2024-08-15', NULL), -- William Liu enrolled in MATH B111
    (7, 247, '2024-08-15', NULL), -- William Liu enrolled in ENGL B101
    (7, 716, '2024-08-15', NULL), -- William Liu enrolled in GERM B101
    (7, 1004, '2024-08-15', NULL), -- William Liu enrolled in COMM B201

    (8, 1040, '2024-08-15', NULL), -- Isabella Shah enrolled in CSCI B150
    (8, 650, '2024-08-15', NULL), -- Isabella Shah enrolled in MATH B111
    (8, 247, '2024-08-15', NULL), -- Isabella Shah enrolled in ENGL B101
    (8, 716, '2024-08-15', NULL), -- Isabella Shah enrolled in GERM B101
    (8, 1004, '2024-08-15', NULL), -- Isabella Shah enrolled in COMM B201

    (9, 1040, '2024-08-15', NULL), -- Lucas Yoon enrolled in CSCI B150
    (9, 650, '2024-08-15', NULL), -- Lucas Yoon enrolled in MATH B111
    (9, 247, '2024-08-15', NULL), -- Lucas Yoon enrolled in ENGL B101
    (9, 716, '2024-08-15', NULL), -- Lucas Yoon enrolled in GERM B101
    (9, 1004, '2024-08-15', NULL), -- Lucas Yoon enrolled in COMM B201

    (10, 1040, '2024-08-15', NULL), -- Ava Chen enrolled in CSCI B150
    (10, 650, '2024-08-15', NULL), -- Ava Chen enrolled in MATH B111
    (10, 247, '2024-08-15', NULL), -- Ava Chen enrolled in ENGL B101
    (10, 716, '2024-08-15', NULL), -- Ava Chen enrolled in GERM B101
    (10, 1004, '2024-08-15', NULL); -- Ava Chen enrolled in COMM B201