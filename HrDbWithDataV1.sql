USE [master]
GO
/****** Object:  Database [HrDb]    Script Date: 5/16/2023 9:02:58 AM ******/
CREATE DATABASE [HrDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HrDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HrDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HrDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HrDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HrDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HrDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HrDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HrDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HrDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HrDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HrDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [HrDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HrDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HrDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HrDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HrDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HrDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HrDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HrDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HrDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HrDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HrDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HrDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HrDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HrDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HrDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HrDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HrDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HrDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HrDb] SET  MULTI_USER 
GO
ALTER DATABASE [HrDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HrDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HrDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HrDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HrDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HrDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HrDb] SET QUERY_STORE = OFF
GO
USE [HrDb]
GO
/****** Object:  Table [dbo].[tbDepartment]    Script Date: 5/16/2023 9:02:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDepartment](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbDepartment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbEmployee]    Script Date: 5/16/2023 9:02:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbEmployee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Salary] [smallmoney] NULL,
	[JoinDate] [date] NULL,
	[DepartmentId] [smallint] NULL,
	[ManagerId] [int] NULL,
 CONSTRAINT [PK_tbEmployee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbEmployeeOfMonth]    Script Date: 5/16/2023 9:02:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbEmployeeOfMonth](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_tbEmployeeOfMonth] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbDepartment] ON 

INSERT [dbo].[tbDepartment] ([Id], [Title]) VALUES (1, N'Information Technology')
INSERT [dbo].[tbDepartment] ([Id], [Title]) VALUES (2, N'HR')
INSERT [dbo].[tbDepartment] ([Id], [Title]) VALUES (3, N'Sales')
INSERT [dbo].[tbDepartment] ([Id], [Title]) VALUES (4, N'Marketing')
SET IDENTITY_INSERT [dbo].[tbDepartment] OFF
GO
SET IDENTITY_INSERT [dbo].[tbEmployee] ON 

INSERT [dbo].[tbEmployee] ([Id], [FirstName], [LastName], [Salary], [JoinDate], [DepartmentId], [ManagerId]) VALUES (1, N'Employee', N'A', 500.0000, CAST(N'2000-01-01' AS Date), 1, NULL)
INSERT [dbo].[tbEmployee] ([Id], [FirstName], [LastName], [Salary], [JoinDate], [DepartmentId], [ManagerId]) VALUES (2, N'Employee', N'B', 800.0000, CAST(N'2001-01-01' AS Date), 2, 1)
INSERT [dbo].[tbEmployee] ([Id], [FirstName], [LastName], [Salary], [JoinDate], [DepartmentId], [ManagerId]) VALUES (3, N'Employee', N'C', 450.0000, CAST(N'2006-01-01' AS Date), 2, 1)
INSERT [dbo].[tbEmployee] ([Id], [FirstName], [LastName], [Salary], [JoinDate], [DepartmentId], [ManagerId]) VALUES (4, N'Employee', N'D', 980.0000, CAST(N'2007-01-01' AS Date), 3, 2)
INSERT [dbo].[tbEmployee] ([Id], [FirstName], [LastName], [Salary], [JoinDate], [DepartmentId], [ManagerId]) VALUES (6, N'Employee', N'E', 1200.0000, CAST(N'2018-01-01' AS Date), NULL, 2)
INSERT [dbo].[tbEmployee] ([Id], [FirstName], [LastName], [Salary], [JoinDate], [DepartmentId], [ManagerId]) VALUES (7, N'Employee', N'F', 900.0000, CAST(N'2018-01-01' AS Date), 10, 3)
SET IDENTITY_INSERT [dbo].[tbEmployee] OFF
GO
SET IDENTITY_INSERT [dbo].[tbEmployeeOfMonth] ON 

INSERT [dbo].[tbEmployeeOfMonth] ([Id], [EmployeeId], [Month], [Year]) VALUES (1, 2, 1, 2023)
INSERT [dbo].[tbEmployeeOfMonth] ([Id], [EmployeeId], [Month], [Year]) VALUES (2, 4, 2, 2023)
SET IDENTITY_INSERT [dbo].[tbEmployeeOfMonth] OFF
GO
USE [master]
GO
ALTER DATABASE [HrDb] SET  READ_WRITE 
GO
