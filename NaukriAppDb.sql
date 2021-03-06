USE [master]
GO
/****** Object:  Database [NaukriAppDb]    Script Date: 23-03-2020 14:43:40 ******/
CREATE DATABASE [NaukriAppDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NaukriAppDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\NaukriAppDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NaukriAppDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\NaukriAppDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NaukriAppDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NaukriAppDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NaukriAppDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NaukriAppDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NaukriAppDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NaukriAppDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NaukriAppDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [NaukriAppDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NaukriAppDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NaukriAppDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NaukriAppDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NaukriAppDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NaukriAppDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NaukriAppDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NaukriAppDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NaukriAppDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NaukriAppDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NaukriAppDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NaukriAppDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NaukriAppDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NaukriAppDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NaukriAppDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NaukriAppDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NaukriAppDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NaukriAppDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NaukriAppDb] SET  MULTI_USER 
GO
ALTER DATABASE [NaukriAppDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NaukriAppDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NaukriAppDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NaukriAppDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NaukriAppDb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [NaukriAppDb]
GO
/****** Object:  Table [dbo].[ApplicationObjects]    Script Date: 23-03-2020 14:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplicationObjects](
	[ApplicationObjectId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationObjectTypeId] [int] NOT NULL,
	[ApplicationObjectName] [varchar](50) NOT NULL,
	[StautsId] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationObjects] PRIMARY KEY CLUSTERED 
(
	[ApplicationObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApplicationObjectTypes]    Script Date: 23-03-2020 14:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplicationObjectTypes](
	[ApplicationObjectTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationObjectTypeName] [varchar](50) NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationObjectTypes] PRIMARY KEY CLUSTERED 
(
	[ApplicationObjectTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PreviousEmploymentDetails]    Script Date: 23-03-2020 14:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PreviousEmploymentDetails](
	[UserPreviousEmploymentDetailId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Designation] [varchar](50) NOT NULL,
	[CompanyName] [varchar](50) NULL,
	[StartYear] [int] NOT NULL,
	[StartMonth] [varchar](50) NOT NULL,
	[EndYear] [int] NOT NULL,
	[EndMonth] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PreviousEmploymentDetails] PRIMARY KEY CLUSTERED 
(
	[UserPreviousEmploymentDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserEducationDetails]    Script Date: 23-03-2020 14:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserEducationDetails](
	[UserEducationDetailId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Qualification] [varchar](50) NOT NULL,
	[Course] [varchar](50) NULL,
	[Specialization] [varchar](50) NULL,
	[InstituteName] [varchar](50) NULL,
	[CourseType] [varchar](50) NOT NULL,
	[PassingYear] [int] NOT NULL,
 CONSTRAINT [PK_UserEducationDetails] PRIMARY KEY CLUSTERED 
(
	[UserEducationDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserEmploymentDetails]    Script Date: 23-03-2020 14:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserEmploymentDetails](
	[UserEmploymentDetailId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Designation] [varchar](50) NOT NULL,
	[ComapanyName] [varchar](50) NOT NULL,
	[SalaryLakhs] [varchar](50) NOT NULL,
	[SalaryThousands] [varchar](50) NOT NULL,
	[StartYear] [int] NOT NULL,
	[StartMonth] [varchar](50) NOT NULL,
	[EndYear] [int] NOT NULL,
	[EndMonth] [varchar](50) NOT NULL,
	[City] [varchar](50) NULL,
	[NoticePeriod] [varchar](50) NOT NULL,
	[Industry] [varchar](50) NOT NULL,
	[FunctionalArea] [varchar](50) NOT NULL,
	[Role] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserEmploymentDetails] PRIMARY KEY CLUSTERED 
(
	[UserEmploymentDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 23-03-2020 14:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [int] NULL,
	[UserName] [varchar](50) NOT NULL,
	[UserEmailId] [varchar](50) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[MobileNumber] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Resume] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserSkills]    Script Date: 23-03-2020 14:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserSkills](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [varchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserSkills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ApplicationObjects]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationObjects_ApplicationObjectTypes] FOREIGN KEY([ApplicationObjectTypeId])
REFERENCES [dbo].[ApplicationObjectTypes] ([ApplicationObjectTypeId])
GO
ALTER TABLE [dbo].[ApplicationObjects] CHECK CONSTRAINT [FK_ApplicationObjects_ApplicationObjectTypes]
GO
ALTER TABLE [dbo].[PreviousEmploymentDetails]  WITH CHECK ADD  CONSTRAINT [FK_PreviousEmploymentDetails_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[PreviousEmploymentDetails] CHECK CONSTRAINT [FK_PreviousEmploymentDetails_Users]
GO
ALTER TABLE [dbo].[UserEducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserEducationDetails_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserEducationDetails] CHECK CONSTRAINT [FK_UserEducationDetails_Users]
GO
ALTER TABLE [dbo].[UserEmploymentDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserEmploymentDetails_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserEmploymentDetails] CHECK CONSTRAINT [FK_UserEmploymentDetails_Users]
GO
ALTER TABLE [dbo].[UserSkills]  WITH CHECK ADD  CONSTRAINT [FK_UserSkills_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserSkills] CHECK CONSTRAINT [FK_UserSkills_Users]
GO
USE [master]
GO
ALTER DATABASE [NaukriAppDb] SET  READ_WRITE 
GO
