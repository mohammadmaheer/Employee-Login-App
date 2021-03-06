USE [master]
GO
/****** Object:  Database [Maheer]    Script Date: 11/02/2019 03:04:33 ******/
CREATE DATABASE [Maheer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Maheer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Maheer.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Maheer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Maheer_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Maheer] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Maheer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Maheer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Maheer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Maheer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Maheer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Maheer] SET ARITHABORT OFF 
GO
ALTER DATABASE [Maheer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Maheer] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Maheer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Maheer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Maheer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Maheer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Maheer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Maheer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Maheer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Maheer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Maheer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Maheer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Maheer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Maheer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Maheer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Maheer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Maheer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Maheer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Maheer] SET RECOVERY FULL 
GO
ALTER DATABASE [Maheer] SET  MULTI_USER 
GO
ALTER DATABASE [Maheer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Maheer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Maheer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Maheer] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Maheer', N'ON'
GO
USE [Maheer]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 11/02/2019 03:04:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Seat no] [nvarchar](10) NOT NULL,
	[Year] [int] NULL,
	[Address] [nvarchar](100) NULL,
	[Department Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK__Students__3214EC078F8DA2B6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name], [Seat no], [Year], [Address], [Department Name]) VALUES (1, N'Imran', N'7895', 2012, N'Nazimabad', N'Commerce')
INSERT [dbo].[Students] ([Id], [Name], [Seat no], [Year], [Address], [Department Name]) VALUES (3, N'Ali', N'3456', 2015, N'Gulshan', N'Cs')
INSERT [dbo].[Students] ([Id], [Name], [Seat no], [Year], [Address], [Department Name]) VALUES (6, N'Salman', N'5692', 2018, N'Johar', N'Food Sci')
INSERT [dbo].[Students] ([Id], [Name], [Seat no], [Year], [Address], [Department Name]) VALUES (7, N'Erum', N'18101045', 2018, N'Hadeed', N'Visual Studies')
INSERT [dbo].[Students] ([Id], [Name], [Seat no], [Year], [Address], [Department Name]) VALUES (8, N'a', N'12', 2011, N'abz', N'dep')
INSERT [dbo].[Students] ([Id], [Name], [Seat no], [Year], [Address], [Department Name]) VALUES (11, N'dd', N'332', 222, N'ddd', N'dd')
INSERT [dbo].[Students] ([Id], [Name], [Seat no], [Year], [Address], [Department Name]) VALUES (12, N'Wahid ali', N'555', 99, N'mm', N'nn')
INSERT [dbo].[Students] ([Id], [Name], [Seat no], [Year], [Address], [Department Name]) VALUES (14, N'owais', N'123', 321, N'hadeed', N'ubit')
SET IDENTITY_INSERT [dbo].[Students] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Students__D86FF8AB7E099C6A]    Script Date: 11/02/2019 03:04:34 ******/
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [UQ__Students__D86FF8AB7E099C6A] UNIQUE NONCLUSTERED 
(
	[Seat no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Maheer] SET  READ_WRITE 
GO
