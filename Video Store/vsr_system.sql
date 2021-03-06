USE [master]
GO
/****** Object:  Database [VSR_System]    Script Date: 12/26/2018 5:59:10 PM ******/
CREATE DATABASE [VSR_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VSR_System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\VSR_System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VSR_System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\VSR_System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [VSR_System] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VSR_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VSR_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VSR_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VSR_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VSR_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VSR_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [VSR_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VSR_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VSR_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VSR_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VSR_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VSR_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VSR_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VSR_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VSR_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VSR_System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VSR_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VSR_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VSR_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VSR_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VSR_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VSR_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VSR_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VSR_System] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VSR_System] SET  MULTI_USER 
GO
ALTER DATABASE [VSR_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VSR_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VSR_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VSR_System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VSR_System] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VSR_System] SET QUERY_STORE = OFF
GO
USE [VSR_System]
GO
/****** Object:  Table [dbo].[Coustmer]    Script Date: 12/26/2018 5:59:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coustmer](
	[CustID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 12/26/2018 5:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieID] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Year] [nvarchar](50) NULL,
	[Rental_Cost] [money] NULL,
	[Plot] [ntext] NULL,
	[Genre] [nchar](10) NULL,
	[copies] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentedMovies]    Script Date: 12/26/2018 5:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentedMovies](
	[RMID] [int] IDENTITY(1,1) NOT NULL,
	[MovieIDFK] [int] NULL,
	[CustIDFK] [int] NULL,
	[DateRented] [datetime] NULL,
	[DateReturned] [datetime] NULL,
	[isout] [int] NULL,
 CONSTRAINT [PK_RentedMovie] PRIMARY KEY CLUSTERED 
(
	[RMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userdata]    Script Date: 12/26/2018 5:59:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userdata](
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Coustmer] ON 

INSERT [dbo].[Coustmer] ([CustID], [FirstName], [LastName], [Address], [Phone]) VALUES (2002, N'harvy', N'neel', N'28 spent road', N'829382378')
INSERT [dbo].[Coustmer] ([CustID], [FirstName], [LastName], [Address], [Phone]) VALUES (2003, N'diviya', N'nath', N'37 kane road', N'73849283')
INSERT [dbo].[Coustmer] ([CustID], [FirstName], [LastName], [Address], [Phone]) VALUES (2004, N'nisha', N'talvar', N'38 dett road ', N'82938748')
INSERT [dbo].[Coustmer] ([CustID], [FirstName], [LastName], [Address], [Phone]) VALUES (2005, N'karan', N'singh', N'37 botany', N'378273892')
INSERT [dbo].[Coustmer] ([CustID], [FirstName], [LastName], [Address], [Phone]) VALUES (2006, N'jordan', N'belbred', N'10 latin road', N'8374827367')
SET IDENTITY_INSERT [dbo].[Coustmer] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MovieID], [Rating], [Title], [Year], [Rental_Cost], [Plot], [Genre], [copies]) VALUES (2002, N'5', N'uncahrted', N'2017', 5.0000, N'thief', N'action    ', 5)
INSERT [dbo].[Movies] ([MovieID], [Rating], [Title], [Year], [Rental_Cost], [Plot], [Genre], [copies]) VALUES (2003, N'3', N'nijan turtels', N'2012', 2.0000, N'turtles', N'action    ', 3)
INSERT [dbo].[Movies] ([MovieID], [Rating], [Title], [Year], [Rental_Cost], [Plot], [Genre], [copies]) VALUES (2004, N'5', N'supernatural`', N'2012', 2.0000, N'demon', N'horror    ', 4)
INSERT [dbo].[Movies] ([MovieID], [Rating], [Title], [Year], [Rental_Cost], [Plot], [Genre], [copies]) VALUES (2005, N'3', N'mad lad', N'2016', 5.0000, N'serios', N'comedy    ', 10)
INSERT [dbo].[Movies] ([MovieID], [Rating], [Title], [Year], [Rental_Cost], [Plot], [Genre], [copies]) VALUES (2006, N'5', N'maze runner`', N'2015', 5.0000, N'action', N'action    ', 5)
SET IDENTITY_INSERT [dbo].[Movies] OFF
SET IDENTITY_INSERT [dbo].[RentedMovies] ON 

INSERT [dbo].[RentedMovies] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned], [isout]) VALUES (1002, 1003, 1005, CAST(N'2018-12-21T05:20:48.183' AS DateTime), CAST(N'2018-12-21T05:21:08.000' AS DateTime), 0)
INSERT [dbo].[RentedMovies] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned], [isout]) VALUES (1003, 1004, 1005, CAST(N'2018-12-21T05:20:54.410' AS DateTime), CAST(N'2018-12-25T18:06:43.000' AS DateTime), 0)
INSERT [dbo].[RentedMovies] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned], [isout]) VALUES (1004, 1003, 1003, CAST(N'2018-12-21T05:21:01.483' AS DateTime), CAST(N'2018-12-26T16:50:22.000' AS DateTime), 0)
INSERT [dbo].[RentedMovies] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned], [isout]) VALUES (1005, 1005, 1004, CAST(N'2018-12-21T05:37:51.227' AS DateTime), CAST(N'2018-12-26T16:50:03.000' AS DateTime), 0)
INSERT [dbo].[RentedMovies] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned], [isout]) VALUES (2002, 2003, 2005, CAST(N'2018-12-26T16:59:31.143' AS DateTime), NULL, 1)
INSERT [dbo].[RentedMovies] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned], [isout]) VALUES (2003, 2004, 2004, CAST(N'2018-12-26T16:59:47.627' AS DateTime), NULL, 1)
INSERT [dbo].[RentedMovies] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned], [isout]) VALUES (2004, 2004, 2003, CAST(N'2018-12-26T17:04:01.147' AS DateTime), NULL, 1)
INSERT [dbo].[RentedMovies] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned], [isout]) VALUES (2005, 2004, 2003, CAST(N'2018-12-26T17:05:59.653' AS DateTime), CAST(N'2018-12-26T17:06:09.000' AS DateTime), 0)
INSERT [dbo].[RentedMovies] ([RMID], [MovieIDFK], [CustIDFK], [DateRented], [DateReturned], [isout]) VALUES (2006, 2006, 2006, CAST(N'2018-12-26T17:44:05.557' AS DateTime), CAST(N'2018-12-26T17:44:26.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[RentedMovies] OFF
INSERT [dbo].[userdata] ([UserName], [Password]) VALUES (N'user', N'user')
INSERT [dbo].[userdata] ([UserName], [Password]) VALUES (N'1', N'1')
USE [master]
GO
ALTER DATABASE [VSR_System] SET  READ_WRITE 
GO
