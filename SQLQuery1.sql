-- HomeWork1 create SedcHome
CREATE TABLE [Student]
(
	[ID] int IDENTITY(1,1) NOT NULL,
	[FirstName] nvarchar(50) NULL,
	[LastName] nvarchar(50) NULL,
	[DateOfBirth] date NULL,
	[EnrolleDate] date NULL,
	[Gender] nchar(1) NULL,
	[NationalIDNumber] int NULL,
	[StudentCardNumber] int NULL,
);

CREATE TABLE [Teacher] 
(
	[ID] int IDENTITY(1,1) NOT NULL,
	[FirstName] nvarchar(50) NULL,
	[LastName] nvarchar(50) NULL,
	[DateOfBirth] date NULL,
	[AcademicRank] int NULL,
	[HireDate] date NULL,
);

CREATE TABLE [Grade] 
(
	[ID] int IDENTITY(1,1) NOT NULL,
	[StudentID] int NULL,
	[CourseID] int NULL,
	[TeacherID] int NULL,
	[Grade] int NULL,
	[Comment] nvarchar(max) NULL,
	[CreatedDate] date NULL,
);

CREATE TABLE[Course] 
(
	[ID] int IDENTITY(1,1) NOT NULL,
	[Name] nvarchar(50) NULL,
	[Credit] int NULL,
	[AcademicYear] date NULL,
	[Semester] int NULL,
);

CREATE TABLE [GradeDetails] 
(
	[ID] int IDENTITY(1,1) NOT NULL,
	[GradeID] int NULL,
	[AchievementTypeID] int NULL,
	[AchievementPoints] int NULL,
	[AchievementMaxPoints] int NULL,
	[AchievementDate] date NULL,
);

CREATE TABLE [AchievementType] 
(
	[ID] int IDENTITY(1,1) NOT NULL,
	[Name] nvarchar(50) NULL,
	[Description] nvarchar(max) NULL,
	[ParticipationRate] int NULL,
);