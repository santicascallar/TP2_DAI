USE [master]
GO
/****** Object:  Database [TP2_personajes]    Script Date: 27/4/2022 09:07:55 ******/
CREATE DATABASE [TP2_personajes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP2_personajes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP2_personajes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TP2_personajes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP2_personajes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TP2_personajes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TP2_personajes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP2_personajes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP2_personajes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP2_personajes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP2_personajes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP2_personajes] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP2_personajes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TP2_personajes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP2_personajes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP2_personajes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP2_personajes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP2_personajes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP2_personajes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP2_personajes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP2_personajes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP2_personajes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TP2_personajes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP2_personajes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP2_personajes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP2_personajes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP2_personajes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP2_personajes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP2_personajes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP2_personajes] SET RECOVERY FULL 
GO
ALTER DATABASE [TP2_personajes] SET  MULTI_USER 
GO
ALTER DATABASE [TP2_personajes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP2_personajes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP2_personajes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP2_personajes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TP2_personajes] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TP2_personajes', N'ON'
GO
ALTER DATABASE [TP2_personajes] SET QUERY_STORE = OFF
GO
USE [TP2_personajes]
GO
/****** Object:  User [urielysantiago]    Script Date: 27/4/2022 09:07:55 ******/
CREATE USER [urielysantiago] FOR LOGIN [urielysantiago] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [alumno]    Script Date: 27/4/2022 09:07:55 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [urielysantiago]
GO
/****** Object:  Table [dbo].[personaje]    Script Date: 27/4/2022 09:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personaje](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imagen] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[peso] [int] NOT NULL,
	[historia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_personaje] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[personaje] ON 

INSERT [dbo].[personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (1, N'aa', N'santiago', 10, 23, N'dfdf')
INSERT [dbo].[personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (2, N'dd', N'uriel', 17, 10, N'fdfdg')
INSERT [dbo].[personaje] ([id], [imagen], [nombre], [edad], [peso], [historia]) VALUES (3, N'dfd', N'manuel', 20, 13, N'gfgfg')
SET IDENTITY_INSERT [dbo].[personaje] OFF
GO
USE [master]
GO
ALTER DATABASE [TP2_personajes] SET  READ_WRITE 
GO
