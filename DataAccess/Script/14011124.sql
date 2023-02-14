USE [Inspection]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 24/11/1401 04:20:48 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Tel] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[CityName] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreationDate] [datetime] NULL,
	[LastModifyDate] [datetime] NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 24/11/1401 04:20:48 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[Description] [nvarchar](max) NULL,
	[CreationDate] [datetime] NULL,
	[LastModifyDate] [datetime] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 24/11/1401 04:20:48 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[UserId] [int] NULL,
	[CreationDate] [datetime] NULL,
	[LastModifyDate] [datetime] NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24/11/1401 04:20:48 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[PersonnelCode] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[NationalCode] [nvarchar](max) NULL,
	[BranchId] [int] NULL,
	[CreationDate] [datetime] NULL,
	[LastModifyDate] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zone]    Script Date: 24/11/1401 04:20:48 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zone](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[CreationDate] [datetime] NULL,
	[LastModifyDate] [datetime] NULL,
 CONSTRAINT [PK_Zone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Branch] ON 

INSERT [dbo].[Branch] ([Id], [Code], [Name], [Tel], [Address], [CityName], [IsActive], [CreationDate], [LastModifyDate]) VALUES (1, 1001, N'ستارخان', N'021-987669', N'تهران-ستارخان', N'تهران', 1, CAST(N'2644-05-03T16:13:16.180' AS DateTime), CAST(N'2644-05-03T16:13:16.180' AS DateTime))
INSERT [dbo].[Branch] ([Id], [Code], [Name], [Tel], [Address], [CityName], [IsActive], [CreationDate], [LastModifyDate]) VALUES (2, 1002, N'به آفرین', N'0219954187', N'تهران ولیعصر', N'تهران', 1, CAST(N'2023-02-13T16:13:16.180' AS DateTime), CAST(N'2023-02-13T16:13:16.180' AS DateTime))
SET IDENTITY_INSERT [dbo].[Branch] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Title], [IsActive], [Description], [CreationDate], [LastModifyDate]) VALUES (1, N'مدیر', 1, N'مدیر', CAST(N'2644-05-03T16:15:05.180' AS DateTime), CAST(N'2644-05-03T16:15:05.180' AS DateTime))
INSERT [dbo].[Role] ([Id], [Title], [IsActive], [Description], [CreationDate], [LastModifyDate]) VALUES (2, N'کارشناس', 1, N'کارشناس', CAST(N'2023-02-13T16:15:05.180' AS DateTime), CAST(N'2023-02-13T16:15:05.180' AS DateTime))
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[UserRoles] ON 

INSERT [dbo].[UserRoles] ([Id], [RoleId], [UserId], [CreationDate], [LastModifyDate]) VALUES (1, 1, 1, CAST(N'2644-05-03T16:18:15.467' AS DateTime), CAST(N'2644-05-03T16:18:15.467' AS DateTime))
INSERT [dbo].[UserRoles] ([Id], [RoleId], [UserId], [CreationDate], [LastModifyDate]) VALUES (4, 2, 2, CAST(N'2023-02-13T16:18:15.467' AS DateTime), CAST(N'2023-02-13T16:18:15.467' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (1, N'میثم', N'پورمحمد', N'999', N'Meysam', N'123456', 1, N'1111111111', 1, CAST(N'2644-05-03T16:18:15.467' AS DateTime), CAST(N'2644-05-03T16:18:15.467' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (2, N'سعید', N'نصری', N'887', N'saeed', N'123456', 1, N'2222222222', 2, CAST(N'2644-05-03T16:18:15.467' AS DateTime), CAST(N'2644-05-03T16:18:15.467' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[Zone] ON 

INSERT [dbo].[Zone] ([Id], [Code], [Name], [CreationDate], [LastModifyDate]) VALUES (1, 1, N'تهران', CAST(N'2644-05-03T16:14:09.023' AS DateTime), CAST(N'2644-05-03T16:14:09.023' AS DateTime))
INSERT [dbo].[Zone] ([Id], [Code], [Name], [CreationDate], [LastModifyDate]) VALUES (2, 2, N'شیراز', CAST(N'2023-02-13T16:14:09.023' AS DateTime), CAST(N'2023-02-13T16:14:09.023' AS DateTime))
SET IDENTITY_INSERT [dbo].[Zone] OFF
ALTER TABLE [dbo].[Branch] ADD  CONSTRAINT [DF_Branch_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[Branch] ADD  CONSTRAINT [DF_Branch_LastModifyDate]  DEFAULT (getdate()) FOR [LastModifyDate]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_LastModifyDate]  DEFAULT (getdate()) FOR [LastModifyDate]
GO
ALTER TABLE [dbo].[UserRoles] ADD  CONSTRAINT [DF_UserRoles_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[UserRoles] ADD  CONSTRAINT [DF_UserRoles_LastModifyDate]  DEFAULT (getdate()) FOR [LastModifyDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_LastModifyDate]  DEFAULT (getdate()) FOR [LastModifyDate]
GO
ALTER TABLE [dbo].[Zone] ADD  CONSTRAINT [DF_Zone_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[Zone] ADD  CONSTRAINT [DF_Zone_LastModifyDate]  DEFAULT (getdate()) FOR [LastModifyDate]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Role]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_User]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Branch]
GO
/****** Object:  StoredProcedure [dbo].[LoginVerify]    Script Date: 24/11/1401 04:20:48 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoginVerify]
	@username NVARCHAR(MAX),
	@password NVARCHAR(MAX)

AS
BEGIN
		SELECT * FROM [User] u
			WHERE u.Username = @username AND u.[Password] = @password
END
GO
