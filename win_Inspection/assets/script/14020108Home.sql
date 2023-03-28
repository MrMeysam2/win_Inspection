USE [master]
GO
/****** Object:  Database [Inspection]    Script Date: 3/28/2023 7:32:27 PM ******/
CREATE DATABASE [Inspection]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Inspection', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Inspection.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Inspection_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Inspection_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Inspection] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Inspection].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Inspection] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Inspection] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Inspection] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Inspection] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Inspection] SET ARITHABORT OFF 
GO
ALTER DATABASE [Inspection] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Inspection] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Inspection] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Inspection] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Inspection] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Inspection] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Inspection] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Inspection] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Inspection] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Inspection] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Inspection] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Inspection] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Inspection] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Inspection] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Inspection] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Inspection] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Inspection] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Inspection] SET RECOVERY FULL 
GO
ALTER DATABASE [Inspection] SET  MULTI_USER 
GO
ALTER DATABASE [Inspection] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Inspection] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Inspection] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Inspection] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Inspection] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Inspection', N'ON'
GO
USE [Inspection]
GO
/****** Object:  User [meysam]    Script Date: 3/28/2023 7:32:27 PM ******/
CREATE USER [meysam] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Branchs]    Script Date: 3/28/2023 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branchs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Tel] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[CityName] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[ZoneCode] [int] NOT NULL CONSTRAINT [DF_Branchs_ZoneCode_1]  DEFAULT ((1)),
	[CreationDate] [datetime] NULL CONSTRAINT [DF_Branchs_CreationDate]  DEFAULT (getdate()),
	[LastModifyDate] [datetime] NULL CONSTRAINT [DF_Branchs_LastModifyDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/28/2023 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
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
/****** Object:  Table [dbo].[UserRoles]    Script Date: 3/28/2023 7:32:27 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 3/28/2023 7:32:27 PM ******/
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
	[CreationDate] [datetime] NULL CONSTRAINT [DF_User_CreationDate]  DEFAULT (getdate()),
	[LastModifyDate] [datetime] NULL CONSTRAINT [DF_User_LastModifyDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Zones]    Script Date: 3/28/2023 7:32:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zones](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreationDate] [datetime] NULL CONSTRAINT [DF_Zones_CreationDate]  DEFAULT (getdate()),
	[LastModifyDate] [datetime] NULL CONSTRAINT [DF_Zones_LastModifyDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Zone] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Branchs] ON 

INSERT [dbo].[Branchs] ([Id], [Code], [Name], [Tel], [Address], [CityName], [IsActive], [ZoneCode], [CreationDate], [LastModifyDate]) VALUES (1, 1001, N'ستارخان', N'0216654115', N'تهران ستاریخان', N'تهران', 1, 1, CAST(N'2023-02-17 00:45:03.980' AS DateTime), CAST(N'2023-02-17 00:45:03.980' AS DateTime))
INSERT [dbo].[Branchs] ([Id], [Code], [Name], [Tel], [Address], [CityName], [IsActive], [ZoneCode], [CreationDate], [LastModifyDate]) VALUES (2, 1002, N'به آفرین', N'0212255418', N'تهران میدان ولیعصر', N'تهران', 1, 1, CAST(N'2023-02-17 00:45:03.980' AS DateTime), CAST(N'2023-02-17 00:45:03.980' AS DateTime))
SET IDENTITY_INSERT [dbo].[Branchs] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (5, N'میثم', N'پورمحمد', N'999', N'meysam', N'123456', 1, N'1450978002', NULL, CAST(N'2023-02-14 20:29:37.347' AS DateTime), CAST(N'2023-02-14 20:29:37.347' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (6, N'4', N'42', N'423', N'423', N'2342', 1, N'234', 1002, CAST(N'2023-02-17 13:02:14.580' AS DateTime), CAST(N'2023-02-17 13:02:14.580' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (7, N'234', N'234', N'234', N'234', N'234234', 1, N'234', 1001, CAST(N'2023-02-17 13:04:03.240' AS DateTime), CAST(N'2023-02-17 13:04:03.240' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (8, N'میثم', N'پورمحمد', N'383', N'MeysamPour', N'123456', 1, N'14550999874', 1002, CAST(N'2023-03-16 17:14:05.497' AS DateTime), CAST(N'2023-03-16 17:14:05.497' AS DateTime))
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [PersonnelCode], [Username], [Password], [IsActive], [NationalCode], [BranchId], [CreationDate], [LastModifyDate]) VALUES (9, N'علی', N'پورمحمد', N'5541', N'ali', N'123456', 1, N'1234567891', 1001, CAST(N'2023-03-28 18:42:25.900' AS DateTime), CAST(N'2023-03-28 18:42:25.900' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [dbo].[Zones] ([Code], [Name], [CreationDate], [LastModifyDate]) VALUES (1, N'مرکزی تهران', CAST(N'2023-02-17 00:45:03.980' AS DateTime), CAST(N'2023-02-17 00:45:03.980' AS DateTime))
INSERT [dbo].[Zones] ([Code], [Name], [CreationDate], [LastModifyDate]) VALUES (2, N'جنوب', CAST(N'2023-03-28 18:39:10.937' AS DateTime), CAST(N'2023-03-28 18:39:10.937' AS DateTime))
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_LastModifyDate]  DEFAULT (getdate()) FOR [LastModifyDate]
GO
ALTER TABLE [dbo].[Branchs]  WITH CHECK ADD  CONSTRAINT [FK_Branchs_Branchs] FOREIGN KEY([ZoneCode])
REFERENCES [dbo].[Zones] ([Code])
GO
ALTER TABLE [dbo].[Branchs] CHECK CONSTRAINT [FK_Branchs_Branchs]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Role]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_User]
GO
USE [master]
GO
ALTER DATABASE [Inspection] SET  READ_WRITE 
GO
