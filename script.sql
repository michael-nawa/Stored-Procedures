USE [OctodutyDatabase]
GO
SET IDENTITY_INSERT [dbo].[DayOfWeek] ON 

INSERT [dbo].[DayOfWeek] ([Id], [Title]) VALUES (1, N'Monday')
INSERT [dbo].[DayOfWeek] ([Id], [Title]) VALUES (2, N'Tuesday')
INSERT [dbo].[DayOfWeek] ([Id], [Title]) VALUES (3, N'Wednesday')
INSERT [dbo].[DayOfWeek] ([Id], [Title]) VALUES (4, N'Thursday')
INSERT [dbo].[DayOfWeek] ([Id], [Title]) VALUES (5, N'Friday')
SET IDENTITY_INSERT [dbo].[DayOfWeek] OFF
GO
SET IDENTITY_INSERT [dbo].[Grade] ON 

INSERT [dbo].[Grade] ([Id], [Title]) VALUES (1, N'Grade 5')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (2, N'Grade 6')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (3, N'Grade 12')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (4, N'Grade 11')
INSERT [dbo].[Grade] ([Id], [Title]) VALUES (5, N'Grade 10')
SET IDENTITY_INSERT [dbo].[Grade] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([Id], [Title]) VALUES (1, N'Mathematics')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (2, N'Science')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (3, N'English')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (4, N'Geography')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (5, N'Chemistry')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (6, N'Biology')
INSERT [dbo].[Subject] ([Id], [Title]) VALUES (7, N'Subject Test')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[TimeOfDays] ON 

INSERT [dbo].[TimeOfDays] ([Id], [Title]) VALUES (1, N'08:00 - 10:00')
INSERT [dbo].[TimeOfDays] ([Id], [Title]) VALUES (2, N'10:00 - 12:00')
INSERT [dbo].[TimeOfDays] ([Id], [Title]) VALUES (3, N'13:00 - 15:00')
INSERT [dbo].[TimeOfDays] ([Id], [Title]) VALUES (4, N'15:00 - 17:00')
SET IDENTITY_INSERT [dbo].[TimeOfDays] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (2, N'Anita', N'Jacon', N'anita@email.com', N'female', N'0975264525', N'543298714', N'PHI', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (3, N'Lisa', N'Jacobs', N'lisa@gmail.com', N'Female', N'0974525698', N'147856215', N'Makeni', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (5, N'Jason', N'luv', N'jason@gmail.com', N'male', N'0971266622', N'525452565', N'New York', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (6, N'Nina7', N'Simone', N'nina@gmail.com', N'Female', N'2545125525', N'555255256', N'New Kasama', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (7, N'Hailey', N'Willams', N'hh@gmail.com', N'female', N'5854265555', N'441566652', N'Chilenge', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (8, N'Joshua', N'Nawa', N'joshua@gmail.com', N'male', N'0978595965', N'563452156', N'Chelston', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (10, N'Update', N'Doe', N'Jane@email.com', N'Male', N'0978905065', N'123456/78/96', N'woodlands chalala', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (12, N'Michaelson', N'Nawa', N'michael@gmail.com', N'Male', N'5551212', N'45444', N'dfvdvfdv', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (13, N'Michaelson', N'Nawa', N'michael@gmail.com', N'Male', N'5551212', N'2655855', N'dfvdvfdv', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (15, N'Lisa ', N'Patric', N'michael@gmail.com', N'Male', N'5551212', N'123456789', N'dfvdvfdv', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (16, N'Nikita', N'Nawa', N'michael@gmail.com', N'Male', N'5551212', N'123456/78/78', N'dfvdvfdv', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (17, N'Chinvya', N'Ra', N'michael@gmail.com', N'Male', N'+260987456258', N'123456/85/74', N'dfvdvfdv', NULL, NULL)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (18, N'Michaelson', N'Nawa', N'michaelnawa2077@gmail.com', N'Male', N'+26097858562', N'1236541/52/22', N'Chilanga', N'michaelnawa2077@gmail.com', N'Admin')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (19, N'Fergie', N'Fits Patrick', N'Fergie@email.com', N'Female', N'0978905096', N'568585/45/21', N'NEw Orleans', N'Fergie@email.com', N'Student')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (21, N'Michaelson', N'Nazier (ADMIN)', N'admin@admin.com', N'Male', N'+26097856623', N'125265/78/52', N'Bluh', N'admin@admin.com', N'Admin')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (22, N'Billie', N'Elish (STUDENT)', N'student@student.com', N'Female', N'+2965874515', N'65542165/525/5', N'Brooklin', N'Student@Student.com', N'Student')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (23, N'Shawn', N'Carter (TEACHER)', N'teacher@teacher.com', N'Male', N'+265846582', N'225555/52/52', N'Chalala', N'teacher@teacher.com', N'Teacher')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[TimeTable] ON 

INSERT [dbo].[TimeTable] ([Id], [TeacherId], [SubjectId], [DayId], [TimeId], [GradeId]) VALUES (3, 5, 3, 1, 2, 4)
INSERT [dbo].[TimeTable] ([Id], [TeacherId], [SubjectId], [DayId], [TimeId], [GradeId]) VALUES (8, 6, 6, 5, 4, 4)
INSERT [dbo].[TimeTable] ([Id], [TeacherId], [SubjectId], [DayId], [TimeId], [GradeId]) VALUES (10, 3, 1, 1, 1, 1)
INSERT [dbo].[TimeTable] ([Id], [TeacherId], [SubjectId], [DayId], [TimeId], [GradeId]) VALUES (11, 2, 2, 2, 2, 2)
INSERT [dbo].[TimeTable] ([Id], [TeacherId], [SubjectId], [DayId], [TimeId], [GradeId]) VALUES (14, 17, 3, 1, 3, 1)
INSERT [dbo].[TimeTable] ([Id], [TeacherId], [SubjectId], [DayId], [TimeId], [GradeId]) VALUES (15, 17, 1, 1, 1, 5)
INSERT [dbo].[TimeTable] ([Id], [TeacherId], [SubjectId], [DayId], [TimeId], [GradeId]) VALUES (16, 2, 4, 5, 4, 5)
INSERT [dbo].[TimeTable] ([Id], [TeacherId], [SubjectId], [DayId], [TimeId], [GradeId]) VALUES (17, 17, 6, 4, 1, 1)
INSERT [dbo].[TimeTable] ([Id], [TeacherId], [SubjectId], [DayId], [TimeId], [GradeId]) VALUES (1012, 17, 4, 1, 3, 3)
INSERT [dbo].[TimeTable] ([Id], [TeacherId], [SubjectId], [DayId], [TimeId], [GradeId]) VALUES (1013, 2, 6, 3, 3, 3)
INSERT [dbo].[TimeTable] ([Id], [TeacherId], [SubjectId], [DayId], [TimeId], [GradeId]) VALUES (1014, 2, 2, 5, 4, 3)
SET IDENTITY_INSERT [dbo].[TimeTable] OFF
GO
SET IDENTITY_INSERT [dbo].[Assignment] ON 

INSERT [dbo].[Assignment] ([Id], [SubjectId], [TeacherId], [GradeID], [Title], [Deadline], [FilePath]) VALUES (2, 2, 3, 3, N'Rose Colored Boys', CAST(N'2021-02-24' AS Date), N'.gitconfig')
INSERT [dbo].[Assignment] ([Id], [SubjectId], [TeacherId], [GradeID], [Title], [Deadline], [FilePath]) VALUES (3, 3, 3, 3, N'Math Assignment', CAST(N'2020-10-12' AS Date), N'File.pdf')
INSERT [dbo].[Assignment] ([Id], [SubjectId], [TeacherId], [GradeID], [Title], [Deadline], [FilePath]) VALUES (12, 4, 23, 5, N'New Test', CAST(N'2021-02-27' AS Date), N'c#_Aid.cs')
INSERT [dbo].[Assignment] ([Id], [SubjectId], [TeacherId], [GradeID], [Title], [Deadline], [FilePath]) VALUES (13, 4, 23, 3, N'New New Assignment', CAST(N'2021-02-26' AS Date), N'Product list Odemmer.xlsx')
SET IDENTITY_INSERT [dbo].[Assignment] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [StudentId], [GradeId], [ExpectedAmount], [ActualAmount]) VALUES (2, 5, 5, 522612.0000, 22221.0000)
INSERT [dbo].[Student] ([Id], [StudentId], [GradeId], [ExpectedAmount], [ActualAmount]) VALUES (3, 6, 5, 444444421.0000, 1111112.0000)
INSERT [dbo].[Student] ([Id], [StudentId], [GradeId], [ExpectedAmount], [ActualAmount]) VALUES (4, 8, 2, 254411.0000, 2452214.0000)
INSERT [dbo].[Student] ([Id], [StudentId], [GradeId], [ExpectedAmount], [ActualAmount]) VALUES (5, 10, 4, 5000.0000, 1000.0000)
INSERT [dbo].[Student] ([Id], [StudentId], [GradeId], [ExpectedAmount], [ActualAmount]) VALUES (6, 13, 3, 1000.0000, 0.0000)
INSERT [dbo].[Student] ([Id], [StudentId], [GradeId], [ExpectedAmount], [ActualAmount]) VALUES (7, 15, 3, 5000.0000, 2000.0000)
INSERT [dbo].[Student] ([Id], [StudentId], [GradeId], [ExpectedAmount], [ActualAmount]) VALUES (8, 16, 3, 18000.0000, 10000.0000)
INSERT [dbo].[Student] ([Id], [StudentId], [GradeId], [ExpectedAmount], [ActualAmount]) VALUES (9, 19, 4, 12000.0000, 3000.0000)
INSERT [dbo].[Student] ([Id], [StudentId], [GradeId], [ExpectedAmount], [ActualAmount]) VALUES (10, 22, 5, 10000.0000, 90000.0000)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[TeacherSubjects] ON 

INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (2, 2, 1, 6)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (6, 2, 2, 2)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (13, 3, 3, 3)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (14, 7, 5, 6)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (21, 12, 3, 5)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (41, 17, 3, 4)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (43, 17, 5, 1)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (44, 17, 5, 5)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (45, 17, 3, 2)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (46, 2, 3, 4)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (50, 23, 5, 2)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (52, 23, 3, 4)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (53, 23, 1, 1)
INSERT [dbo].[TeacherSubjects] ([Id], [TeacherId], [GradeId], [SubjectId]) VALUES (54, 7, 5, 7)
SET IDENTITY_INSERT [dbo].[TeacherSubjects] OFF
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (1, 2, 3, CAST(N'2020-10-12T00:00:00.0000000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (6, 4, 6, CAST(N'2020-10-12T00:00:00.0000000' AS DateTime2), N'PRESENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (7, 5, 5, CAST(N'2020-10-12T00:00:00.0000000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (9, 4, 13, CAST(N'2021-02-05T12:26:10.6400000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (10, 4, 15, CAST(N'2021-02-05T12:26:10.6966667' AS DateTime2), N'PRESENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (11, 4, 16, CAST(N'2021-02-05T12:26:10.7033333' AS DateTime2), N'PRESENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (12, 4, 13, CAST(N'2021-02-05T12:38:16.1100000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (13, 4, 15, CAST(N'2021-02-05T12:38:16.1500000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (14, 4, 16, CAST(N'2021-02-05T12:38:16.1533333' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (15, 2, 5, CAST(N'2021-02-08T11:44:53.3800000' AS DateTime2), N'PRESENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (16, 2, 6, CAST(N'2021-02-08T11:44:53.4000000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (17, 2, 22, CAST(N'2021-02-08T11:44:53.4133333' AS DateTime2), N'PRESENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (18, 2, 5, CAST(N'2021-02-08T11:44:57.8266667' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (19, 2, 6, CAST(N'2021-02-08T11:44:57.8433333' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (20, 2, 22, CAST(N'2021-02-08T11:44:57.8500000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (21, 2, 5, CAST(N'2021-02-08T11:45:01.3700000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (22, 2, 6, CAST(N'2021-02-08T11:45:01.3900000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (23, 2, 22, CAST(N'2021-02-08T11:45:01.4000000' AS DateTime2), N'PRESENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (24, 2, 5, CAST(N'2021-02-15T12:40:43.9433333' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (25, 2, 6, CAST(N'2021-02-15T12:40:43.9533333' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (26, 2, 22, CAST(N'2021-02-15T12:40:43.9566667' AS DateTime2), N'PRESENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (27, 2, 5, CAST(N'2021-02-15T12:40:48.2100000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (28, 2, 6, CAST(N'2021-02-15T12:40:48.2100000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (29, 2, 22, CAST(N'2021-02-15T12:40:48.2100000' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (30, 2, 5, CAST(N'2021-02-15T12:40:50.8333333' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (31, 2, 6, CAST(N'2021-02-15T12:40:50.8366667' AS DateTime2), N'ABSENT')
INSERT [dbo].[Attendance] ([Id], [SubjectId], [StudentId], [Date], [State]) VALUES (32, 2, 22, CAST(N'2021-02-15T12:40:50.8366667' AS DateTime2), N'PRESENT')
SET IDENTITY_INSERT [dbo].[Attendance] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (2, 3, 100000.0000, N'fileName.pdf')
INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (4, 7, 65125.0000, N'fileName.pdf')
INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (5, 2, 36251.0000, N'fileName.pdf')
INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (7, 12, 44.0000, N'c#_Aid.cs')
INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (8, 17, 555555.0000, N'c#_Aid.cs')
INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (9, 23, 20000.0000, N'File.php')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[AssignmentSubmission] ON 

INSERT [dbo].[AssignmentSubmission] ([Id], [AssignmentId], [StudentId], [UploadDate], [Score], [Comment], [FilePath]) VALUES (1, 2, 5, CAST(N'2020-10-12' AS Date), CAST(88 AS Decimal(18, 0)), N'jjjj', N'file.pdf')
INSERT [dbo].[AssignmentSubmission] ([Id], [AssignmentId], [StudentId], [UploadDate], [Score], [Comment], [FilePath]) VALUES (2, 3, 5, CAST(N'2020-10-12' AS Date), CAST(6666 AS Decimal(18, 0)), N'yhhhhhh', N'file.pdf')
INSERT [dbo].[AssignmentSubmission] ([Id], [AssignmentId], [StudentId], [UploadDate], [Score], [Comment], [FilePath]) VALUES (3, 5, 8, CAST(N'2020-10-12' AS Date), CAST(12 AS Decimal(18, 0)), N'lol', N'file.pdf')
INSERT [dbo].[AssignmentSubmission] ([Id], [AssignmentId], [StudentId], [UploadDate], [Score], [Comment], [FilePath]) VALUES (4, 2, 6, CAST(N'2020-10-05' AS Date), CAST(100 AS Decimal(18, 0)), N'Sigrid Sucker punch', N'bluh')
INSERT [dbo].[AssignmentSubmission] ([Id], [AssignmentId], [StudentId], [UploadDate], [Score], [Comment], [FilePath]) VALUES (7, 2, 0, CAST(N'2021-02-04' AS Date), CAST(12 AS Decimal(18, 0)), N'rubbish', N'c#_Aid.cs')
INSERT [dbo].[AssignmentSubmission] ([Id], [AssignmentId], [StudentId], [UploadDate], [Score], [Comment], [FilePath]) VALUES (8, 12, 0, CAST(N'2021-02-08' AS Date), CAST(0 AS Decimal(18, 0)), N'unset', N'c#_Aid.cs')
INSERT [dbo].[AssignmentSubmission] ([Id], [AssignmentId], [StudentId], [UploadDate], [Score], [Comment], [FilePath]) VALUES (9, 12, 0, CAST(N'2021-02-08' AS Date), CAST(0 AS Decimal(18, 0)), N'unset', N'.gitconfig')
INSERT [dbo].[AssignmentSubmission] ([Id], [AssignmentId], [StudentId], [UploadDate], [Score], [Comment], [FilePath]) VALUES (10, 2, 0, CAST(N'2021-02-08' AS Date), CAST(0 AS Decimal(18, 0)), N'unset', N'.bash_history')
INSERT [dbo].[AssignmentSubmission] ([Id], [AssignmentId], [StudentId], [UploadDate], [Score], [Comment], [FilePath]) VALUES (11, 12, 0, CAST(N'2021-02-08' AS Date), CAST(0 AS Decimal(18, 0)), N'unset', N'.bash_history')
INSERT [dbo].[AssignmentSubmission] ([Id], [AssignmentId], [StudentId], [UploadDate], [Score], [Comment], [FilePath]) VALUES (12, 12, 22, CAST(N'2021-02-08' AS Date), CAST(5 AS Decimal(18, 0)), N'rubbish
', N'StartWithAuthDB.mdf')
INSERT [dbo].[AssignmentSubmission] ([Id], [AssignmentId], [StudentId], [UploadDate], [Score], [Comment], [FilePath]) VALUES (13, 13, 22, CAST(N'2021-02-15' AS Date), CAST(5 AS Decimal(18, 0)), N'LMAO!
', N'Product list Odemmer.xlsx')
SET IDENTITY_INSERT [dbo].[AssignmentSubmission] OFF
GO
