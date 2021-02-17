USE [master]
GO
/****** Object:  Database [OctodutyDatabase]    Script Date: 17-Feb-21 09:25:09 ******/
CREATE DATABASE [OctodutyDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OctodutyDatabase', FILENAME = N'C:\Users\Maliwa M. Nawa\OctodutyDatabase_Primary.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OctodutyDatabase_log', FILENAME = N'C:\Users\Maliwa M. Nawa\OctodutyDatabase_Primary.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [OctodutyDatabase] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OctodutyDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OctodutyDatabase] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [OctodutyDatabase] SET ANSI_NULLS ON 
GO
ALTER DATABASE [OctodutyDatabase] SET ANSI_PADDING ON 
GO
ALTER DATABASE [OctodutyDatabase] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [OctodutyDatabase] SET ARITHABORT ON 
GO
ALTER DATABASE [OctodutyDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OctodutyDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [OctodutyDatabase] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [OctodutyDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [OctodutyDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OctodutyDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OctodutyDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OctodutyDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [OctodutyDatabase] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [OctodutyDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OctodutyDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OctodutyDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OctodutyDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OctodutyDatabase] SET QUERY_STORE = OFF
GO
USE [OctodutyDatabase]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [OctodutyDatabase]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
	[GradeID] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Deadline] [date] NOT NULL,
	[FilePath] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignmentSubmission]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignmentSubmission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AssignmentId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[UploadDate] [date] NOT NULL,
	[Score] [decimal](18, 0) NOT NULL,
	[Comment] [nvarchar](600) NOT NULL,
	[FilePath] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DayOfWeek]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DayOfWeek](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DayOfWeek] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[GradeId] [int] NOT NULL,
	[ExpectedAmount] [money] NOT NULL,
	[ActualAmount] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
	[Salary] [money] NOT NULL,
	[Qualification] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherSubjects]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherSubjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
	[GradeId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeOfDays]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeOfDays](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TimeOfDays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeTable]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[DayId] [int] NOT NULL,
	[TimeId] [int] NOT NULL,
	[GradeId] [int] NOT NULL,
 CONSTRAINT [PK_TimeTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[NRC] [nvarchar](50) NOT NULL,
	[HomeAddress] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](200) NULL,
	[Role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assignment] ON 

INSERT [dbo].[Assignment] ([Id], [SubjectId], [TeacherId], [GradeID], [Title], [Deadline], [FilePath]) VALUES (2, 2, 3, 3, N'Rose Colored Boys', CAST(N'2021-02-24' AS Date), N'.gitconfig')
INSERT [dbo].[Assignment] ([Id], [SubjectId], [TeacherId], [GradeID], [Title], [Deadline], [FilePath]) VALUES (3, 3, 3, 3, N'Math Assignment', CAST(N'2020-10-12' AS Date), N'File.pdf')
INSERT [dbo].[Assignment] ([Id], [SubjectId], [TeacherId], [GradeID], [Title], [Deadline], [FilePath]) VALUES (12, 4, 23, 5, N'New Test', CAST(N'2021-02-27' AS Date), N'c#_Aid.cs')
INSERT [dbo].[Assignment] ([Id], [SubjectId], [TeacherId], [GradeID], [Title], [Deadline], [FilePath]) VALUES (13, 4, 23, 3, N'New New Assignment', CAST(N'2021-02-26' AS Date), N'Product list Odemmer.xlsx')
INSERT [dbo].[Assignment] ([Id], [SubjectId], [TeacherId], [GradeID], [Title], [Deadline], [FilePath]) VALUES (1013, 4, 23, 5, N'dw', CAST(N'2021-02-16' AS Date), N'Product list Odemmer.xlsx')
SET IDENTITY_INSERT [dbo].[Assignment] OFF
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
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (2, 3, 100000.0000, N'fileName.pdf')
INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (4, 7, 65125.0000, N'fileName.pdf')
INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (5, 2, 36251.0000, N'fileName.pdf')
INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (7, 12, 44.0000, N'c#_Aid.cs')
INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (8, 17, 555555.0000, N'c#_Aid.cs')
INSERT [dbo].[Teacher] ([Id], [TeacherId], [Salary], [Qualification]) VALUES (9, 23, 20000.0000, N'File.php')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
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
SET IDENTITY_INSERT [dbo].[TimeOfDays] ON 

INSERT [dbo].[TimeOfDays] ([Id], [Title]) VALUES (1, N'08:00 - 10:00')
INSERT [dbo].[TimeOfDays] ([Id], [Title]) VALUES (2, N'10:00 - 12:00')
INSERT [dbo].[TimeOfDays] ([Id], [Title]) VALUES (3, N'13:00 - 15:00')
INSERT [dbo].[TimeOfDays] ([Id], [Title]) VALUES (4, N'15:00 - 17:00')
SET IDENTITY_INSERT [dbo].[TimeOfDays] OFF
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
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Email], [Gender], [PhoneNumber], [NRC], [HomeAddress], [Password], [Role]) VALUES (24, N'Michael', N'Nawa', N'michaelnawa1998@gmail.com', N'Male', N'978905095', N'324324', N'25780', N'2021admin', N'Admin')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_GradeTbl_Assignment] FOREIGN KEY([GradeID])
REFERENCES [dbo].[Grade] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_GradeTbl_Assignment]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_SubjectTbl_Assignment] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_SubjectTbl_Assignment]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_TeacherTbl_Assignment] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_TeacherTbl_Assignment]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_StudentTbl_Attendance] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_StudentTbl_Attendance]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_SubjectTbl_Attendance] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_SubjectTbl_Attendance]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_GradeTbl] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_GradeTbl]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_UsersTbl] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_UsersTbl]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_UsersTb;] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_UsersTb;]
GO
ALTER TABLE [dbo].[TeacherSubjects]  WITH CHECK ADD  CONSTRAINT [FK_GradeTbl_Teacher] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeacherSubjects] CHECK CONSTRAINT [FK_GradeTbl_Teacher]
GO
ALTER TABLE [dbo].[TeacherSubjects]  WITH CHECK ADD  CONSTRAINT [FK_SubjectTbl] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeacherSubjects] CHECK CONSTRAINT [FK_SubjectTbl]
GO
ALTER TABLE [dbo].[TeacherSubjects]  WITH CHECK ADD  CONSTRAINT [FK_UserTbl] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeacherSubjects] CHECK CONSTRAINT [FK_UserTbl]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [Day Relationship] FOREIGN KEY([DayId])
REFERENCES [dbo].[DayOfWeek] ([Id])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [Day Relationship]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [Grade Relationship] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([Id])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [Grade Relationship]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [SubjectID Relationship] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [SubjectID Relationship]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [TeacherID Relationship] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [TeacherID Relationship]
GO
ALTER TABLE [dbo].[TimeTable]  WITH CHECK ADD  CONSTRAINT [Time Relationship] FOREIGN KEY([TimeId])
REFERENCES [dbo].[TimeOfDays] ([Id])
GO
ALTER TABLE [dbo].[TimeTable] CHECK CONSTRAINT [Time Relationship]
GO
/****** Object:  StoredProcedure [dbo].[spAdmin_Get]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spAdmin_Get]
	@Id int = -1

AS 
begin
	set nocount on;

	IF (@Id >= 0)
	BEGIN
	  select * from dbo.Users
	  where Id = @Id
	END

	ELSE
	BEGIN
	   select * from dbo.Users
	   where Role = 'Admin'
	END

end

GO
/****** Object:  StoredProcedure [dbo].[spAssignment_Create&Edit]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spAssignment_Create&Edit]
	@SubjectId int,
	@GradeId int ,
	@TeacherId int,
	@Title nvarchar(500),
	@Deadline datetime2,
	@FilePath nvarchar(500),
	@Src nvarchar(50),
	@AssignmentId int=-1
AS
BEGIN
	SET NOCOUNT ON; 

	IF (@Src = 'Create')
	BEGIN
		Insert into dbo.Assignment
		(SubjectId,TeacherId,GradeID,Title,Deadline,FilePath)
		values (@subjectId,@TeacherId,@gradeId,@Title,@Deadline,@FilePath)
	END 

	ELSE IF (@Src = 'Edit')
	BEGIN 
	    Update dbo.Assignment 
		set Title = @Title,Deadline = @Deadline,FilePath = @FilePath,SubjectId=@SubjectId,GradeID=@GradeId
		where Id=@AssignmentId;
	END  

	ELSE IF (@Src = 'Delete')
	BEGIN  
		Delete from dbo.Assignment
		where Id=@AssignmentId;
	END  

END

GO
/****** Object:  StoredProcedure [dbo].[spAssignment_Get]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAssignment_Get]
	@subjectId int= -1,
	@gradeId int= -1 ,
	@TeacherId int= -1 , 
	@AssignmentId int= -1
AS 
begin
	set nocount on;

	--getting specific assignment
	IF (@AssignmentId >= 0)
	BEGIN
		select a.Id,a.Title , s.Title,t.LastName,g.Title,a.Deadline,a.FilePath
		from dbo.Assignment a
		INNER JOIN dbo.Subject s
		on s.Id = a.SubjectId
		INNER JOIN dbo.Users t
		on t.Id = a.TeacherId
		INNER JOIN dbo.Grade g
		on g.Id = a.GradeID
		where a.Id = @AssignmentId
	END

	--getting each assignment submitted for specifiv grade
	ELSE IF (@gradeId >= 0)
	BEGIN
		select a.Id,a.Title , s.Title as Subject,t.LastName as Teacher,g.Title as Grade,a.Deadline,a.FilePath
		from dbo.Assignment a
		INNER JOIN dbo.Subject s
		on s.Id = a.SubjectId
		INNER JOIN dbo.Users t
		on t.Id = a.TeacherId
		INNER JOIN dbo.Grade g
		on g.Id = a.GradeID
		where a.GradeID = @gradeId;
	END

	--getting each assignment submitted by specific lecturer
	ELSE IF (@TeacherId >= 0)
	BEGIN
		select a.Id,a.Title , s.Title as Subject,t.LastName as Teacher,g.Title as Grade,a.Deadline,a.FilePath
		from dbo.Assignment a
		INNER JOIN dbo.Subject s
		on s.Id = a.SubjectId
		INNER JOIN dbo.Users t
		on t.Id = a.TeacherId
		INNER JOIN dbo.Grade g
		on g.Id = a.GradeID
		where a.TeacherId = @TeacherId;
	END

	--getting all assignments 
	ELSE  
	BEGIN
		select a.Id,a.Title , s.Title as Subject,t.LastName as Teacher,g.Title as Grade,a.Deadline,a.FilePath
		from dbo.Assignment a
		INNER JOIN dbo.Subject s
		on s.Id = a.SubjectId
		INNER JOIN dbo.Users t
		on t.Id = a.TeacherId
		INNER JOIN dbo.Grade g
		on g.Id = a.GradeID
	END   

end

GO
/****** Object:  StoredProcedure [dbo].[spAssignment_GetSubmission]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAssignment_GetSubmission]
	@StudentId int=-1,
	@AssignmentId int=-1  
AS 
begin
	set nocount on;

	IF (@AssignmentId >= 0 and @StudentId < 0)
	BEGIN
		select * from dbo.AssignmentSubmission
		where AssignmentId=@AssignmentId
	END

	ELSE  IF (@AssignmentId >= 0 and @StudentId >= 0)
	BEGIN
		select * from dbo.AssignmentSubmission
		where StudentId=@StudentId and AssignmentId=@AssignmentId
	END   

end

GO
/****** Object:  StoredProcedure [dbo].[spAssignment_GetUploads]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAssignment_GetUploads]
	@assignmentID int 
AS 
begin
	set nocount on;

	select * from dbo.Assignment
	where id=@assignmentID  

end

GO
/****** Object:  StoredProcedure [dbo].[spAssignmentSubmission_Create&Edit]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spAssignmentSubmission_Create&Edit]
	@AssignmentId int=-1,
	@StudentId int=-1,
	@Comment nvarchar(500)='' ,
	@UploadDate nvarchar(500) = '' ,
	@Score decimal=0,
	@FilePath nvarchar(500)='',
	@Src nvarchar(50)
	
AS
BEGIN
	SET NOCOUNT ON; 

	IF (@Src = 'Create')
	BEGIN
		Insert into dbo.AssignmentSubmission
		(AssignmentId,StudentId,UploadDate,Score,Comment,FilePath)
		values (@AssignmentId,@StudentId,@UploadDate,@Score,@Comment,@FilePath)
	END 

	ELSE IF (@Src = 'Edit')
	BEGIN 
	    Update dbo.AssignmentSubmission 
		set Score = @Score,Comment = @Comment
		where Id=@AssignmentId;
	END  

	ELSE IF (@Src = 'Delete')
	BEGIN  
		Delete from dbo.AssignmentSubmission
		where Id=@AssignmentId;
	END  

END

GO
/****** Object:  StoredProcedure [dbo].[spAttendance_Create&Edit]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spAttendance_Create&Edit]
	@Id int=-1,
	@SubjectId int=-1,
	@StudentId int=-1,
	@Date DateTime ='',
	@State nvarchar(500)='', 
	@Src nvarchar(50)=''

AS
BEGIN
	SET NOCOUNT ON; 

	IF (@Src = 'Create')
	BEGIN
		Insert into dbo.Attendance
		(SubjectId,StudentId,Date,State)
		values (@SubjectId,@StudentId,@Date,@State)
	END 

	ELSE IF (@Src = 'Edit')
	BEGIN 
	    Update dbo.Attendance 
		set State = @State 
		where Id=@Id;
	END  

	ELSE IF (@Src = 'Delete')
	BEGIN  
		Delete from dbo.Attendance
		where Id=@Id;
	END  

END

GO
/****** Object:  StoredProcedure [dbo].[spAttendance_Get]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAttendance_Get]  
	@StudentId int  = -1,
	@SubjectId int= -1,
	@gradeId int= -1

AS 
begin
	set nocount on;

		--Getting Student Attendance
		IF (@StudentId >= 0 AND @gradeId <= -1)
		BEGIN
			select * from dbo.Attendance
			where StudentId = @StudentId; 
		END

		--getting list of student based on their grade
		else IF (@gradeId >= 0 AND @StudentId <= -1 )
		BEGIN
			select u.* from dbo.Users u
			Inner Join dbo.Student s
			On s.StudentId = u.Id
			where s.GradeId=@gradeId
		END

		--get attendance list of all students
		--ELSE  
		--BEGIN
		--	select * from dbo.Attendance
		--	where SubjectId=@subjectId and GradeId=@gradeId
		--END   
end

GO
/****** Object:  StoredProcedure [dbo].[spDay_Get]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spDay_Get]

AS 
begin
	set nocount on;

	 select * from dbo.DayOfWeek

end

GO
/****** Object:  StoredProcedure [dbo].[spGrade_Create]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGrade_Create]
  @Title nvarchar(100)

AS
begin
	set nocount on;

	Insert into dbo.Grade(Title)
	Values (@Title); 

end

GO
/****** Object:  StoredProcedure [dbo].[spGrade_Get]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGrade_Get] 
	@GradeId int = -1

AS 
begin
	set nocount on;

	IF (@GradeId > 0)
	BEGIN
	   select * from dbo.Grade where Id = @GradeId;
	END

	ELSE
	BEGIN
	   select * from dbo.Grade
	END

end

GO
/****** Object:  StoredProcedure [dbo].[spGrade_Teacher]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGrade_Teacher]
	@TeacherId int  
AS 
begin
	set nocount on;

	  select g.* 
	  from dbo.Grade  g
	  INNER JOIN dbo.TeacherSubjects ts
	  on g.Id = ts.GradeId
	  where ts.TeacherId = @TeacherId;  

end

GO
/****** Object:  StoredProcedure [dbo].[spStudent_Create&Edit]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spStudent_Create&Edit]
	@UserId int,
	@ExpectedAmount int,
	@ActualAmount int,
	@GradeId int,
	@Src nvarchar(50)

AS
begin
	set nocount on;

	IF (@Src = 'Create')
	BEGIN
		Insert into dbo.Student(StudentId,ExpectedAmount,ActualAmount,GradeId)
		Values (@UserId,@ExpectedAmount,@ActualAmount,@GradeId);
	END  

	ELSE IF (@Src = 'Edit')
	BEGIN 
	    update dbo.Student
		set ExpectedAmount=@ExpectedAmount,ActualAmount=@ActualAmount,GradeId=@GradeId 
		where StudentId=@UserId; 
	END  

	ELSE IF (@Src = 'Delete')
	BEGIN 
	     Delete from dbo.Users
		Where Id=@UserId 
	END  
end

GO
/****** Object:  StoredProcedure [dbo].[spStudent_Get]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spStudent_Get]
	@StudentId int = -1

AS 
begin
	set nocount on;

	IF (@StudentId > 0)
	BEGIN
	   select s.StudentId,s.GradeId,s.ExpectedAmount,s.ActualAmount,g.Title as GradeTitle
	   from dbo.Student s  
	   Inner Join dbo.Grade g
	   on g.Id = s.GradeId
	   where StudentId = @StudentId;
	END

	ELSE
	BEGIN
	   select s.StudentId,s.GradeId,s.ExpectedAmount,s.ActualAmount,g.Title as GradeTitle
	   from dbo.Student s  
	   Inner Join dbo.Grade g
	   on g.Id = s.GradeId
	END

end

GO
/****** Object:  StoredProcedure [dbo].[spStudent_GetAttendance]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spStudent_GetAttendance]
	@StudentId int 
AS 
begin
	set nocount on;

	select * from dbo.Attendance
	where Studentid =@StudentId 

end

GO
/****** Object:  StoredProcedure [dbo].[spSubject_Create&Edit]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSubject_Create&Edit]
	@SubjectId int =-1,
	@Title nvarchar(500)='',
	@Src nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF (@Src = 'Create')
	BEGIN
		Insert into dbo.Subject(Title)
		Values (@Title); 
	END 

	ELSE IF (@Src = 'Edit')
	BEGIN 
	    Update dbo.Subject 
		set Title = @Title
		where Id=@SubjectId;
	END  

	ELSE IF (@Src = 'Delete')
	BEGIN  
		Delete from dbo.Subject
		Where Id=@SubjectId 
	END  

END

GO
/****** Object:  StoredProcedure [dbo].[spSubject_Get]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSubject_Get]
	@SubjectId int = -1

AS 
begin
	set nocount on;

	IF (@SubjectId > 0)
	BEGIN
	   select * from dbo.Subject where Id = @SubjectId;
	END

	ELSE
	BEGIN
	   select * from dbo.Subject
	END

end

GO
/****** Object:  StoredProcedure [dbo].[spSubject_Teacher]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSubject_Teacher]
	@TeacherId int  = -1,
	@SubjectId int = -1
AS 
begin
	set nocount on;

		IF (@TeacherId > 0)
		BEGIN
			select s.* 
			from dbo.Subject  s
			INNER JOIN dbo.TeacherSubjects ts
			on s.Id = ts.SubjectId
			where ts.TeacherId = @TeacherId; 
		END

		ELSE IF (@SubjectId > 0)
		BEGIN
			select u.* 
			from dbo.Users  u
			INNER JOIN dbo.TeacherSubjects ts
			on u.Id = ts.TeacherId
			where ts.SubjectId = @SubjectId; 
		END  

end

GO
/****** Object:  StoredProcedure [dbo].[spTeacher_Create&Edit]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTeacher_Create&Edit]
	@UserId int,
	@Salary int,
	@Qualification  nvarchar(300),
	@Src nvarchar(50)

AS
begin
	set nocount on;

	IF (@Src = 'Create')
	BEGIN
		Insert into dbo.Teacher(TeacherId,Salary,Qualification)
		Values (@UserId,@Salary,@Qualification);
	END 

	ELSE IF (@Src = 'Edit')
	BEGIN 
	    update dbo.Teacher
		set Salary=@Salary,Qualification=@Qualification 
		where TeacherId=@UserId; 
	END    

	ELSE IF (@Src = 'Delete')
	BEGIN  
		 Delete from dbo.Users
		Where Id=@UserId 
	END  

end

GO
/****** Object:  StoredProcedure [dbo].[spTeacher_Get]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTeacher_Get]
	@TeacherId int = -1

AS 
begin
	set nocount on;

	IF (@TeacherId > 0)
	BEGIN
	   select * from dbo.Teacher where TeacherId = @TeacherId;
	END

	ELSE
	BEGIN
	   select * from dbo.Teacher 
	END

end

GO
/****** Object:  StoredProcedure [dbo].[spTeacherSubject_Create&Edit]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTeacherSubject_Create&Edit]
	@TeacherId int,
	@GradeId int,
	@SubjectId int,
	@Src nvarchar(50)

AS
begin
	set nocount on;

	IF (@Src = 'Create')
	BEGIN
		Insert into dbo.TeacherSubjects(TeacherId,GradeId,SubjectId)
		Values (@TeacherId,@GradeId,@SubjectId);
	END 

	ELSE IF (@Src = 'Edit')
	BEGIN 
	    update dbo.TeacherSubjects
		set TeacherId=@TeacherId,GradeId=@GradeId 
		where TeacherId=@TeacherId; 
	END 
	
	ELSE IF (@Src = 'Delete')
	BEGIN 
	    Delete from dbo.TeacherSubjects
		Where TeacherId=@TeacherId AND GradeId=@GradeId AND SubjectId=@SubjectId
	END  

end

GO
/****** Object:  StoredProcedure [dbo].[spTime_Get]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spTime_Get]

AS 
begin
	set nocount on;

	 select * from dbo.TimeOfDays

end

GO
/****** Object:  StoredProcedure [dbo].[spTimeTable_Create&Edit]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  PROCEDURE [dbo].[spTimeTable_Create&Edit]
	@GradeId int = -1,
	@DayId int = -1,
	@TimeId int = -1,
	@TeacherId int = -1,
	@Id int = -1,
	@SubjectId int = -1,
	@Src nvarchar(30) = ''

AS 
begin
	set nocount on;

	IF (@Src = 'Delete')
	BEGIN
	    Delete from dbo.TimeTable
		Where Id=@Id;
	END

	ELSE IF (@Src = 'Create')
	BEGIN
		Insert into dbo.TimeTable (TeacherId,SubjectId,DayId,TimeId,GradeId)
		Values (@TeacherId,@SubjectId,@DayId,@TimeId,@GradeId)
	END  
end
GO
/****** Object:  StoredProcedure [dbo].[spTimeTable_Get]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[spTimeTable_Get]
	@GradeId int = -1,
	@DayId int = -1,
	@TimeId int = -1,
	@TeacherId int = -1

AS 
begin
	set nocount on;

	IF (@GradeId >= 0)
	BEGIN
	     select t.Id,u.FirstName,u.LastName,s.Title as SubjectTitle,d.Title as DayOfWeek,tod.Title as TimeOfWeek,g.Title as Grade
		 from dbo.TimeTable t
		 Inner Join dbo.Users u
		 On t.TeacherId = u.id
		 Inner Join dbo.Subject s
		 on s.Id = t.SubjectId
		 Inner Join dbo.DayOfWeek d
		 on d.Id = t.DayId
		 Inner Join dbo.TimeOfDays tod
		 on tod.Id = t.TimeId
		 Inner Join dbo.Grade g
		 on g.Id = t.GradeId
		 Where t.GradeId = @GradeId AND tod.Id = @TimeId AND d.Id = @DayId
	END

	ELSE IF (@TeacherId >= 0)
	BEGIN
		 select t.Id,u.FirstName,u.LastName,s.Title as SubjectTitle,d.Title as DayOfWeek,tod.Title as TimeOfWeek,g.Title as Grade
		 from dbo.TimeTable t
		 Inner Join dbo.Users u
		 On t.TeacherId = u.id
		 Inner Join dbo.Subject s
		 on s.Id = t.SubjectId
		 Inner Join dbo.DayOfWeek d
		 on d.Id = t.DayId
		 Inner Join dbo.TimeOfDays tod
		 on tod.Id = t.TimeId
		 Inner Join dbo.Grade g
		 on g.Id = t.GradeId
		 Where t.TeacherId = @TeacherId AND tod.Id = @TimeId AND d.Id = @DayId
	END  
end
GO
/****** Object:  StoredProcedure [dbo].[spUser_Create&Edit]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUser_Create&Edit]
	@FirstName nvarchar(100),
	@LastName nvarchar(100),
	@EmailAddress nvarchar(100),
	@Gender nvarchar(100),
	@NRC nvarchar(100),
	@phoneNumber nvarchar(100),
	@HomeAddress nvarchar(100),
	@Password nvarchar(200)='',
	@Role nvarchar(200)='',
	@Id int = -1

AS
begin
	set nocount on;

	--Edit User
	IF (@Id > 0)
	BEGIN
	    update dbo.Users
		set FirstName=@FirstName,LastName=@LastName,Email=@EmailAddress,
		Gender=@Gender,NRC=@NRC,PhoneNumber=@phoneNumber,HomeAddress=@HomeAddress
		where Id=@Id; 
	END

	--create user
	ELSE
	BEGIN
		Insert into dbo.Users(FirstName,LastName,Email,Gender,NRC,PhoneNumber,
		HomeAddress,Password,Role)
		OUTPUT INSERTED.ID
		values (@FirstName,@LastName,@EmailAddress,
		@Gender,@NRC,@phoneNumber,@HomeAddress,@Password,@Role);
	END 

end

GO
/****** Object:  StoredProcedure [dbo].[spUser_Get]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUser_Get]
	@UserId int = -1

AS 
begin
	set nocount on;

	IF (@UserId > 0)
	BEGIN
	   select * from dbo.Users where Id = @UserId;
	END

	ELSE
	BEGIN
	   select * from dbo.Users  
	END

end

GO
/****** Object:  StoredProcedure [dbo].[spUser_Login]    Script Date: 17-Feb-21 09:25:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spUser_Login]
	@EmailAddress nvarchar(100), 
	@Password nvarchar(200) 

AS 
begin
	set nocount on;

	   select * from dbo.Users 
	   where Password = @Password AND Email=@EmailAddress;

end

GO
USE [master]
GO
ALTER DATABASE [OctodutyDatabase] SET  READ_WRITE 
GO
