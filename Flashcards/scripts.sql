USE [Brainly]
GO
/****** Object:  User [flashCardDbUser]    Script Date: 04/21/2013 10:56:11 ******/
CREATE USER [flashCardDbUser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[StudentAnsweredQuestion]    Script Date: 04/21/2013 10:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAnsweredQuestion](
	[IdStudentAnsweredQuestion] [int] IDENTITY(1,1) NOT NULL,
	[IdStudent] [int] NOT NULL,
	[IdQuestion] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentAnsweredQuestion] PRIMARY KEY CLUSTERED 
(
	[IdStudentAnsweredQuestion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StudentAnsweredQuestion] ON
INSERT [dbo].[StudentAnsweredQuestion] ([IdStudentAnsweredQuestion], [IdStudent], [IdQuestion], [Date]) VALUES (36, 1, 351, CAST(0x0000A1A601065C80 AS DateTime))
INSERT [dbo].[StudentAnsweredQuestion] ([IdStudentAnsweredQuestion], [IdStudent], [IdQuestion], [Date]) VALUES (37, 1, 355, CAST(0x0000A1A700AA703E AS DateTime))
SET IDENTITY_INSERT [dbo].[StudentAnsweredQuestion] OFF
/****** Object:  Table [dbo].[Student]    Script Date: 04/21/2013 10:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[IDStudent] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](60) NOT NULL,
	[StudentCode] [varchar](60) NOT NULL,
	[StudentEmail] [varchar](60) NOT NULL,
	[StudentDescription] [varchar](250) NOT NULL,
	[StudentPassword] [varchar](60) NOT NULL,
	[Picture] [varchar](256) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[IDStudent] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Student] ON [dbo].[Student] 
(
	[StudentCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Student_1] ON [dbo].[Student] 
(
	[StudentEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student] ON
INSERT [dbo].[Student] ([IDStudent], [StudentName], [StudentCode], [StudentEmail], [StudentDescription], [StudentPassword], [Picture]) VALUES (1, N'Pamela', N'1.1.1', N'stefan@mail.com', N'', N'1234', N'Styles/images/PamProfile.jpg')
INSERT [dbo].[Student] ([IDStudent], [StudentName], [StudentCode], [StudentEmail], [StudentDescription], [StudentPassword], [Picture]) VALUES (2, N'Amanda', N'1.1.2', N'matias@mail.com', N'', N'2345', N'Styles/images/profile_2.jpg')
INSERT [dbo].[Student] ([IDStudent], [StudentName], [StudentCode], [StudentEmail], [StudentDescription], [StudentPassword], [Picture]) VALUES (3, N'Jenny (Tutor)', N'1.1.3', N'alex@mail.com', N'', N'3456', N'Styles/images/profile_3.jpg')
INSERT [dbo].[Student] ([IDStudent], [StudentName], [StudentCode], [StudentEmail], [StudentDescription], [StudentPassword], [Picture]) VALUES (10, N'Jose', N'1.1.4', N'jose@hotmail.com', N'', N'1', NULL)
INSERT [dbo].[Student] ([IDStudent], [StudentName], [StudentCode], [StudentEmail], [StudentDescription], [StudentPassword], [Picture]) VALUES (11, N'Juan', N'1.1.5', N'jperez@gmail.com', N'', N'juan', NULL)
INSERT [dbo].[Student] ([IDStudent], [StudentName], [StudentCode], [StudentEmail], [StudentDescription], [StudentPassword], [Picture]) VALUES (12, N'Pedro', N'1.1.6', N'pedro@mail.com', N'', N'pedro', NULL)
SET IDENTITY_INSERT [dbo].[Student] OFF
/****** Object:  Table [dbo].[PackageGroupType]    Script Date: 04/21/2013 10:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackageGroupType](
	[IDPackageGroupType] [int] IDENTITY(1,1) NOT NULL,
	[PackageGroupTypeDisplayName] [varchar](60) NOT NULL,
 CONSTRAINT [PK_PackageGroupType] PRIMARY KEY CLUSTERED 
(
	[IDPackageGroupType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PackageGroupType] ON
INSERT [dbo].[PackageGroupType] ([IDPackageGroupType], [PackageGroupTypeDisplayName]) VALUES (1, N'Course')
SET IDENTITY_INSERT [dbo].[PackageGroupType] OFF
/****** Object:  Table [dbo].[LevelType]    Script Date: 04/21/2013 10:56:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LevelType](
	[IDLevelType] [int] IDENTITY(1,1) NOT NULL,
	[LevelTypeDisplayName] [varchar](60) NOT NULL,
 CONSTRAINT [PK_LevelType] PRIMARY KEY CLUSTERED 
(
	[IDLevelType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LevelType] ON
INSERT [dbo].[LevelType] ([IDLevelType], [LevelTypeDisplayName]) VALUES (1, N'Career')
SET IDENTITY_INSERT [dbo].[LevelType] OFF
/****** Object:  StoredProcedure [dbo].[Customer_LogoPicturePath]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 19th July 2011
-- Description:	Creates a String representing the Customer Logo Picture
-- =============================================
CREATE PROCEDURE [dbo].[Customer_LogoPicturePath]
	@CustomerCode varchar(20),
	@LogoPicturePath varchar(250) output
AS
BEGIN	
	Set @LogoPicturePath = @CustomerCode + '#media#logo_' + @CustomerCode +'.jpg'
	Select @LogoPicturePath
END
GO
/****** Object:  StoredProcedure [dbo].[Customer_TrophyPicturePath]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 19th July 2011
-- Description:	Creates a String representing the Customer Trophy Picture
-- =============================================
CREATE PROCEDURE [dbo].[Customer_TrophyPicturePath]
	@CustomerCode varchar(20),
	@TrophyPicturePath varchar(250) output
AS
BEGIN	
	Set @TrophyPicturePath = @CustomerCode + '#media#trophy_' + @CustomerCode +'.png'
	Select @TrophyPicturePath
END
GO
/****** Object:  Table [dbo].[CustomerClass]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerClass](
	[IDCustomerClass] [int] IDENTITY(1,1) NOT NULL,
	[CustomerClassName] [varchar](60) NOT NULL,
	[CustomerClassDescription] [varchar](250) NOT NULL,
	[IDLevelType] [int] NOT NULL,
	[IDPackageGroupType] [int] NOT NULL,
 CONSTRAINT [PK_CustomerClass] PRIMARY KEY CLUSTERED 
(
	[IDCustomerClass] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerClass] ON
INSERT [dbo].[CustomerClass] ([IDCustomerClass], [CustomerClassName], [CustomerClassDescription], [IDLevelType], [IDPackageGroupType]) VALUES (1, N'University', N'This type is for University customers', 1, 1)
SET IDENTITY_INSERT [dbo].[CustomerClass] OFF
/****** Object:  Table [dbo].[Activity]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[IDActivity] [int] IDENTITY(1,1) NOT NULL,
	[IDStudent] [int] NOT NULL,
	[Action] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[IDActivity] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Activity] ON
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (1, 1, 1, CAST(0x00009F2600CF3CAF AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (2, 1, 1, CAST(0x00009F2600EE0547 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (3, 1, 1, CAST(0x00009F2600F138A0 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (4, 1, 1, CAST(0x00009F2600F555E0 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (5, 1, 1, CAST(0x00009F2600F82E2A AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (6, 1, 1, CAST(0x00009F2600F928C7 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (7, 1, 1, CAST(0x00009F2600F99C23 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (8, 1, 1, CAST(0x00009F2600FABA65 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (9, 1, 1, CAST(0x00009F2600FB4E61 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (10, 1, 1, CAST(0x00009F2601077EB8 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (11, 1, 1, CAST(0x00009F260108F985 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (12, 1, 1, CAST(0x00009F2601099929 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (13, 1, 1, CAST(0x00009F26010A196B AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (14, 1, 1, CAST(0x00009F26010F8F1E AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (15, 1, 1, CAST(0x00009F2601108861 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (16, 1, 1, CAST(0x00009F260111D238 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (17, 1, 1, CAST(0x00009F2601123F4F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (18, 1, 1, CAST(0x00009F2700D29342 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (19, 1, 1, CAST(0x00009F2700D2F287 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (20, 1, 1, CAST(0x00009F2700D32B3E AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (21, 1, 1, CAST(0x00009F2700D3C66F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (22, 1, 1, CAST(0x00009F2700D42665 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (23, 1, 1, CAST(0x00009F2700D5E8AB AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (24, 1, 1, CAST(0x00009F2700DF6EC5 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (25, 1, 1, CAST(0x00009F2700E0A91F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (26, 1, 1, CAST(0x00009F2700E1D52C AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (27, 1, 1, CAST(0x00009F2700E1FDFA AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (28, 1, 1, CAST(0x00009F2700E2DAFF AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (29, 2, 1, CAST(0x00009F2700E2F293 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (30, 1, 1, CAST(0x00009F2700E4A8A8 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (31, 1, 1, CAST(0x00009F2700E5B81D AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (32, 1, 1, CAST(0x00009F2700E61FE6 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (33, 1, 1, CAST(0x00009F2700E64107 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (34, 1, 1, CAST(0x00009F2700E83195 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (35, 1, 1, CAST(0x00009F2700E88CC0 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (36, 1, 1, CAST(0x00009F2700E8C395 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (37, 1, 1, CAST(0x00009F2700EEE60C AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (38, 1, 1, CAST(0x00009F270101A308 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (39, 1, 1, CAST(0x00009F270101D1D4 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (40, 1, 1, CAST(0x00009F270102143F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (41, 1, 2, CAST(0x00009F27010519C1 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (42, 1, 2, CAST(0x00009F2701052FC8 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (43, 1, 1, CAST(0x00009F2701057523 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (44, 1, 1, CAST(0x00009F27010671C2 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (45, 1, 1, CAST(0x00009F270117D398 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (46, 1, 1, CAST(0x00009F27011AA659 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (47, 1, 1, CAST(0x00009F27011ADF8D AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (48, 1, 1, CAST(0x00009F27011B7E13 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (49, 1, 1, CAST(0x00009F27011BE164 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (50, 1, 1, CAST(0x00009F2800AA6CB6 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (51, 1, 1, CAST(0x00009F2800B4B401 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (52, 1, 1, CAST(0x00009F2800BA9002 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (53, 1, 1, CAST(0x00009F2800BB1883 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (54, 1, 1, CAST(0x00009F2800BDA84C AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (55, 1, 1, CAST(0x00009F2800BE160F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (56, 1, 1, CAST(0x00009F2800BEF89A AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (57, 1, 1, CAST(0x00009F2800BF3B26 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (58, 1, 1, CAST(0x00009F2800BFEFA1 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (59, 1, 1, CAST(0x00009F2800C0E28B AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (60, 1, 1, CAST(0x00009F2800C10BA5 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (61, 1, 1, CAST(0x00009F2801011DB9 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (62, 1, 1, CAST(0x00009F2E00D7C589 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (63, 1, 1, CAST(0x00009F2E00D8AB73 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (64, 1, 1, CAST(0x00009F2E00E6F674 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (65, 1, 1, CAST(0x00009F2E00E7C4AB AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (66, 1, 1, CAST(0x00009F2E0141C5F3 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (67, 1, 1, CAST(0x00009F2E0141FF1C AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (68, 1, 1, CAST(0x00009F2E014290F1 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (69, 1, 1, CAST(0x00009F2E0142FB2B AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (70, 1, 1, CAST(0x00009F2E01430573 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (71, 1, 1, CAST(0x00009F2E0143E282 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (72, 1, 1, CAST(0x00009F2E0150FFE4 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (73, 2, 1, CAST(0x00009F2E015151EE AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (74, 1, 1, CAST(0x00009F2E0153EA99 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (75, 1, 1, CAST(0x00009F2E0154946F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (76, 3, 1, CAST(0x00009F2F00C0F51E AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (77, 1, 1, CAST(0x00009F2F00C20619 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (78, 3, 1, CAST(0x00009F2F0102EB22 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (79, 1, 1, CAST(0x00009F5600FC8B66 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (80, 1, 1, CAST(0x00009F5601025837 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (81, 1, 1, CAST(0x00009F560102DEBA AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (82, 1, 1, CAST(0x00009F560111B741 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (83, 1, 1, CAST(0x00009F560111FB1C AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (84, 1, 1, CAST(0x00009F560113FB04 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (85, 1, 1, CAST(0x00009F560126A701 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (86, 1, 1, CAST(0x00009F5700D05557 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (87, 1, 1, CAST(0x00009F5700F4D164 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (88, 1, 1, CAST(0x00009F570115040B AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (89, 1, 1, CAST(0x00009F57011C1BE0 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (90, 1, 1, CAST(0x00009F57011EE38B AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (91, 1, 1, CAST(0x00009F57011F00C1 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (92, 1, 1, CAST(0x00009F57011FE699 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (93, 1, 1, CAST(0x00009F570120CDC8 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (94, 1, 1, CAST(0x00009F5701259B26 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (95, 1, 1, CAST(0x00009F5701260375 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (96, 1, 1, CAST(0x00009F5701266F84 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (97, 1, 1, CAST(0x00009F5701269FB7 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (98, 1, 1, CAST(0x00009F5701285A7F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (99, 1, 1, CAST(0x00009F5701288D08 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (100, 1, 1, CAST(0x00009F570129FB71 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (101, 1, 1, CAST(0x00009F57012A80DD AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (102, 1, 1, CAST(0x00009F57013215E0 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (103, 1, 2, CAST(0x00009F570132771C AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (104, 1, 2, CAST(0x00009F5701328C7F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (105, 1, 1, CAST(0x00009F570136D982 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (106, 1, 1, CAST(0x00009F570137C66A AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (107, 1, 1, CAST(0x00009F5900839826 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (108, 1, 1, CAST(0x00009F5900845D83 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (109, 1, 1, CAST(0x00009F5900848175 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (110, 1, 1, CAST(0x00009F590086155B AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (111, 1, 1, CAST(0x00009F590086D54D AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (112, 1, 1, CAST(0x00009F590086EF70 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (113, 1, 1, CAST(0x00009F5900874E03 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (114, 1, 1, CAST(0x00009F590087801C AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (115, 1, 1, CAST(0x00009F5900880976 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (116, 1, 1, CAST(0x00009F590088801D AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (117, 1, 1, CAST(0x00009F59008D0010 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (118, 1, 1, CAST(0x00009F5900A1DE37 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (119, 1, 1, CAST(0x00009F5900A306E8 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (120, 1, 1, CAST(0x00009F5900A44C59 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (121, 1, 1, CAST(0x00009F5900A4A4D1 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (122, 1, 1, CAST(0x00009F5900A4B755 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (123, 1, 1, CAST(0x00009F5900A58D0E AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (124, 1, 1, CAST(0x00009F5900A66E51 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (125, 1, 1, CAST(0x00009F5900A70C0F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (126, 1, 1, CAST(0x00009F5900A758AE AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (127, 1, 1, CAST(0x00009F5900A7C91F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (128, 1, 1, CAST(0x00009F5900A85AAB AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (129, 1, 1, CAST(0x00009F5900A89954 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (130, 1, 1, CAST(0x00009F5900ABBCF2 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (131, 1, 1, CAST(0x00009F5900B77628 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (132, 1, 1, CAST(0x00009F5900D1021C AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (133, 1, 1, CAST(0x00009F5900D1DE99 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (134, 1, 1, CAST(0x00009F5900E384AF AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (135, 1, 1, CAST(0x00009F5900E3FECB AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (136, 1, 1, CAST(0x00009F5900E60F23 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (137, 1, 1, CAST(0x00009F9C00F0683F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (138, 2, 1, CAST(0x00009F9C00F5CC75 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (139, 2, 1, CAST(0x00009F9C00F64295 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (140, 2, 1, CAST(0x00009F9C00F6C593 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (141, 2, 1, CAST(0x00009F9C00F914F5 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (142, 2, 1, CAST(0x00009F9C00F959E4 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (143, 2, 1, CAST(0x00009F9C00FF75D0 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (144, 2, 1, CAST(0x00009F9C010206E1 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (145, 2, 1, CAST(0x00009F9C01021D3C AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (146, 2, 1, CAST(0x00009F9C01028CB2 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (147, 2, 1, CAST(0x00009F9C0102F802 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (148, 2, 1, CAST(0x00009F9C010335AC AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (149, 1, 1, CAST(0x00009F9C0103F127 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (150, 2, 1, CAST(0x00009F9C01040795 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (151, 2, 1, CAST(0x00009F9C01048911 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (152, 2, 1, CAST(0x00009F9C01087845 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (153, 2, 1, CAST(0x00009F9C01087BE1 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (154, 2, 1, CAST(0x00009F9C010886AA AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (155, 1, 1, CAST(0x00009F9C01089004 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (156, 1, 1, CAST(0x00009F9C010C448D AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (157, 2, 1, CAST(0x00009F9C010C7179 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (158, 2, 1, CAST(0x00009F9C01239F3D AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (159, 1, 1, CAST(0x00009FBF00C8A0FF AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (160, 1, 1, CAST(0x00009FBF00D58A61 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (161, 2, 1, CAST(0x0000A02300A10BD1 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (162, 1, 1, CAST(0x0000A02300A137F7 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (163, 2, 1, CAST(0x0000A1A400EA28E8 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (164, 1, 1, CAST(0x0000A1A400EA87A9 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (165, 1, 1, CAST(0x0000A1A400EB946F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (166, 1, 1, CAST(0x0000A1A400EC2379 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (167, 1, 1, CAST(0x0000A1A400ECA3ED AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (168, 1, 1, CAST(0x0000A1A400F95180 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (169, 1, 1, CAST(0x0000A1A40105F681 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (170, 1, 1, CAST(0x0000A1A4010A3295 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (171, 1, 1, CAST(0x0000A1A4010C627F AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (172, 1, 1, CAST(0x0000A1A5009BE321 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (173, 1, 1, CAST(0x0000A1A500A70AD7 AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (174, 1, 1, CAST(0x0000A1A50100262B AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (175, 1, 1, CAST(0x0000A1A50100342B AS DateTime))
INSERT [dbo].[Activity] ([IDActivity], [IDStudent], [Action], [Date]) VALUES (176, 1, 1, CAST(0x0000A1A50101E48E AS DateTime))
SET IDENTITY_INSERT [dbo].[Activity] OFF
/****** Object:  StoredProcedure [dbo].[Student_ById_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Get the Student by his ID
-- =============================================
Create PROCEDURE [dbo].[Student_ById_SEL]
	@IDStudent int
AS
BEGIN
	select 
        s.IDStudent, 
        s.StudentName, 
        s.StudentCode, 
        s.StudentEmail, 
        s.StudentDescription
    from Student s
    where s.IDStudent=@IDStudent
END
GO
/****** Object:  StoredProcedure [dbo].[Student_UPD]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Insert a new Student
-- =============================================
create PROCEDURE [dbo].[Student_UPD]
	@IDStudent int,
	@StudentName varchar(60),
	@StudentEmail varchar(60),
	@StudentCode varchar(60),
	@StudentDescription varchar(250)
AS
BEGIN
	Update Student set 
        StudentName=@StudentName, 
        StudentCode=@StudentCode,
        StudentEmail=@StudentEmail, 
        StudentDescription=@StudentDescription
    where IDStudent=@IDStudent
END
GO
/****** Object:  StoredProcedure [dbo].[Student_INS]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Insert a new Student
-- =============================================
CREATE PROCEDURE [dbo].[Student_INS]
	@StudentName varchar(60),
	@StudentEmail varchar(60),
	@StudentCode varchar(60),
	@StudentDescription varchar(250),
	@StudentPassword varchar(250)
AS
BEGIN
	--Declare @IDStudent int
	Insert into Student
		(StudentName, StudentCode, StudentEmail, StudentDescription,StudentPassword) 
	Values 
		(@StudentName, @StudentCode, @StudentEmail, @StudentDescription,@StudentPassword)
	--SET @IDStudent  = SCOPE_IDENTITY();
	--Select @IDStudent
END
GO
/****** Object:  Table [dbo].[Message]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Message](
	[IDMessage] [int] IDENTITY(1,1) NOT NULL,
	[Message] [varchar](250) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Type] [int] NOT NULL,
	[IDStudent] [int] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[IDMessage] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON
INSERT [dbo].[Message] ([IDMessage], [Message], [Date], [Type], [IDStudent]) VALUES (56, N'Hi everyone! Aurora content is just now live!', CAST(0x0000A1A60109732B AS DateTime), 1, 3)
INSERT [dbo].[Message] ([IDMessage], [Message], [Date], [Type], [IDStudent]) VALUES (57, N'Hi Jenny! Thanks, will take a look at it!', CAST(0x0000A1A60109FD42 AS DateTime), 1, 1)
INSERT [dbo].[Message] ([IDMessage], [Message], [Date], [Type], [IDStudent]) VALUES (58, N'Nice, great content as usual!', CAST(0x0000A1A6010A1D2A AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[Message] OFF
/****** Object:  StoredProcedure [dbo].[Message_UPD]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Insert a Message
-- =============================================
create PROCEDURE [dbo].[Message_UPD]
	@Message varchar(250),
	@Date datetime,
	@Type int,
	@IDStudent int,
	@IDMessage int
AS
BEGIN
	Update Message set 
		Message=@Message, 
		Date =@Date,
		Type=@Type,
		IDStudent=@IDStudent
	where IDMessage=@IDMessage
END
GO
/****** Object:  StoredProcedure [dbo].[Message_INS]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Insert a Message
-- =============================================
CREATE PROCEDURE [dbo].[Message_INS]
	@Message varchar(250),
	@Date datetime,
	@Type int,
	@IDStudent int
AS
BEGIN
	declare @IDMessage int
	Insert into 
		Message(Message, Date, Type, IDStudent) 
		Values (@Message, @Date, @Type, @IDStudent)
	Set @IDMessage = SCOPE_IDENTITY();
	select @IDMessage
END
GO
/****** Object:  StoredProcedure [dbo].[Student_ChangePassword]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 21st July 2011
-- Description:	Changes password of Student
--				if old password matches
-- =============================================
CREATE PROCEDURE [dbo].[Student_ChangePassword]
	@IDStudent int,
	@OldPassword varchar(60),
	@NewPassword varchar(60),
	@ReturnValue int output
AS
BEGIN
	
	Set @ReturnValue = -1
	if (select COUNT(*) from Student s where s.IDStudent=@IDStudent and s.StudentPassword = @OldPassword)=1
		BEGIN
		Update Student set StudentPassword=@NewPassword where IDStudent=@IDStudent
		INSERT INTO Activity(IDStudent,Action,Date)
		VALUES (@IDStudent,2,GETDATE())
		set @ReturnValue = 1
		END
END
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[IDCustomer] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](60) NOT NULL,
	[CustomerCode] [varchar](10) NOT NULL,
	[IDCustomerClass] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[IDCustomer] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Customer] ON [dbo].[Customer] 
(
	[CustomerCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([IDCustomer], [CustomerName], [CustomerCode], [IDCustomerClass]) VALUES (1, N'A.T.T.T Panamá', N'1.1', 1)
INSERT [dbo].[Customer] ([IDCustomer], [CustomerName], [CustomerCode], [IDCustomerClass]) VALUES (2, N'TestUniveristy2', N'1.2', 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[Level]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Level](
	[IDLevel] [int] IDENTITY(1,1) NOT NULL,
	[LevelName] [varchar](60) NOT NULL,
	[LevelDescription] [varchar](250) NOT NULL,
	[LevelCode] [varchar](20) NOT NULL,
	[IDCustomer] [int] NOT NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[IDLevel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Level] ON
INSERT [dbo].[Level] ([IDLevel], [LevelName], [LevelDescription], [LevelCode], [IDCustomer]) VALUES (1, N'Laws', N'This is the Laws career', N'1.1.1', 1)
INSERT [dbo].[Level] ([IDLevel], [LevelName], [LevelDescription], [LevelCode], [IDCustomer]) VALUES (2, N'Economics', N'This is the economics career', N'1.1.2', 1)
INSERT [dbo].[Level] ([IDLevel], [LevelName], [LevelDescription], [LevelCode], [IDCustomer]) VALUES (3, N'Medicine', N'This is the medicine career', N'1.1.3', 1)
INSERT [dbo].[Level] ([IDLevel], [LevelName], [LevelDescription], [LevelCode], [IDCustomer]) VALUES (4, N'Civil Engineering', N'This is the civil Engineering career', N'1.2.1', 2)
INSERT [dbo].[Level] ([IDLevel], [LevelName], [LevelDescription], [LevelCode], [IDCustomer]) VALUES (5, N'Educación Vial', N'Educución víal en Panamá', N'1.3.1', 1)
SET IDENTITY_INSERT [dbo].[Level] OFF
/****** Object:  StoredProcedure [dbo].[Customer_ById_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Select a Customer
-- =============================================
CREATE PROCEDURE [dbo].[Customer_ById_SEL]
	@IDCustomer int
AS
BEGIN
	Select * from Customer where IDCustomer=@IDCustomer
END
GO
/****** Object:  StoredProcedure [dbo].[Customer_ByCode_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Select a Customer
-- =============================================
create PROCEDURE [dbo].[Customer_ByCode_SEL]
	@CustomerCode varchar(10)
AS
BEGIN
	Select * from Customer where CustomerCode=@CustomerCode
END
GO
/****** Object:  StoredProcedure [dbo].[Customer_SEL_All]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Select all Customer
-- =============================================
CREATE PROCEDURE [dbo].[Customer_SEL_All]
AS
BEGIN
	Select * from Customer
END
GO
/****** Object:  StoredProcedure [dbo].[PackageGroupTypeDisplayName_ByCustomerCode_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Select the PackageGroupTypeDisplayName
--				for a Customer by his CustomerCode
-- =============================================
create PROCEDURE [dbo].[PackageGroupTypeDisplayName_ByCustomerCode_SEL]
	@CustomerCode varchar(10)
AS
BEGIN
	select 
        p.PackageGroupTypeDisplayName
    from PackageGroupType p 
        join CustomerClass cc
            on p.IDPackageGroupType = cc.IDPackageGroupType
        join Customer c
            on cc.IDCustomerClass = c.IDCustomerClass
    where c.CustomerCode=@CustomerCode
END
GO
/****** Object:  StoredProcedure [dbo].[LevelTypeDisplayName_ByCustomerCode_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Select the LevelTypeDisplayName
--				for a Customer by his CustomerCode
-- =============================================
create PROCEDURE [dbo].[LevelTypeDisplayName_ByCustomerCode_SEL]
	@CustomerCode varchar(10)
AS
BEGIN
	select 
		l.LevelTypeDisplayName
	from LevelType l 
		join CustomerClass cc
			on l.IDLevelType = cc.IDLevelType
		join Customer c
			on cc.IDCustomerClass = c.IDCustomerClass
	where c.CustomerCode=@CustomerCode
END
GO
/****** Object:  Table [dbo].[PackageGroup]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackageGroup](
	[IDPackageGroup] [int] IDENTITY(1,1) NOT NULL,
	[IDLevel] [int] NOT NULL,
	[PackageGroupName] [varchar](60) NOT NULL,
	[PackageGroupDescription] [varchar](250) NOT NULL,
	[PackageGroupCode] [varchar](20) NOT NULL,
 CONSTRAINT [PK_PackageGroup] PRIMARY KEY CLUSTERED 
(
	[IDPackageGroup] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PackageGroup] ON
INSERT [dbo].[PackageGroup] ([IDPackageGroup], [IDLevel], [PackageGroupName], [PackageGroupDescription], [PackageGroupCode]) VALUES (6, 1, N'Educación Vial Part.1', N'Educación Vial Part.1', N'1.1.4.1')
INSERT [dbo].[PackageGroup] ([IDPackageGroup], [IDLevel], [PackageGroupName], [PackageGroupDescription], [PackageGroupCode]) VALUES (11, 1, N'Educación Vial Part.2', N'Educación Vial Part.2', N'1.1.4.2')
INSERT [dbo].[PackageGroup] ([IDPackageGroup], [IDLevel], [PackageGroupName], [PackageGroupDescription], [PackageGroupCode]) VALUES (13, 1, N'Womens in NASA Program', N'Womens in NASA Program', N'1.1.4.3')
SET IDENTITY_INSERT [dbo].[PackageGroup] OFF
/****** Object:  Table [dbo].[StudentLevel]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentLevel](
	[IDStudentLevel] [int] IDENTITY(1,1) NOT NULL,
	[IDStudent] [int] NOT NULL,
	[IDLevel] [int] NOT NULL,
 CONSTRAINT [PK_StudentLevel] PRIMARY KEY CLUSTERED 
(
	[IDStudentLevel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StudentLevel] ON
INSERT [dbo].[StudentLevel] ([IDStudentLevel], [IDStudent], [IDLevel]) VALUES (7, 1, 1)
INSERT [dbo].[StudentLevel] ([IDStudentLevel], [IDStudent], [IDLevel]) VALUES (8, 2, 1)
SET IDENTITY_INSERT [dbo].[StudentLevel] OFF
/****** Object:  Table [dbo].[StudentPackageGroup]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentPackageGroup](
	[IDStudentPackageGroup] [int] IDENTITY(1,1) NOT NULL,
	[IDStudent] [int] NOT NULL,
	[IDPackageGroup] [int] NOT NULL,
	[BeFinishedUntil] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentPackageGroup] PRIMARY KEY CLUSTERED 
(
	[IDStudentPackageGroup] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StudentPackageGroup] ON
INSERT [dbo].[StudentPackageGroup] ([IDStudentPackageGroup], [IDStudent], [IDPackageGroup], [BeFinishedUntil]) VALUES (12, 1, 6, CAST(0x0000A2A600000000 AS DateTime))
INSERT [dbo].[StudentPackageGroup] ([IDStudentPackageGroup], [IDStudent], [IDPackageGroup], [BeFinishedUntil]) VALUES (13, 1, 11, CAST(0x0000A2A600000000 AS DateTime))
INSERT [dbo].[StudentPackageGroup] ([IDStudentPackageGroup], [IDStudent], [IDPackageGroup], [BeFinishedUntil]) VALUES (15, 2, 6, CAST(0x0000A2A600000000 AS DateTime))
INSERT [dbo].[StudentPackageGroup] ([IDStudentPackageGroup], [IDStudent], [IDPackageGroup], [BeFinishedUntil]) VALUES (16, 2, 11, CAST(0x0000A2A600000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[StudentPackageGroup] OFF
/****** Object:  StoredProcedure [dbo].[Student_ProfilePicturePath]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 13th July 2011
-- Description:	Creates a String representing the Path to the Picture
-- =============================================
CREATE PROCEDURE [dbo].[Student_ProfilePicturePath]
	@IDStudent int,
	@ProfilePicturePath varchar(250) output
AS
BEGIN	
	
	Declare @CustomerCode varchar(20)
	Declare @StudentCode varchar(20)
	
	Select @StudentCode=s.StudentCode
	from Student s
	where s.IDStudent = @IDStudent
	
	Select @CustomerCode=c.CustomerCode
	from StudentLevel s 
		join Level l on
			s.IDLevel = l.IDLevel
		join Customer c on
			l.IDCustomer = c.IDCustomer
	where 
		s.IDStudent = @IDStudent
	
	
	Set @ProfilePicturePath = @CustomerCode + '#students#' + @StudentCode
	Select @ProfilePicturePath
END
GO
/****** Object:  StoredProcedure [dbo].[Student_CheckCredentials]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 19th July 2011
-- Description:	Checks if the offered Credentials are Correct and
--				returns IDStudent if correct -1 else
-- =============================================
CREATE Procedure [dbo].[Student_CheckCredentials]
	@Username varchar(60),
	@Password varchar(60),
	@CustomerCode varchar(20),
	@IDStudent int output
AS
BEGIN
	Set @IDStudent = -1
	Select Distinct @IDStudent=s.IDStudent
	From Student s

	join StudentLevel sl
	on s.IDStudent = sl.IDStudent
	
	join Level l
	on sl.IDLevel = l.IDLevel
	
	join Customer c
	on l.IDCustomer = c.IDCustomer
	
	where
		c.CustomerCode= @CustomerCode and 
		(s.StudentCode=@Username or s.StudentEmail = @Username or s.StudentName = @Username) and
		s.StudentPassword=@Password

	if @IDStudent>0
		Begin
			Insert Into Activity(IDStudent,Action,Date)
			Values (@IDStudent,1,GetDate())
		End
End
GO
/****** Object:  StoredProcedure [dbo].[Student_StatusPicturePath]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 13th July 2011
-- Description:	Creates a String representing the Path to the Status Picture
-- =============================================
CREATE PROCEDURE [dbo].[Student_StatusPicturePath]
	@IDStudent int,
	@StatusPicturePath varchar(250) output
AS
BEGIN	
	Declare @CustomerCode varchar(20)
	Declare @StudentCode varchar(20)
	
	Select @StudentCode=s.StudentCode
	from Student s
	where s.IDStudent = @IDStudent
	
	Select @CustomerCode=c.CustomerCode
	from StudentLevel s 
		join Level l on
			s.IDLevel = l.IDLevel
		join Customer c on
			l.IDCustomer = c.IDCustomer
	where 
		s.IDStudent = @IDStudent
	
	
	Set @StatusPicturePath = @CustomerCode + '#students#status#' + @StudentCode
	Select @StatusPicturePath
END
GO
/****** Object:  StoredProcedure [dbo].[Student_RemoveLevel]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Remove Level from Student
-- =============================================
create PROCEDURE [dbo].[Student_RemoveLevel]
	@IDStudent int,
	@IDLevel int
AS
BEGIN
	DELETE from StudentLevel
	WHERE IDStudent=@IDStudent AND IDLevel=@IDLevel;
END
GO
/****** Object:  StoredProcedure [dbo].[Student_AddLevel]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Insert a new Student
-- =============================================
create PROCEDURE [dbo].[Student_AddLevel]
	@IDStudent int,
	@IDLevel int
AS
BEGIN
	Insert into StudentLevel(IDStudent, IDLevel) 
	Values (@IDStudent, @IDLevel);
END
GO
/****** Object:  StoredProcedure [dbo].[Student_ByCustomerId_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Remove Answered Concept from Student
-- =============================================
create PROCEDURE [dbo].[Student_ByCustomerId_SEL]
	@IDCustomer int
AS
BEGIN
	select Distinct
        s.IDStudent, 
        s.StudentName, 
        s.StudentCode, 
        s.StudentEmail, 
        s.StudentDescription
    from Student s
        join StudentLevel sl
            on s.IDStudent = sl.IDStudent
        join Level l
            on sl.IDLevel = l.IDLevel
    where 
        l.IDCustomer=@IDCustomer
END
GO
/****** Object:  Table [dbo].[Package]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Package](
	[IDPackage] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [varchar](60) NOT NULL,
	[PackageCode] [varchar](20) NOT NULL,
	[PackageDescription] [varchar](250) NOT NULL,
	[IDPackageGroup] [int] NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[IDPackage] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Package] ON
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (10, N'Velocidad en Vía', N'1.1.4.1.1', N'Velocidad en Vía', 6)
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (11, N'Señales de Transito', N'1.1.4.1.2', N'Señales de Transito', 6)
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (12, N'Conceptos Generales', N'1.1.4.1.3', N'Conceptos Generales', 6)
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (13, N'Estacionamientos', N'1.1.4.1.4', N'Estacionamientos', 11)
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (14, N'Luces', N'1.1.4.1.5', N'Luces', 11)
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (15, N'Constelations', N'1.1.4.1.6', N'Learn about the zodiac constelations', 11)
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (16, N'Planets', N'1.1.4.17', N'Explore the planets of our solar system', 13)
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (17, N'The moon', N'1.1.4.18', N'Learn about our moon and how it affects our lifes', 13)
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (18, N'The sun', N'1.1.4.19', N'See how the sun makes our life possible', 13)
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (19, N'Aurora', N'1.1.9.1', N'Here you will earn about those beautiful lights that appear in the northern and southern night skies and how Nature produces them!!', 13)
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (22, N'Solar Wind', N'1.1.9.2', N'The Sun is our nearest star! It took thousands of years for us to realize this simple fact, It took thousands of years for us to realize this simple fact, but now we can use it to study other stars in the universe.', 13)
INSERT [dbo].[Package] ([IDPackage], [PackageName], [PackageCode], [PackageDescription], [IDPackageGroup]) VALUES (23, N'Magnetic Field', N'1.1.9.3', N'A compass tells you what direction is ''North'', but have you ever wondered how it can do that? ', 13)
SET IDENTITY_INSERT [dbo].[Package] OFF
/****** Object:  StoredProcedure [dbo].[Message_ByStudentId_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Get all Messages for a Student
-- =============================================
CREATE PROCEDURE [dbo].[Message_ByStudentId_SEL]
	@IDStudent int
AS
BEGIN
	if (select COUNT(*) from Message m join Student s on m.IDStudent = s.IDStudent 
		join StudentLevel sl on sl.IDStudent = sl.IDStudent 
		join Level l on l.IDLevel = sl.IDLevel
		join Customer c on l.IDCustomer = c.IDCustomer
	where m.Date>DATEADD(D,-4,GETDATE()) AND sl.IDLevel in
		(
			select sl2.IDLevel from StudentLevel sl2
			where sl2.IDStudent=1
		)) >0
		BEGIN
			select distinct
				m.IDMessage, 
				m.Message, 
				m.Date, 
				m.Type, 
				s.StudentName, 
				s.StudentCode,
				s.IDStudent
				,c.CustomerCode
			from Message m 
				join Student s 
					on m.IDStudent = s.IDStudent 
				join StudentLevel sl 
					on s.IDStudent = sl.IDStudent 
				join Level l 
					on l.IDLevel = sl.IDLevel
				join Customer c 
					on l.IDCustomer = c.IDCustomer
			where m.Date>DATEADD(D,-4,GETDATE()) 
			AND sl.IDLevel in
				(
					select sl2.IDLevel from StudentLevel sl2
					where sl2.IDStudent=@IDStudent
				)
			order by m.Date desc
		END
	else
		BEGIN
			select distinct top 4
				m.IDMessage, 
				m.Message, 
				m.Date, 
				m.Type, 
				s.StudentName, 
				s.StudentCode,
				s.IDStudent
				,c.CustomerCode
			from Message m 
				join Student s 
					on m.IDStudent = s.IDStudent 
				join StudentLevel sl 
					on s.IDStudent = sl.IDStudent 
				join Level l 
					on l.IDLevel = sl.IDLevel
				join Customer c 
					on l.IDCustomer = c.IDCustomer
			where sl.IDLevel in
				(
					select sl2.IDLevel from StudentLevel sl2
					where sl2.IDStudent=@IDStudent
				)
			order by m.Date desc
		END
END
GO
/****** Object:  StoredProcedure [dbo].[Message_ById_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Select a Message
-- =============================================
CREATE PROCEDURE [dbo].[Message_ById_SEL]
	@IDMessage int
AS
BEGIN
	select 
        m.IDMessage, 
        m.Message, 
        m.Date, 
        m.Type, 
        s.StudentName, 
        s.StudentCode,
        s.IDStudent,
        c.CustomerCode
    from Message m join Student s on m.IDStudent = s.IDStudent 
        join StudentLevel sl on sl.IDStudent = sl.IDStudent 
        join Level l on l.IDLevel = sl.IDLevel
        join Customer c on l.IDCustomer = c.IDCustomer
    where m.IDMessage=@IDMessage
END
GO
/****** Object:  StoredProcedure [dbo].[Message_LastId_ByStudentId_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Get the last Id the student should
--				see to know if refresh is necessary
-- =============================================
CREATE PROCEDURE [dbo].[Message_LastId_ByStudentId_SEL]
	@IDStudent int
AS
BEGIN

	if (select COUNT(*) from Message m join Student s on m.IDStudent = s.IDStudent 
		join StudentLevel sl on sl.IDStudent = sl.IDStudent 
		join Level l on l.IDLevel = sl.IDLevel
		join Customer c on l.IDCustomer = c.IDCustomer
	where m.Date>DATEADD(D,-4,GETDATE()) AND sl.IDLevel in
		(
			select sl2.IDLevel from StudentLevel sl2
			where sl2.IDStudent=1
		)) >0
		BEGIN
			select 
				max(m.IDMessage) as LastId
			from Message m join Student s on m.IDStudent = s.IDStudent 
				join StudentLevel sl on sl.IDStudent = sl.IDStudent 
				join Level l on l.IDLevel = sl.IDLevel
				join Customer c on l.IDCustomer = c.IDCustomer
			where m.Date>DATEADD(D,-4,GETDATE()) AND sl.IDLevel in
				(
					select sl2.IDLevel from StudentLevel sl2
					where sl2.IDStudent=@IDStudent
				)
		END
	else
		BEGIN
			select top 1
				m.IDMessage as LastId
			from Message m join Student s on m.IDStudent = s.IDStudent 
				join StudentLevel sl on sl.IDStudent = sl.IDStudent 
				join Level l on l.IDLevel = sl.IDLevel
				join Customer c on l.IDCustomer = c.IDCustomer
			where sl.IDLevel in
				(
					select sl2.IDLevel from StudentLevel sl2
					where sl2.IDStudent=@IDStudent
				)
			order by m.Date desc
		END
END
GO
/****** Object:  StoredProcedure [dbo].[PackageGroup_ByLevelId_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Get PackageGroup for a Level
-- =============================================
CREATE PROCEDURE [dbo].[PackageGroup_ByLevelId_SEL]
	@IDLevel int
AS
BEGIN
select 
    p.IDPackageGroup,
    p.PackageGroupName,
    p.PackageGroupDescription,
    p.PackageGroupCode
from PackageGroup p
where p.IDLevel=@IDLevel
END
GO
/****** Object:  StoredProcedure [dbo].[PackageGroup_ById_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Select a PackageGroup
-- =============================================
CREATE PROCEDURE [dbo].[PackageGroup_ById_SEL]
	@IDPackageGroup int
AS
BEGIN
	Select * from PackageGroup where IDPackageGroup=@IDPackageGroup
END
GO
/****** Object:  StoredProcedure [dbo].[PackageGroup_INS]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Insert a PackageGroup
-- =============================================
CREATE PROCEDURE [dbo].[PackageGroup_INS]
	@PackageGroupName varchar(60),
	@PackageGroupDescription varchar(250),
	@PackageGroupCode varchar(20),
	@IDLevel int
AS
BEGIN
	Declare @IDPackageGroup int
	Insert into PackageGroup
		(PackageGroupName, PackageGroupDescription,PackageGroupCode,IDLevel) 
		Values (@PackageGroupName, @PackageGroupDescription,@PackageGroupCode,@IDLevel)
    SET @IDPackageGroup  = SCOPE_IDENTITY();
    select @IDPackageGroup
END
GO
/****** Object:  StoredProcedure [dbo].[PackageGroup_UPD]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Update a PackageGroup
-- =============================================
create PROCEDURE [dbo].[PackageGroup_UPD]
	@PackageGroupName varchar(60),
	@PackageGroupDescription varchar(250),
	@PackageGroupCode varchar(20),
	@IDPackageGroup int
AS
BEGIN
	Update PackageGroup set 
        PackageGroupName=@PackageGroupName, 
        PackageGroupDescription =@PackageGroupDescription,
        PackageGroupCode=@PackageGroupCode
    where IDPackageGroup=@IDPackageGroup
END
GO
/****** Object:  StoredProcedure [dbo].[Customer_DummyStudentPicturePath]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 19th July 2011
-- Description:	Creates a String representing the Customer Dummy Student Picture
-- =============================================
CREATE PROCEDURE [dbo].[Customer_DummyStudentPicturePath]
	@IDStudent int,
	@DummyStudentPicturePath varchar(250) output
AS
BEGIN	
	Declare @CustomerCode varchar(20)
	
	Select Distinct @CustomerCode=c.CustomerCode
	from Customer c 
		join Level l
			on c.IDCustomer = l.IDCustomer
		join StudentLevel sl
			on sl.IDLevel = l.IDLevel
	where
		sl.IDStudent = @IDStudent
	
	Set @DummyStudentPicturePath = @CustomerCode + '#students#dummy.jpg'
END
GO
/****** Object:  Table [dbo].[Concept]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Concept](
	[IDConcept] [int] IDENTITY(1,1) NOT NULL,
	[IDPackage] [int] NOT NULL,
	[ConceptName] [varchar](60) NOT NULL,
	[ConceptDescription] [varchar](250) NOT NULL,
	[ConceptCode] [varchar](20) NOT NULL,
	[Image] [varchar](256) NULL,
	[DetailImage] [varchar](256) NULL,
 CONSTRAINT [PK_Concept] PRIMARY KEY CLUSTERED 
(
	[IDConcept] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Concept] ON
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (315, 10, N'Velocidad en Carreteras', N'Velocidades en Carreteras', N'1.1.1.3.1.1', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (316, 10, N'Velocidad en Autopista', N'Velocidad en Autopista', N'1.1.1.3.1.2', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (317, 10, N'Velocidad en Calles', N'Velocidad en Calles', N'1.1.1.3.1.3', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (318, 10, N'Velocidad con luces bajas', N'Velocidad con luces bajas', N'1.1.1.3.1.4', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (320, 11, N'Figura No Estacionarse', N'E con Franja negra y Circulo rojo', N'1.1.1.3.1.5', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (322, 11, N'Figura de Venado', N'Figura de Venado', N'1.1.1.3.1.6', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (323, 11, N'Figura de Cruz Roja', N'Figura de Zona Escolar', N'1.1.1.3.1.7', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (324, 11, N'Figura de Zona Escolar', N'Figura de Zona Escolar', N'1.1.1.3.1.8', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (325, 11, N'Lugares y/o Servicios', N'Lugares y/o Servicios', N'1.1.1.3.1.9', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (326, 11, N'Figura de alto', N'Figura de alto', N'1.1.1.3.1.10', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (327, 12, N'Carretera', N'Carretera', N'1.1.1.3.1.11', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (328, 12, N'Autopista', N'Autopista', N'1.1.1.3.1.12', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (329, 12, N'Zona de peatones', N'Zona de peatones', N'1.1.1.3.1.13', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (330, 12, N'Reglamento de Transito', N'Reglamento de Transito', N'1.1.1.3.1.14', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (331, 13, N'Cerca de Hidrantes', N'Cerca de Hidrantes', N'1.1.1.3.1.15', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (332, 13, N'Llantas del Vehiculo', N'Llantas del Vehiculo', N'1.1.1.3.1.16', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (333, 13, N'Cerca de esquinas', N'Cerca de esquinas', N'1.1.1.3.1.17', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (334, 14, N'Luces Manuales', N'Luces Manuales', N'1.1.1.3.1.18', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (335, 14, N'Luces Retroceso', N'Luces Retroceso', N'1.1.1.3.1.19', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (336, 14, N'Luces de Freno', N'Luces de Freno', N'1.1.1.3.1.20', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (337, 14, N'Luces Pilotos', N'Luces Pilotos', N'1.1.1.3.1.21', NULL, NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (339, 15, N'Aries', N'Constelación de Aries', N'1.1.1.4.1.1', N'Styles/images/Aries.png', NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (340, 15, N'Tauro', N'Constelación de Tauro', N'1.1.1.4.1.2', N'Styles/images/Tauro.png', NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (341, 15, N'Géminis', N'Constelación de Géminis', N'1.1.1.4.1.3', N'Styles/images/Geminis.png', NULL)
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (342, 19, N'What is Aurora?', N'Learn about Aurora', N'1.1.9.1.1', N'Styles/images/Aurora_1.png', N'Styles/images/Aurora_2.png')
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (351, 19, N'Why Aurora occurs?', N'Find why the most common explanation about that particles from the Sun flow down the magnetic lines of force into the polar regions of Earth and collide with our atmosphere , is actually Incorrect.', N'1.1.9.1.2', N'Styles/images/Aurora_3.png', N'Styles/images/Aurora_3.png')
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (353, 22, N'Solar Interior', N'Deep within its core where gravitational pressures compress and heat its gases, atoms collide so furiously that some fuse together', N'1.1.9.2.1', N'Styles/images/Sun_1.png', N'Styles/images/Sun_1.png')
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (355, 22, N'Solar Flares', N'When electrical circuits get crossed, you often see sparks fly and lots of smoke as the wires become heated, see what happend in our sun.', N'1.1.9.2.2', N'Styles/images/Sun_2.png', N'Styles/images/Sun_2.png')
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (358, 23, N'Geomagnetism', N'A compass tells you what direction is ''North'', but have you ever wondered how it can do that? The answer has to do with something called magnetism', N'1.1.9.3.1', N'Styles/images/Magnetic_1.png', N'Styles/images/Magnetic_1.png')
INSERT [dbo].[Concept] ([IDConcept], [IDPackage], [ConceptName], [ConceptDescription], [ConceptCode], [Image], [DetailImage]) VALUES (359, 23, N'Exploring Earth''s Magnetic Field ', N'The core of Earth is also an electromagnet, learn more...', N'1.1.9.3.2', N'Styles/images/Magnetic_2.png', N'Styles/images/Magnetic_2.png')
SET IDENTITY_INSERT [dbo].[Concept] OFF
/****** Object:  StoredProcedure [dbo].[PackageGroup_RemoveStudent]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Remove a Student from a PackageGroup
-- =============================================
Create PROCEDURE [dbo].[PackageGroup_RemoveStudent]
	@IDStudent int,
	@IDPackageGroup int
AS
BEGIN
	DELETE from StudentPackageGroup
	WHERE IDStudent=@IDStudent AND IDPackageGroup=@IDPackageGroup;
END
GO
/****** Object:  StoredProcedure [dbo].[PackageGroup_ByStudentId_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Get the PackageGroups for a Student
-- =============================================
Create PROCEDURE [dbo].[PackageGroup_ByStudentId_SEL]
	@IDStudent int
AS
BEGIN
	select 
        p.IDPackageGroup,
        p.PackageGroupName,
        p.PackageGroupDescription,
        p.PackageGroupCode
    from PackageGroup p join StudentPackageGroup sp on p.IDPackageGroup = sp.IDPackageGroup
    where sp.IDStudent=@IDStudent AND GETDATE()<(sp.BeFinishedUntil+1)
END
GO
/****** Object:  StoredProcedure [dbo].[PackageGroup_AddStudent]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Add a Student to a PackageGroup
-- =============================================
Create PROCEDURE [dbo].[PackageGroup_AddStudent]
	@IDStudent int,
	@IDPackageGroup int,
	@BeFinishedUntil datetime
AS
BEGIN
	Insert into StudentPackageGroup(IDStudent, IDPackageGroup, BeFinishedUntil) 
		Values (@IDStudent, @IDPackageGroup, @BeFinishedUntil)
END
GO
/****** Object:  StoredProcedure [dbo].[Package_ByPackageGroup_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Get the Package Main Information for a PackageGroup
-- =============================================
Create PROCEDURE [dbo].[Package_ByPackageGroup_SEL]
	@IDPackageGroup int
AS
BEGIN
	select 
		p.IDPackage, 
		p.PackageName, 
		p.PackageCode, 
		p.PackageDescription 
	from Package p
	where p.IDPackageGroup=@IDPackageGroup
END
GO
/****** Object:  StoredProcedure [dbo].[PackageGroupName_ByPackageId_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Select the PackageGroupName
--				by a PackageID
-- =============================================
Create PROCEDURE [dbo].[PackageGroupName_ByPackageId_SEL]
	@IDPackage varchar(20)
AS
BEGIN
	select 
        p.PackageGroupName
    from PackageGroup p
        join Package p1
            on p.IDPackageGroup=p1.IDPackageGroup
    where p1.IDPackage=@IDPackage
END
GO
/****** Object:  Table [dbo].[Question]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Question](
	[IDQuestion] [int] IDENTITY(1,1) NOT NULL,
	[IDConcept] [int] NOT NULL,
	[QuestionName] [varchar](60) NOT NULL,
	[QuestionDescription] [varchar](250) NOT NULL,
	[Help] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[IDQuestion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (318, 315, N'Velocidad en carretera', N'Cual es la velocidad en carretera de zona urbana según la ley?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (320, 316, N'Velocidad en Autopista', N'Cual es la velocidad en autopistas de zona urbana según la ley?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (321, 317, N'Velocidad en Calles', N'Cual es la velocidad en calles de zona urbana según la ley?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (322, 318, N'Luces Bajas', N'A que velocidad se debe conducir con la luces bajas?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (326, 320, N'Señal No Estacionar', N'Que señal obligatoria cuenta con una E y una franja negra?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (327, 322, N'Señal de venado', N'Que indica señal con venado amarilla?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (328, 323, N'Figura cruz rosa', N'La cruz roja como señal indica?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (329, 324, N'Zona Escolar', N'Que indica señal de 2 hombres sobre la figura?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (330, 325, N'Area de servicios', N'Señales verdes o azules indican?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (331, 326, N'Figura de alto', N'Como se clasifica la señal de alto?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (332, 327, N'Definición Carretera', N'Definición de carretera?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (333, 328, N'Definicion Autopista', N'Que es autopista?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (334, 329, N'Zona de peatones', N'Se utiliza para el cruce de personas?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (335, 330, N'Reglamento de transito', N'Documento obligatorio dentro de un vehiculo?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (336, 331, N'Estacionamiento Hidrantes', N'A que distancia se puede estacionar de un hidrante?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (337, 332, N'Llantas del vehiculo', N'Como deben de quedar las llantas al estacionarse?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (338, 333, N'En esquinas', N'Se pueden estacionar cerca de las esquinas?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (339, 334, N'Luces manuales', N'Si no funcionan las direccionales?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (340, 335, N'Luces de retroceso', N'Luces de retroceso son?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (342, 336, N'Luces de frenos', N'Que luces usan los vehículos remolques?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (343, 337, N'Luces pilotos', N'Que luces deben utilizar los camiones?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (345, 339, N'Aries', N'¿Cuáles son las dos enanas rojas de Aries?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (347, 339, N'Aries', N'¿Cuántos cuernos tiene un carnero?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (348, 340, N'Tauro', N'¿Qué estrellas forman los cuernos del toro?', N'No help available')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (351, 342, N'How Northern Hemisphere observers call Aurora Lights?', N'Choose one', N'Northern Hemisphere observers call them the Northern Lights of Aurora Borealis. Southern Hemisphere observers call them the Southern Lights or Aurora Australis.')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (355, 351, N'It is correct?', N'The most common explanation you will find is Sun flow down the magnetic lines of force into the polar regions of Earth. They collide with oxygen and nitrogen atoms in the atmosphere which emit the colored lights we see in the aurora', N'This explanation is actually incorrect, although it is easy to describe in a few brief sentences, which is why it is popular in many textbooks')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (360, 353, N'How far is the sun?', N'Choose one', N'Sun radiant energies light up our daytime sky and make all life possible on this planet, even from as far away as 93 million miles')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (361, 355, N'What is kinetic energy?', N'Choose best answer', N'The energy of motion (kinetic energy) of the electrons in the currents is transformed into heat energy as nearby atoms in the wire are jostled about.')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (363, 358, N'What is a FIELD?', N'Choose best answer', N' Every magnet produces an invisible area of influence around itself. Scientists call these invisible influences FIELDS. ')
INSERT [dbo].[Question] ([IDQuestion], [IDConcept], [QuestionName], [QuestionDescription], [Help]) VALUES (366, 359, N'The core of Earth is also an ...', N'Complete', N'The core of Earth is also an electromagnet. Although the crust is solid, the core of the Earth is surrounded by a mixture of molten iron and nickle')
SET IDENTITY_INSERT [dbo].[Question] OFF
/****** Object:  StoredProcedure [dbo].[Concept_MediaPath]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 15th July 2011
-- Description:	Gets the basic path for mediafiles
--				based on the concept id
-- =============================================
CREATE PROCEDURE [dbo].[Concept_MediaPath]
	@ConceptId int,
	@MediaPath varchar(500) output
AS
BEGIN
	Declare @CustomerCode varchar(20)
	Declare @LevelCode varchar(20)
	Declare @PackageGroupCode varchar(20)
	Declare @PackageCode varchar(20)
	Declare @ConceptCode varchar(20)
	
	Select @CustomerCode=c.CustomerCode,
		@LevelCode=l.LevelCode,
		@PackageGroupCode = pg.PackageGroupCode,
		@PackageCode = p.PackageCode,
		@ConceptCode = cn.ConceptCode
	from Concept cn 
		join Package p on
			cn.IDPackage = p.IDPackage
		join PackageGroup pg on
			pg.IDPackageGroup = p.IDPackageGroup
		join Level l on
			l.IDLevel = pg.IDLevel
		join Customer c on
			c.IDCustomer = l.IDCustomer
	where 
		cn.IDConcept = @ConceptId
	
	
	Set @MediaPath = @CustomerCode + '#media#' + @LevelCode +'#'+@PackageGroupCode+'#'+@PackageCode+'#'+@ConceptCode	
	Select @MediaPath
END
GO
/****** Object:  Table [dbo].[Characteristic]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Characteristic](
	[IDCharacteristic] [int] IDENTITY(1,1) NOT NULL,
	[IDConcept] [int] NOT NULL,
	[Characteristic] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Characteristic] PRIMARY KEY CLUSTERED 
(
	[IDCharacteristic] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Characteristic] ON
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1234, 315, N'Limite 110kms.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1236, 315, N'Mismo sentido')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1237, 315, N'Para todo tipo de vehículos')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1238, 315, N'Es obligatorio obedecer señal')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1239, 316, N'Limite 120kms')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1240, 316, N'Mismo sentido')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1241, 316, N'Para todo tipo de vehículos')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1242, 316, N'Es obligatorio obedecer señal')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1243, 317, N'Limite 40kms')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1244, 317, N'Mismo sentido')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1245, 317, N'Para todo tipo de vehículos')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1246, 317, N'Es obligatorio obedecer señal')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1247, 318, N'Limite 55kms')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1248, 318, N'Mismo sentido')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1249, 318, N'Uso en daños del auto')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1250, 318, N'Es obligatorio obedecer señal')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1251, 320, N'Señal Obligatoria')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1252, 320, N'Para todos los que transitan en la vía')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1253, 320, N'Indica no estacionarse')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1255, 322, N'Señal preventiva')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1256, 322, N'Para todos los que transitan en la vía')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1257, 322, N'Animales silvestres')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1258, 322, N'Tener precaución')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1259, 323, N'Señal informativa')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1260, 323, N'Indica lugar de primero auxilios')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1261, 323, N'Conducir a velocidad reglamentaria')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1262, 324, N'Tener preventiva')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1263, 324, N'Conducir a no mas de 30kms')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1264, 325, N'Señales de color verde o azul')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1265, 325, N'Son tipo informativas')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1266, 325, N'Indican se encuentra un servicio o lugar próximo')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1267, 326, N'Señal obligatoria')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1268, 326, N'Se debe detener el vehiculo')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1269, 326, N'Costo alto la infracción')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1270, 327, N'Vía de dominio y uso público')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1271, 327, N'Lleva el transito de un lugar a otro')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1272, 327, N'Puede estar conectada a través de accesos')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1273, 328, N'Vía de circulación proyectada')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1274, 328, N'Señalizada para su circulaciones')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1275, 328, N'Se debe conducir en carril derecho')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1276, 328, N'Para revesar usar carril derecho')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1277, 329, N'Uso exclusivo para personas')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1278, 329, N'No ir corriendo sobre ellas')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1279, 329, N'Se encuentran en las calles')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1280, 329, N'Destinados para que crucen los peatones sin peligro')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1281, 330, N'Uso obligatorio')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1282, 330, N'Se debe tener un ejemplar en el carro')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1283, 330, N'No tenerlo es una infracción')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1284, 331, N'A 5mts o mas')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1285, 331, N'No se debe obstaculizar')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1286, 332, N'Posición paralela')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1287, 332, N'Puede evitar accidentes')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1288, 333, N'Mas de 5mts')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1289, 333, N'No menos de 5 mts')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1290, 333, N'No obstaculizar el tráfico.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1291, 333, N'Distancia considerable de otro vehiculo')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1292, 334, N'Se usan cuando no funcionan direccionales')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1293, 334, N'Puede evitar accidentes')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1294, 335, N'Indican retroceso del vehiculo')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1295, 335, N'Se debe tener precaución en el uso')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1296, 335, N'Color blanco')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1297, 336, N'Se usan en remolques y semi-remolques')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1298, 336, N'Su uso debe ser obligatorio')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1299, 336, N'Puede evitar accidentes')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1300, 337, N'Son usadas en camiones')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1301, 337, N'Tener precaución')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1302, 337, N'Puede evitar accidentes')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1303, 339, N'a Arietis, conocida como Hamal, es el astro más brillante con magnitud 2,01.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1304, 339, N'Entre las estrellas dobles cabe señalar a ? Arietis, denominada Mesarthim, e Arietis y ? Arietis.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1305, 339, N'Aries también contiene dos enanas rojas —la Estrella de Teegarden y TZ Arietis— que se cuentan entre las 40 estrellas más próximas al Sistema Solar.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1306, 340, N'Aldebarán (a Tau), la estrella más brillante de la constelación, es una gigante roja de primera magnitud.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1307, 340, N'Forma un sistema binario con una tenue enana roja.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1308, 340, N'Elnath (ß Tau), segunda estrella más brillante, forma los cuernos del toro junto a ? Tauri; esta última es una de las estrellas Be más estudiadas.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1309, 340, N'Dos estrellas variables en la constelación, T Tauri y RV Tauri, son los prototipos de sendos grupos de estrellas que llevan sus nombres.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1310, 342, N'Near the poles of Earth, observers have often seen glowing clouds shaped like curtains, tapestries, snakes, or even spectacular radiating beams')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1314, 342, N'Northern Hemisphere observers call them the Northern Lights of Aurora Borealis. Southern observers call them the Southern Lights or Aurora Australis')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1315, 342, N'Sprinkle iron filings on a paper and put a magnet underneath. You will see lines of magnetism that seem to ''flow'' towards the poles of the magnet')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1316, 342, N'If you were a charged particle in space, you would be magnetically trapped on one of these lines of magnetism')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1319, 342, N'As you flow down Earth''s magnetic field, you collide with atoms of oxygen and nitrogen. This gives off the colored lights you see in an aurora')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1320, 351, N'The correct explanation for why aurora occur involves distant regions of the magnetic field of Earth in the opposite direction from the Sun')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1323, 351, N'As solar storms disturb Earth''s magnetic field, this field rearranges itself and converts some of its stored energy into fast-moving particles.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1325, 351, N'As they encounter the ionosphere, they are boosted in energy to 6,000 volts or more.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1328, 351, N'And then collide with nitrogen and oxygen atoms to produce the auroral light.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1329, 351, N'There is no direct entry of solar particles into the polar regions to create the night-time aurora. Also, solar flares do not cause aurora either')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1330, 353, N'Deep within its core where gravitational pressures compress and heat its gases, atoms collide so furiously that some fuse together')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1332, 353, N'Every second, over 4 million tons of matter are converted to pure, radiant energy.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1333, 353, N'Some of this energy goes into creating pressure that literally holds up the Sun against gravity.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1334, 353, N'The rest leaks out of the dense core in the form of light, and deposits huge amounts of energy throughout the inside of the star')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1335, 353, N'Its radiant energies light up our daytime sky and make all life possible on this planet, even from as far away as 93 million miles')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1336, 355, N'When electrical circuits get crossed, you often see sparks fly and lots of smoke as the wires become heated')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1341, 355, N'Electricity carried by electrons in one wire are trying to flow one way while the electrons from another circuit are trying to flow the opposite way')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1342, 355, N'This causes the electrons to collide, and instead of an organized smooth flow, it becomes disorganized')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1343, 355, N'The energy of motion (kinetic energy) of the electrons in the currents is transformed into heat energy as nearby atoms in the wire are jostled about')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1344, 355, N'A very similar thing happens on the Sun, but with dramatic consequences that extend clear across the entire solar system! ')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1345, 358, N' Every magnet produces an invisible area of influence around itself')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1346, 358, N'When things made of metal or other magnets come close to this region of space, they feel a pull or a push from the magnet')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1349, 358, N'Scientists call these invisible influences FIELDS. ')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1350, 358, N'You can make magnetic fields visible to the eye by using iron chips sprinkled on a piece of paper with a magnet underneith.')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1351, 358, N'On the Sun, you can see the same kinds of magnetic fields as they pop out of the surface of the sun')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1352, 359, N'A compass works the way it does because Earth has a magnetic field that looks a lot like the one in a magnet')
GO
print 'Processed 100 total records'
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1354, 359, N'The Earth''s field is completely invisible, but it can be felt by a compass needle on the Earth''s surface')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1356, 359, N'Earth''s magnetic field gets stretched out into a comet-like shape with a tail of magnetism that stretches millions of miles behind Earth')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1357, 359, N'The core of Earth is also an electromagnet. Although the crust is solid, the core of the Earth is surrounded by a mixture of molten iron and nickle')
INSERT [dbo].[Characteristic] ([IDCharacteristic], [IDConcept], [Characteristic]) VALUES (1358, 359, N'The magnetic field of Earth is caused by currents of electricity that flow in the molten core')
SET IDENTITY_INSERT [dbo].[Characteristic] OFF
/****** Object:  Table [dbo].[StudentAnsweredConcept]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAnsweredConcept](
	[IDStudentAnsweredConcept] [int] IDENTITY(1,1) NOT NULL,
	[IDStudent] [int] NOT NULL,
	[IDConcept] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentAnsweredConcept] PRIMARY KEY CLUSTERED 
(
	[IDStudentAnsweredConcept] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_StudentAnsweredConcept] ON [dbo].[StudentAnsweredConcept] 
(
	[IDStudent] ASC,
	[IDConcept] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Concepts]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vw_Concepts]

as

Select IdConcept
	,IdPackage
	,ConceptName
	,ConceptDescription
	,[Image]
,
(Select COUNT(1)
From StudentAnsweredQuestion s
Inner Join Question q
on s.IdQuestion = q.IDQuestion
Where q.IDConcept = c.IdConcept) as AnsweredQuestions
,
(select COUNT(1) From Question q Where q.IDConcept = c.IDConcept) as TotalQuestions

From Concept c
GO
/****** Object:  StoredProcedure [dbo].[UnansweredConcepts]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UnansweredConcepts](
	@idPackage int
)

As

declare @table table (
	IdConcept int
	,IdPackage int
	,ConceptName varchar(256)
	,ConceptDescription varchar(256)
	,[Image] varchar(256)
	,AnsweredQuestions float
	,TotalQuestions int
)

Insert Into @table
Select IdConcept
	,IdPackage
	,ConceptName
	,ConceptDescription
	,[Image]
,
(Select COUNT(1)
From StudentAnsweredQuestion s
Inner Join Question q
on s.IdQuestion = q.IDQuestion
Where q.IDConcept = c.IdConcept
And s.IdStudent = 1) as AnsweredQuestions
,
(select COUNT(1) From Question q Where q.IDConcept = c.IDConcept) as TotalQuestions

From Concept c
Where IDPackage = @IdPackage

Select IdConcept,
IdPackage,
ConceptName,
ConceptDescription,
Image,
cast((cast(AnsweredQuestions as float)/ TotalQuestions) * 100 as varchar) + '%' as Completed
From @table
Where AnsweredQuestions < TotalQuestions
GO
/****** Object:  Table [dbo].[AnswerOption]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AnswerOption](
	[IDAnswerOption] [int] IDENTITY(1,1) NOT NULL,
	[IDQuestion] [int] NOT NULL,
	[AnswerOption] [varchar](250) NOT NULL,
	[IsCorrect] [bit] NOT NULL,
 CONSTRAINT [PK_AnswerOption] PRIMARY KEY CLUSTERED 
(
	[IDAnswerOption] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AnswerOption] ON
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1232, 318, N'90km', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1233, 318, N'110km', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1234, 318, N'100km', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1235, 318, N'Todas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1239, 318, N'Ninguna', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1242, 320, N'120km', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1243, 320, N'110km', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1244, 320, N'90km', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1245, 320, N'Todas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1246, 320, N'Ninguna', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1247, 321, N'60km', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1248, 321, N'45km', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1249, 321, N'90km', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1250, 321, N'Todas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1251, 321, N'Ninguna', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1252, 322, N'60km', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1253, 322, N'45km', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1254, 322, N'55km', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1255, 322, N'Todas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1256, 322, N'Ninguna', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1257, 322, N'No estacionar', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1258, 322, N'Señal obligatoria', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1259, 322, N'Permitido estacionar', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1260, 322, N'Ninguna de las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1261, 327, N'Zoologico cerca', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1262, 327, N'Área de cuarentena', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1263, 327, N'Cruce de animales silvestres', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1264, 327, N'Ninguna de las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1265, 328, N'Primeros auxilios', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1266, 328, N'Zona de silencio', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1267, 328, N'Enfermos mas adelante', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1268, 328, N'Todas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1269, 328, N'Ninguna', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1270, 329, N'Hombres trabajando', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1271, 329, N'Niños en la vía', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1272, 329, N'Zona Escolar', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1273, 329, N'Ninguna', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1274, 330, N'Peligro', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1275, 330, N'Prohibición', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1276, 330, N'Servicios', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1277, 330, N'Lugares Próximos', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1278, 330, N'Ninguna', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1279, 331, N'Obligatoria', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1280, 331, N'Advertencia', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1281, 331, N'Reglamentaria', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1282, 331, N'Ninguna de las Anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1283, 332, N'Vía formada por intersecciones', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1284, 332, N'Vía comprendida dentro de los límites de una propiedad', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1285, 332, N'Vía destinada la cual lleva de una población a otra.', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1286, 332, N'Todas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1287, 332, N'Ninguna', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1289, 333, N'Vía apta para tránsito de vehículos y peatones', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1290, 333, N'Vía de circulación proyectada, señalizada para la circulación', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1291, 333, N'Vía destinada la cual lleva de una población a otra.', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1292, 333, N'Todas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1293, 334, N'Zona de peatones', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1294, 334, N'Terminal', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1295, 334, N'Cruce', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1296, 334, N'Todas las Anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1297, 334, N'Ninguna de las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1298, 335, N'Poliza de Seguro', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1299, 335, N'Documento de colisión', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1300, 335, N'Licencia de conducir', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1301, 335, N'Reglamento de transito', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1302, 335, N'Todas las anteriores ', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1303, 336, N'10mts', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1305, 336, N'5mts', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1306, 336, N'9mts', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1307, 336, N'Ninguna de las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1308, 337, N'Paralelas a la orilla de la vía', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1309, 337, N'Lo más céntrico a las líneas visibles', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1310, 337, N'Diagonal a la orilla', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1311, 337, N'Todas las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1312, 338, N'3mts', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1314, 338, N'5mts o más', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1315, 338, N'Menos de 5mts', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1316, 338, N'Todas las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1317, 338, N'Ninguna de las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1318, 339, N'Usar luces largas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1319, 339, N'Usar luces cortas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1320, 339, N'Usar señales manuales', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1321, 339, N'Todas las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1322, 340, N'Luces rojas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1323, 340, N'Luces Amarillas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1324, 340, N'Luces Blancas', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1325, 340, N'Ninguna de las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1326, 342, N'Alojenas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1327, 342, N'De freno', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1328, 342, N'Rojas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1329, 342, N'Ninguna de las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1330, 343, N'Pilotos', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1331, 343, N'De freno', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1332, 343, N'Rojas', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1333, 343, N'Blancas Brillantes', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1334, 343, N'Todas de las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1335, 343, N'Ningunas las anteriores', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1337, 345, N'? Arietis denominada Mesarthim y e Arietis', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1338, 345, N'e Arietis y ? Arietis', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1339, 345, N'La Estrella de Teegarden y TZ Arietis', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1340, 347, N'Uno', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1342, 347, N'Dos', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1343, 347, N'Tres', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1344, 348, N'Aldebarán (a Tau) y una tenue enana roja', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1345, 348, N'Elnath (ß Tau) y  ? Tauri', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1347, 348, N'T Tauri y RV Tauri', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1348, 351, N'Aurora Australis', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1349, 351, N'Aurora Borealis', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1350, 351, N'Glowing Clouds', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1351, 351, N'None of them', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1352, 355, N'True', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1353, 355, N'False', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1354, 360, N'400 million miles', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1355, 360, N'93 million miles', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1358, 360, N'600 million miles', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1359, 361, N'The energy of motion', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1360, 361, N'The energy of heat', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1361, 361, N'The energy of ligth', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1362, 361, N'All of them', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1363, 363, N'Area of influence around a magnet', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1364, 363, N'It is refered to the magnetic field of the sun', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1365, 363, N'It stand for Forces of Invisible Electron''s Layer Disc', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1366, 363, N'None of them', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1369, 366, N'Volcano', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1370, 366, N'Electromagnet', 1)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1371, 366, N'Iron', 0)
INSERT [dbo].[AnswerOption] ([IDAnswerOption], [IDQuestion], [AnswerOption], [IsCorrect]) VALUES (1372, 366, N'Invisible field', 0)
SET IDENTITY_INSERT [dbo].[AnswerOption] OFF
/****** Object:  StoredProcedure [dbo].[AnsweredConcepts]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AnsweredConcepts](
	@idPackage int
)

As

declare @table table (
	IdConcept int
	,IdPackage int
	,ConceptName varchar(256)
	,ConceptDescription varchar(256)
	,[Image] varchar(256)
	,AnsweredQuestions float
	,TotalQuestions int
)

Insert Into @table
Select IdConcept
	,IdPackage
	,ConceptName
	,ConceptDescription
	,[Image]
,
(Select COUNT(1)
From StudentAnsweredQuestion s
Inner Join Question q
on s.IdQuestion = q.IDQuestion
Where q.IDConcept = c.IdConcept
And s.IdStudent = 1) as AnsweredQuestions
,
(select COUNT(1) From Question q Where q.IDConcept = c.IDConcept) as TotalQuestions

From Concept c
Where IDPackage = @IdPackage

Select IdConcept,
IdPackage,
ConceptName,
ConceptDescription,
Image,
cast((cast(AnsweredQuestions as float)/ TotalQuestions) * 100 as varchar) + '%' as Completed
From @table
Where TotalQuestions > 0 And AnsweredQuestions = TotalQuestions
GO
/****** Object:  StoredProcedure [dbo].[Student_RemoveAnsweredConcept]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Remove Answered Concept from Student
-- =============================================
create PROCEDURE [dbo].[Student_RemoveAnsweredConcept]
	@IDStudent int,
	@IDConcept int
AS
BEGIN
	
	DELETE from StudentAnsweredConcept
	WHERE IDStudent=@IDStudent AND IDConcept=@IDConcept;
	
END
GO
/****** Object:  StoredProcedure [dbo].[Student_Rank]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 13th July 2011
-- Description:	Calculates the rank of a Student
--				based on totally finished packages
-- =============================================
CREATE PROCEDURE [dbo].[Student_Rank]
	@IDStudent int,
	@Rank int output
AS
BEGIN
	Declare @IDCustomer int
	
	Select Top 1 @IDCustomer=c.IDCustomer
	FROM
		StudentLevel sl join Level l on sl.IDLevel = l.IDLevel
		join Customer c on l.IDCustomer = c.IDCustomer
	where
		sl.IDStudent = @IDStudent
	
	Select @Rank = finishedrank 
	from (
	select 
		RANK() over(order by r.Finished desc) as 'finishedrank',
		IDStudent 
		from (
			Select 
				s.IDStudent,
				((select COUNT(IDPackage) 
					from StudentPackageGroup sp 
						join Package p 
							on sp.IDPackageGroup = p.IDPackageGroup
					where sp.IDStudent = s.IDStudent)
					-
				(select Count(distinct IDPackage)
					from 
						Concept c2
					where
						c2.IDConcept not in (
								Select IDConcept 
									from StudentAnsweredConcept
										where IDStudent = s.IDStudent
						)and
						c2.IDConcept in (
								Select c3.IDConcept
									from 
									StudentPackageGroup sp1
										join Package p2 
											on sp1.IDPackageGroup = p2.IDPackageGroup
										join Concept c3
											on c3.IDPackage = p2.IDPackage
									where sp1.IDStudent=s.IDStudent)))
					as 'Finished'
			from 
				Student s
			where 
				s.IDStudent in (Select distinct(s2.IDStudent) 
					from StudentLevel s2 join Level l on s2.IDLevel = l.IDLevel
					where l.IDCustomer=@IDCustomer)
		) r
		)r2
		where
			r2.IDStudent = @IDStudent
END
GO
/****** Object:  StoredProcedure [dbo].[Student_Experience]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 13th July 2011
-- Description:	Calculates the Experience of a 
--				Student based on his Total answered Concepts
-- =============================================
CREATE PROCEDURE [dbo].[Student_Experience]
	@IDStudent int,
	@Experience numeric(3,2) output
AS
BEGIN
	Declare @TotalConcepts numeric(9,0)
	Declare @AnsweredConcepts numeric(9,0)
	
	
	SELECT @TotalConcepts = COUNT(c.IDConcept) 
	FROM StudentPackageGroup sp join Package p on sp.IDPackageGroup = p.IDPackageGroup
		join Concept c on c.IDPackage = p.IDPackage
	where sp.IDStudent = @IDStudent
	
	Select @AnsweredConcepts = COUNT(ac.IDConcept)
	FROM StudentAnsweredConcept ac
		WHERE ac.IDStudent = @IDStudent
	
	if @TotalConcepts=0
		SET @Experience = 0
	else
		set @Experience = @AnsweredConcepts/@TotalConcepts	
END
GO
/****** Object:  StoredProcedure [dbo].[Student_AnsweredConcepts_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Remove Answered Concept from Student
-- =============================================
create PROCEDURE [dbo].[Student_AnsweredConcepts_SEL]
	@IDStudent int,
	@IDPackage int
AS
BEGIN
	select 
        a.IDConcept
    from StudentAnsweredConcept a
        join Concept c
            on a.IDConcept = c.IDConcept
    where a.IDStudent=@IDStudent and
            c.IDPackage=@IDPackage
END
GO
/****** Object:  StoredProcedure [dbo].[Student_AddAnsweredConcept]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Add Correct Answered Concept to Student
-- =============================================
CREATE PROCEDURE [dbo].[Student_AddAnsweredConcept]
	@IDStudent int,
	@IDConcept int,
	@Date datetime,
	@ResultValue int Output
AS
BEGIN
	Declare @IDPackage int
	Declare @OpenConcepts int
	Declare @ConceptAnswered int
	Declare @Message varchar(200)
	Declare @Type int
	Declare @PackageName varchar(60)
	
	Set @ResultValue = 0
	
	SELECT @ConceptAnswered=COUNT(*) FROM StudentAnsweredConcept where IDConcept=@IDConcept And IDStudent = @IDStudent
	
	IF @ConceptAnswered>0
		BEGIN
			Update StudentAnsweredConcept set Date=@Date where IDConcept=@IDConcept and IDStudent = @IDStudent
		END
	ELSE
		BEGIN
			Insert into StudentAnsweredConcept(IDStudent, IDConcept,Date) 
				Values (@IDStudent, @IDConcept,@Date);
			
			Select @IDPackage = c.IDPackage
				from Concept c
				where c.IDConcept = @IDConcept
				
			Select @OpenConcepts = COUNT(c.IDConcept)
			from
				Concept c 
			where 
				c.IDPackage = @IDPackage
				and
				c.IDConcept not in
					( Select ac.IDConcept
					from
						StudentAnsweredConcept ac
					where
						ac.IDStudent = @IDStudent
						)
			
			IF @OpenConcepts=0
				BEGIN
					SET @ResultValue=1
					set @Type=2
					SELECT @PackageName = PackageName from Package p 
						join Concept c on p.IDPackage = c.IDPackage
							and c.IDConcept=@IDConcept
					set @Message= 'Has just finished Package "' +@PackageName +'"'
					
					Execute Message_INS
						@Message,
						@Date,
						@Type,
						@IDStudent
				END
		END
	SELECT @ResultValue
END
GO
/****** Object:  StoredProcedure [dbo].[PackagesGet]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PackagesGet]

as

declare @table table
(
	IDPackage int
	,PackageName varchar(256)
	,PackageDescription varchar(256)
	,IDPackageGroup int
	,AnsweredQuestions float
	,TotalQuestions int
)

Insert Into @table
Select p.IDPackage
	,p.PackageName
	,p.PackageDescription
	,p.IDPackageGroup
	,(Select COUNT(1)
		From StudentAnsweredQuestion s
		Inner Join Question q
		on s.IdQuestion = q.IDQuestion
		inner join Concept c
		On q.IDConcept = c.IDConcept
		And c.IDPackage = p.IDPackage
		Where s.IdStudent = 1
	)
	,(Select COUNT(1)
		From Question q
		inner join Concept c
		On q.IDConcept = c.IDConcept
		And c.IDPackage = p.IDPackage
	)

From Package p
Where IDPackageGroup = 13

select IDPackage
	,PackageName
	,PackageDescription
	,IDPackageGroup
	,cast((AnsweredQuestions / TotalQuestions) * 100 as varchar) + '%' as Completed
	,'Styles/images/subjects.png' as Img
from @table
where TotalQuestions > 0
GO
/****** Object:  StoredProcedure [dbo].[Package_ById_SEL]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Stefan Honeder
-- Create date: 18th July 2011
-- Description:	Get the Package by ID
-- =============================================
Create PROCEDURE [dbo].[Package_ById_SEL]
	@IDPackage int
AS
BEGIN
	select 
        p.IDPackage, 
        p.PackageName, 
        p.PackageCode, 
        p.PackageDescription 
    from Package p
    where p.IDPackage=@IDPackage
    
    select 
        c.IDConcept,
        c.ConceptName,
        c.ConceptDescription,
        c.ConceptCode
    from Concept c
    where c.IDPackage=@IDPackage
    
    select 
        ch.Characteristic,
        ch.IDConcept
    from Characteristic ch
    where ch.IDConcept in 
		(select c2.IDConcept 
			from Concept c2	
				where c2.IDPackage=@IDPackage)
    select
        q.IDQuestion,
        q.QuestionName,
        q.QuestionDescription,
        q.Help,
        q.IDConcept
    from Question q
    where q.IDConcept in 
		(select c2.IDConcept 
			from  Concept c2 
				where c2.IDPackage=@IDPackage)
    select
        a.IDAnswerOption,
        a.AnswerOption,
        a.IsCorrect,
        q.IDConcept
    from AnswerOption a 
		join Question q on a.IDQuestion = q.IDQuestion
    where a.IDQuestion in 
		(select q2.IDQuestion 
			from Question q2 
				where q2.IDConcept in 
					(select c2.IDConcept 
						from  Concept c2 
							where c2.IDPackage=@IDPackage))
   
END
GO
/****** Object:  StoredProcedure [dbo].[AnswerOptionCheckIfCorrect]    Script Date: 04/21/2013 10:56:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AnswerOptionCheckIfCorrect]
(
	@answer int
)

as

If(Select IsCorrect From AnswerOption Where IDAnswerOption = @answer) = 1
Begin
	declare @idQuestion int = (Select IDQuestion From AnswerOption Where IDAnswerOption = @answer)

	Insert Into StudentAnsweredQuestion
	(IDStudent, IdQuestion, [Date])
	Values (1, @idQuestion, GETDATE())

	Select 'Well done!' as Message, 'Styles/images/BienRespondido.png' as Img
End
Else
	Select 'Try again.' as Message, 'Styles/images/MalRespondido.png' as Img
GO
/****** Object:  ForeignKey [FK_CustomerClass_LevelType]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[CustomerClass]  WITH CHECK ADD  CONSTRAINT [FK_CustomerClass_LevelType] FOREIGN KEY([IDLevelType])
REFERENCES [dbo].[LevelType] ([IDLevelType])
GO
ALTER TABLE [dbo].[CustomerClass] CHECK CONSTRAINT [FK_CustomerClass_LevelType]
GO
/****** Object:  ForeignKey [FK_CustomerClass_PackageGroupType]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[CustomerClass]  WITH CHECK ADD  CONSTRAINT [FK_CustomerClass_PackageGroupType] FOREIGN KEY([IDPackageGroupType])
REFERENCES [dbo].[PackageGroupType] ([IDPackageGroupType])
GO
ALTER TABLE [dbo].[CustomerClass] CHECK CONSTRAINT [FK_CustomerClass_PackageGroupType]
GO
/****** Object:  ForeignKey [FK_Activity_Student]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_Student] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Student] ([IDStudent])
GO
ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [FK_Activity_Student]
GO
/****** Object:  ForeignKey [FK_Message_Student]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Student] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Student] ([IDStudent])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Student]
GO
/****** Object:  ForeignKey [FK_Customer_CustomerClass]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_CustomerClass] FOREIGN KEY([IDCustomerClass])
REFERENCES [dbo].[CustomerClass] ([IDCustomerClass])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_CustomerClass]
GO
/****** Object:  ForeignKey [FK_Level_Customer]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[Level]  WITH CHECK ADD  CONSTRAINT [FK_Level_Customer] FOREIGN KEY([IDCustomer])
REFERENCES [dbo].[Customer] ([IDCustomer])
GO
ALTER TABLE [dbo].[Level] CHECK CONSTRAINT [FK_Level_Customer]
GO
/****** Object:  ForeignKey [FK_PackageGroup_Level]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[PackageGroup]  WITH CHECK ADD  CONSTRAINT [FK_PackageGroup_Level] FOREIGN KEY([IDLevel])
REFERENCES [dbo].[Level] ([IDLevel])
GO
ALTER TABLE [dbo].[PackageGroup] CHECK CONSTRAINT [FK_PackageGroup_Level]
GO
/****** Object:  ForeignKey [FK_StudentLevel_Level]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[StudentLevel]  WITH CHECK ADD  CONSTRAINT [FK_StudentLevel_Level] FOREIGN KEY([IDLevel])
REFERENCES [dbo].[Level] ([IDLevel])
GO
ALTER TABLE [dbo].[StudentLevel] CHECK CONSTRAINT [FK_StudentLevel_Level]
GO
/****** Object:  ForeignKey [FK_StudentLevel_Student]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[StudentLevel]  WITH CHECK ADD  CONSTRAINT [FK_StudentLevel_Student] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Student] ([IDStudent])
GO
ALTER TABLE [dbo].[StudentLevel] CHECK CONSTRAINT [FK_StudentLevel_Student]
GO
/****** Object:  ForeignKey [FK_StudentPackageGroup_PackageGroup]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[StudentPackageGroup]  WITH CHECK ADD  CONSTRAINT [FK_StudentPackageGroup_PackageGroup] FOREIGN KEY([IDPackageGroup])
REFERENCES [dbo].[PackageGroup] ([IDPackageGroup])
GO
ALTER TABLE [dbo].[StudentPackageGroup] CHECK CONSTRAINT [FK_StudentPackageGroup_PackageGroup]
GO
/****** Object:  ForeignKey [FK_StudentPackageGroup_Student]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[StudentPackageGroup]  WITH CHECK ADD  CONSTRAINT [FK_StudentPackageGroup_Student] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Student] ([IDStudent])
GO
ALTER TABLE [dbo].[StudentPackageGroup] CHECK CONSTRAINT [FK_StudentPackageGroup_Student]
GO
/****** Object:  ForeignKey [FK_Package_PackageGroup]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_PackageGroup] FOREIGN KEY([IDPackageGroup])
REFERENCES [dbo].[PackageGroup] ([IDPackageGroup])
GO
ALTER TABLE [dbo].[Package] CHECK CONSTRAINT [FK_Package_PackageGroup]
GO
/****** Object:  ForeignKey [FK_Concept_Package]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[Concept]  WITH CHECK ADD  CONSTRAINT [FK_Concept_Package] FOREIGN KEY([IDPackage])
REFERENCES [dbo].[Package] ([IDPackage])
GO
ALTER TABLE [dbo].[Concept] CHECK CONSTRAINT [FK_Concept_Package]
GO
/****** Object:  ForeignKey [FK_Question_Concept]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Concept] FOREIGN KEY([IDConcept])
REFERENCES [dbo].[Concept] ([IDConcept])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Concept]
GO
/****** Object:  ForeignKey [FK_Characteristic_Concept]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[Characteristic]  WITH CHECK ADD  CONSTRAINT [FK_Characteristic_Concept] FOREIGN KEY([IDConcept])
REFERENCES [dbo].[Concept] ([IDConcept])
GO
ALTER TABLE [dbo].[Characteristic] CHECK CONSTRAINT [FK_Characteristic_Concept]
GO
/****** Object:  ForeignKey [FK_StudentAnsweredConcept_Concept]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[StudentAnsweredConcept]  WITH CHECK ADD  CONSTRAINT [FK_StudentAnsweredConcept_Concept] FOREIGN KEY([IDConcept])
REFERENCES [dbo].[Concept] ([IDConcept])
GO
ALTER TABLE [dbo].[StudentAnsweredConcept] CHECK CONSTRAINT [FK_StudentAnsweredConcept_Concept]
GO
/****** Object:  ForeignKey [FK_StudentAnsweredConcept_Student]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[StudentAnsweredConcept]  WITH CHECK ADD  CONSTRAINT [FK_StudentAnsweredConcept_Student] FOREIGN KEY([IDStudent])
REFERENCES [dbo].[Student] ([IDStudent])
GO
ALTER TABLE [dbo].[StudentAnsweredConcept] CHECK CONSTRAINT [FK_StudentAnsweredConcept_Student]
GO
/****** Object:  ForeignKey [FK_AnswerOption_Question]    Script Date: 04/21/2013 10:56:14 ******/
ALTER TABLE [dbo].[AnswerOption]  WITH CHECK ADD  CONSTRAINT [FK_AnswerOption_Question] FOREIGN KEY([IDQuestion])
REFERENCES [dbo].[Question] ([IDQuestion])
GO
ALTER TABLE [dbo].[AnswerOption] CHECK CONSTRAINT [FK_AnswerOption_Question]
GO
