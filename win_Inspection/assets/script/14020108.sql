USE [master]
GO
/****** Object:  Database [Inspection]    Script Date: 08/01/1402 12:42:34 ب.ظ ******/
CREATE DATABASE [Inspection]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Inspection', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Inspection.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Inspection_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Inspection_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Inspection] SET COMPATIBILITY_LEVEL = 140
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
ALTER DATABASE [Inspection] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Inspection] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Inspection', N'ON'
GO
ALTER DATABASE [Inspection] SET QUERY_STORE = OFF
GO
USE [Inspection]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 08/01/1402 12:42:34 ب.ظ ******/
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
	[ZoneCode] [int] NOT NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08/01/1402 12:42:34 ب.ظ ******/
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
/****** Object:  Table [dbo].[UserRoles]    Script Date: 08/01/1402 12:42:34 ب.ظ ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 08/01/1402 12:42:34 ب.ظ ******/
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
/****** Object:  Table [dbo].[Zone]    Script Date: 08/01/1402 12:42:34 ب.ظ ******/
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
ALTER TABLE [dbo].[Branch] ADD  CONSTRAINT [DF_Branch_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[Branch] ADD  CONSTRAINT [DF_Branch_LastModifyDate]  DEFAULT (getdate()) FOR [LastModifyDate]
GO
ALTER TABLE [dbo].[Branch] ADD  CONSTRAINT [DF_Branch_ZoneCode_1]  DEFAULT ((0)) FOR [ZoneCode]
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
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Branch] FOREIGN KEY([Id])
REFERENCES [dbo].[Branch] ([Id])
GO
ALTER TABLE [dbo].[Branch] CHECK CONSTRAINT [FK_Branch_Branch]
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
/****** Object:  StoredProcedure [dbo].[LoginVerify]    Script Date: 08/01/1402 12:42:34 ب.ظ ******/
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
USE [master]
GO
ALTER DATABASE [Inspection] SET  READ_WRITE 
GO
