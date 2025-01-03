USE [master]
GO
/****** Object:  Database [TournamentDB_420_Osipov]    Script Date: 26.12.2024 15:31:20 ******/
CREATE DATABASE [TournamentDB_420_Osipov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TournamentDB_420_Osipov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SERV1215\MSSQL\DATA\TournamentDB_420_Osipov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'TournamentDB_420_Osipov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SERV1215\MSSQL\DATA\TournamentDB_420_Osipov_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TournamentDB_420_Osipov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET ARITHABORT OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET  MULTI_USER 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TournamentDB_420_Osipov', N'ON'
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET QUERY_STORE = OFF
GO
USE [TournamentDB_420_Osipov]
GO
/****** Object:  User [user01]    Script Date: 26.12.2024 15:31:21 ******/
CREATE USER [user01] FOR LOGIN [user01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IDCategory] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IDCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Match]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[IDMatch] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IDTournament] [int] NULL,
 CONSTRAINT [PK_Match] PRIMARY KEY CLUSTERED 
(
	[IDMatch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchPlayers]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchPlayers](
	[IDLog] [int] IDENTITY(1,1) NOT NULL,
	[IDMatch] [int] NULL,
	[IDPlayer] [int] NULL,
 CONSTRAINT [PK_MatchPlayers] PRIMARY KEY CLUSTERED 
(
	[IDLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizator]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizator](
	[IDOrganizator] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[IDUser] [int] NULL,
 CONSTRAINT [PK_Organizator] PRIMARY KEY CLUSTERED 
(
	[IDOrganizator] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Player]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[IDPlayer] [int] IDENTITY(1,1) NOT NULL,
	[Nickname] [nvarchar](50) NULL,
	[Phone] [nvarchar](12) NULL,
	[IDRole] [int] NULL,
	[IDTeam] [int] NULL,
	[IDUser] [int] NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[IDPlayer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayerStats]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerStats](
	[IDPlayer] [int] NOT NULL,
	[NumOfMatches] [int] NULL,
	[Wins] [int] NULL,
	[Loses] [int] NULL,
 CONSTRAINT [PK_PlayerStats] PRIMARY KEY CLUSTERED 
(
	[IDPlayer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IDRole] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage](
	[IDStage] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Stage] PRIMARY KEY CLUSTERED 
(
	[IDStage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[IDTeam] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[IDTeam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamsHistory]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamsHistory](
	[IDHistory] [int] IDENTITY(1,1) NOT NULL,
	[IDPlayer] [int] NULL,
	[IDTeam] [int] NULL,
	[JoinDate] [nvarchar](50) NULL,
 CONSTRAINT [PK_TeamsHistory] PRIMARY KEY CLUSTERED 
(
	[IDHistory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tournament]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournament](
	[IDTournament] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Game] [nvarchar](50) NULL,
	[Prize] [int] NULL,
	[IDCategory] [int] NULL,
	[IDStage] [int] NULL,
	[Format] [nvarchar](50) NULL,
	[NumberOfPlayers] [int] NULL,
	[Date] [date] NULL,
	[StartTime] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tournament] PRIMARY KEY CLUSTERED 
(
	[IDTournament] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TournamentApplication]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TournamentApplication](
	[IDTournamentApps] [int] IDENTITY(1,1) NOT NULL,
	[IDUser] [int] NULL,
	[People] [nvarchar](250) NULL,
	[UserPreferredRole] [nvarchar](50) NULL,
	[IDTournament] [int] NULL,
 CONSTRAINT [PK_TournamentApplication] PRIMARY KEY CLUSTERED 
(
	[IDTournamentApps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IDUser] [int] IDENTITY(1,1) NOT NULL,
	[IDUserRole] [int] NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 26.12.2024 15:31:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[IDUserRole] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[IDUserRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([IDCategory], [Name]) VALUES (1, N'Одиночный')
INSERT [dbo].[Category] ([IDCategory], [Name]) VALUES (2, N'Командный')
INSERT [dbo].[Category] ([IDCategory], [Name]) VALUES (3, N'Открытый (смешанный)')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Match] ON 

INSERT [dbo].[Match] ([IDMatch], [Name], [IDTournament]) VALUES (1, N'Mirage', 1)
INSERT [dbo].[Match] ([IDMatch], [Name], [IDTournament]) VALUES (2, N'Dust 2', 1)
INSERT [dbo].[Match] ([IDMatch], [Name], [IDTournament]) VALUES (3, N'Overpass', 2)
INSERT [dbo].[Match] ([IDMatch], [Name], [IDTournament]) VALUES (4, N'Mirage', 2)
INSERT [dbo].[Match] ([IDMatch], [Name], [IDTournament]) VALUES (5, N'Mirage', 3)
INSERT [dbo].[Match] ([IDMatch], [Name], [IDTournament]) VALUES (6, N'Dust 2', 2)
INSERT [dbo].[Match] ([IDMatch], [Name], [IDTournament]) VALUES (7, N'Dota 2 Map 1', 4)
INSERT [dbo].[Match] ([IDMatch], [Name], [IDTournament]) VALUES (8, N'Dota 2 Map 2', 4)
INSERT [dbo].[Match] ([IDMatch], [Name], [IDTournament]) VALUES (9, N'Dota 2 Map 3', 4)
SET IDENTITY_INSERT [dbo].[Match] OFF
GO
SET IDENTITY_INSERT [dbo].[MatchPlayers] ON 

INSERT [dbo].[MatchPlayers] ([IDLog], [IDMatch], [IDPlayer]) VALUES (1, 1, 2)
INSERT [dbo].[MatchPlayers] ([IDLog], [IDMatch], [IDPlayer]) VALUES (2, 1, 3)
INSERT [dbo].[MatchPlayers] ([IDLog], [IDMatch], [IDPlayer]) VALUES (3, 1, 4)
INSERT [dbo].[MatchPlayers] ([IDLog], [IDMatch], [IDPlayer]) VALUES (4, 1, 5)
INSERT [dbo].[MatchPlayers] ([IDLog], [IDMatch], [IDPlayer]) VALUES (5, 1, 6)
INSERT [dbo].[MatchPlayers] ([IDLog], [IDMatch], [IDPlayer]) VALUES (6, 1, 7)
INSERT [dbo].[MatchPlayers] ([IDLog], [IDMatch], [IDPlayer]) VALUES (7, 8, 2)
INSERT [dbo].[MatchPlayers] ([IDLog], [IDMatch], [IDPlayer]) VALUES (8, 8, 3)
INSERT [dbo].[MatchPlayers] ([IDLog], [IDMatch], [IDPlayer]) VALUES (9, 8, 7)
INSERT [dbo].[MatchPlayers] ([IDLog], [IDMatch], [IDPlayer]) VALUES (10, 8, 8)
INSERT [dbo].[MatchPlayers] ([IDLog], [IDMatch], [IDPlayer]) VALUES (11, 8, 1)
SET IDENTITY_INSERT [dbo].[MatchPlayers] OFF
GO
SET IDENTITY_INSERT [dbo].[Player] ON 

INSERT [dbo].[Player] ([IDPlayer], [Nickname], [Phone], [IDRole], [IDTeam], [IDUser]) VALUES (1, N'Крутой111', N'89872221111', 1, 1, 1)
INSERT [dbo].[Player] ([IDPlayer], [Nickname], [Phone], [IDRole], [IDTeam], [IDUser]) VALUES (2, N'Дабл', N'89872221112', 2, 1, NULL)
INSERT [dbo].[Player] ([IDPlayer], [Nickname], [Phone], [IDRole], [IDTeam], [IDUser]) VALUES (3, N'Леший', N'89872221113', 3, 1, NULL)
INSERT [dbo].[Player] ([IDPlayer], [Nickname], [Phone], [IDRole], [IDTeam], [IDUser]) VALUES (4, N'Ликс', N'89872221114', 4, 1, NULL)
INSERT [dbo].[Player] ([IDPlayer], [Nickname], [Phone], [IDRole], [IDTeam], [IDUser]) VALUES (5, N'Шалаш', N'89872221115', 2, 1, NULL)
INSERT [dbo].[Player] ([IDPlayer], [Nickname], [Phone], [IDRole], [IDTeam], [IDUser]) VALUES (6, N'Лексус', N'89872221116', 1, 2, NULL)
INSERT [dbo].[Player] ([IDPlayer], [Nickname], [Phone], [IDRole], [IDTeam], [IDUser]) VALUES (7, N'Валерий', N'89872221117', 2, 2, NULL)
INSERT [dbo].[Player] ([IDPlayer], [Nickname], [Phone], [IDRole], [IDTeam], [IDUser]) VALUES (8, N'Владислав', N'89872221118', 1, NULL, NULL)
INSERT [dbo].[Player] ([IDPlayer], [Nickname], [Phone], [IDRole], [IDTeam], [IDUser]) VALUES (9, N'Шринк', N'89872221119', 1, 3, NULL)
INSERT [dbo].[Player] ([IDPlayer], [Nickname], [Phone], [IDRole], [IDTeam], [IDUser]) VALUES (10, N'Дедус', N'89872221110', 3, 3, NULL)
SET IDENTITY_INSERT [dbo].[Player] OFF
GO
INSERT [dbo].[PlayerStats] ([IDPlayer], [NumOfMatches], [Wins], [Loses]) VALUES (1, 4, 3, 1)
INSERT [dbo].[PlayerStats] ([IDPlayer], [NumOfMatches], [Wins], [Loses]) VALUES (2, 5, 5, 0)
INSERT [dbo].[PlayerStats] ([IDPlayer], [NumOfMatches], [Wins], [Loses]) VALUES (3, 4, 2, 1)
INSERT [dbo].[PlayerStats] ([IDPlayer], [NumOfMatches], [Wins], [Loses]) VALUES (4, 7, 7, 0)
INSERT [dbo].[PlayerStats] ([IDPlayer], [NumOfMatches], [Wins], [Loses]) VALUES (5, 0, 0, 0)
INSERT [dbo].[PlayerStats] ([IDPlayer], [NumOfMatches], [Wins], [Loses]) VALUES (6, 2, 0, 2)
INSERT [dbo].[PlayerStats] ([IDPlayer], [NumOfMatches], [Wins], [Loses]) VALUES (7, 4, 3, 1)
INSERT [dbo].[PlayerStats] ([IDPlayer], [NumOfMatches], [Wins], [Loses]) VALUES (8, 5, 3, 1)
INSERT [dbo].[PlayerStats] ([IDPlayer], [NumOfMatches], [Wins], [Loses]) VALUES (9, 3, 3, 0)
INSERT [dbo].[PlayerStats] ([IDPlayer], [NumOfMatches], [Wins], [Loses]) VALUES (10, 2, 2, 0)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([IDRole], [Name]) VALUES (1, N'Капитан')
INSERT [dbo].[Role] ([IDRole], [Name]) VALUES (2, N'Стрелок')
INSERT [dbo].[Role] ([IDRole], [Name]) VALUES (3, N'Саппорт')
INSERT [dbo].[Role] ([IDRole], [Name]) VALUES (4, N'Танк')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Stage] ON 

INSERT [dbo].[Stage] ([IDStage], [Name]) VALUES (1, N'Регистрация')
INSERT [dbo].[Stage] ([IDStage], [Name]) VALUES (2, N'Отборочные матчи')
INSERT [dbo].[Stage] ([IDStage], [Name]) VALUES (3, N'Групповой этап')
INSERT [dbo].[Stage] ([IDStage], [Name]) VALUES (4, N'Плей-офф')
INSERT [dbo].[Stage] ([IDStage], [Name]) VALUES (5, N'Финал')
SET IDENTITY_INSERT [dbo].[Stage] OFF
GO
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([IDTeam], [Name]) VALUES (1, N'Фальконы')
INSERT [dbo].[Team] ([IDTeam], [Name]) VALUES (2, N'Форз')
INSERT [dbo].[Team] ([IDTeam], [Name]) VALUES (3, N'Виртус Про')
INSERT [dbo].[Team] ([IDTeam], [Name]) VALUES (4, N'Ак Барс')
SET IDENTITY_INSERT [dbo].[Team] OFF
GO
SET IDENTITY_INSERT [dbo].[TeamsHistory] ON 

INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (1, 1, 1, N'2020')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (2, 1, 2, N'2021')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (3, 1, 1, N'2022')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (4, 1, 3, N'2023')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (5, 2, 1, N'2020')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (6, 3, 1, N'2021')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (7, 4, 1, N'2020')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (8, 5, 2, N'2024')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (9, 6, 2, N'2024')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (10, 7, 4, N'2020')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (11, 8, 1, N'2019')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (12, 9, 2, N'2020')
INSERT [dbo].[TeamsHistory] ([IDHistory], [IDPlayer], [IDTeam], [JoinDate]) VALUES (13, 9, 3, N'2023')
SET IDENTITY_INSERT [dbo].[TeamsHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Tournament] ON 

INSERT [dbo].[Tournament] ([IDTournament], [Name], [Game], [Prize], [IDCategory], [IDStage], [Format], [NumberOfPlayers], [Date], [StartTime]) VALUES (1, N'Кубок Мира', N'CS2', 10000000, 2, 1, N'5х5', 40, NULL, NULL)
INSERT [dbo].[Tournament] ([IDTournament], [Name], [Game], [Prize], [IDCategory], [IDStage], [Format], [NumberOfPlayers], [Date], [StartTime]) VALUES (2, N'Кубок России', N'CS2', 100000, 3, 4, N'5х5', 40, NULL, NULL)
INSERT [dbo].[Tournament] ([IDTournament], [Name], [Game], [Prize], [IDCategory], [IDStage], [Format], [NumberOfPlayers], [Date], [StartTime]) VALUES (3, N'Major', N'CS2', 10000000, 2, 2, N'5х5', 60, NULL, NULL)
INSERT [dbo].[Tournament] ([IDTournament], [Name], [Game], [Prize], [IDCategory], [IDStage], [Format], [NumberOfPlayers], [Date], [StartTime]) VALUES (4, N'The International', N'Dota 2', 10000000, 2, 2, N'5х5', 30, NULL, NULL)
INSERT [dbo].[Tournament] ([IDTournament], [Name], [Game], [Prize], [IDCategory], [IDStage], [Format], [NumberOfPlayers], [Date], [StartTime]) VALUES (5, N'SOLO', N'Dota 2', 10000, 1, 3, N'1х1', 10, NULL, NULL)
INSERT [dbo].[Tournament] ([IDTournament], [Name], [Game], [Prize], [IDCategory], [IDStage], [Format], [NumberOfPlayers], [Date], [StartTime]) VALUES (6, N'Олимпийский', N'Dota 2', 5000000, 2, 1, N'5x5', 100, CAST(N'2024-01-01' AS Date), N'12:00')
SET IDENTITY_INSERT [dbo].[Tournament] OFF
GO
SET IDENTITY_INSERT [dbo].[TournamentApplication] ON 

INSERT [dbo].[TournamentApplication] ([IDTournamentApps], [IDUser], [People], [UserPreferredRole], [IDTournament]) VALUES (1, 1, N'fdsfdsfdsf', N'Саппорт', 1)
SET IDENTITY_INSERT [dbo].[TournamentApplication] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IDUser], [IDUserRole], [Login], [Password]) VALUES (1, 1, N'1', N'11')
INSERT [dbo].[User] ([IDUser], [IDUserRole], [Login], [Password]) VALUES (2, 2, N'2', N'22')
INSERT [dbo].[User] ([IDUser], [IDUserRole], [Login], [Password]) VALUES (3, 3, N'3', N'33')
INSERT [dbo].[User] ([IDUser], [IDUserRole], [Login], [Password]) VALUES (4, 3, N'Kirill', N'123')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([IDUserRole], [Name]) VALUES (1, N'Игрок')
INSERT [dbo].[UserRole] ([IDUserRole], [Name]) VALUES (2, N'Организатор')
INSERT [dbo].[UserRole] ([IDUserRole], [Name]) VALUES (3, N'Зритель')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Tournament] FOREIGN KEY([IDTournament])
REFERENCES [dbo].[Tournament] ([IDTournament])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Tournament]
GO
ALTER TABLE [dbo].[MatchPlayers]  WITH CHECK ADD  CONSTRAINT [FK_MatchPlayers_Match] FOREIGN KEY([IDMatch])
REFERENCES [dbo].[Match] ([IDMatch])
GO
ALTER TABLE [dbo].[MatchPlayers] CHECK CONSTRAINT [FK_MatchPlayers_Match]
GO
ALTER TABLE [dbo].[MatchPlayers]  WITH CHECK ADD  CONSTRAINT [FK_MatchPlayers_Player] FOREIGN KEY([IDPlayer])
REFERENCES [dbo].[Player] ([IDPlayer])
GO
ALTER TABLE [dbo].[MatchPlayers] CHECK CONSTRAINT [FK_MatchPlayers_Player]
GO
ALTER TABLE [dbo].[Organizator]  WITH CHECK ADD  CONSTRAINT [FK_Organizator_User] FOREIGN KEY([IDUser])
REFERENCES [dbo].[User] ([IDUser])
GO
ALTER TABLE [dbo].[Organizator] CHECK CONSTRAINT [FK_Organizator_User]
GO
ALTER TABLE [dbo].[Player]  WITH CHECK ADD  CONSTRAINT [FK_Player_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([IDRole])
GO
ALTER TABLE [dbo].[Player] CHECK CONSTRAINT [FK_Player_Role]
GO
ALTER TABLE [dbo].[Player]  WITH CHECK ADD  CONSTRAINT [FK_Player_User] FOREIGN KEY([IDUser])
REFERENCES [dbo].[User] ([IDUser])
GO
ALTER TABLE [dbo].[Player] CHECK CONSTRAINT [FK_Player_User]
GO
ALTER TABLE [dbo].[PlayerStats]  WITH CHECK ADD  CONSTRAINT [FK_PlayerStats_Player] FOREIGN KEY([IDPlayer])
REFERENCES [dbo].[Player] ([IDPlayer])
GO
ALTER TABLE [dbo].[PlayerStats] CHECK CONSTRAINT [FK_PlayerStats_Player]
GO
ALTER TABLE [dbo].[TeamsHistory]  WITH CHECK ADD  CONSTRAINT [FK_TeamsHistory_Player] FOREIGN KEY([IDPlayer])
REFERENCES [dbo].[Player] ([IDPlayer])
GO
ALTER TABLE [dbo].[TeamsHistory] CHECK CONSTRAINT [FK_TeamsHistory_Player]
GO
ALTER TABLE [dbo].[TeamsHistory]  WITH CHECK ADD  CONSTRAINT [FK_TeamsHistory_Team] FOREIGN KEY([IDTeam])
REFERENCES [dbo].[Team] ([IDTeam])
GO
ALTER TABLE [dbo].[TeamsHistory] CHECK CONSTRAINT [FK_TeamsHistory_Team]
GO
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD  CONSTRAINT [FK_Tournament_Category] FOREIGN KEY([IDCategory])
REFERENCES [dbo].[Category] ([IDCategory])
GO
ALTER TABLE [dbo].[Tournament] CHECK CONSTRAINT [FK_Tournament_Category]
GO
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD  CONSTRAINT [FK_Tournament_Stage] FOREIGN KEY([IDStage])
REFERENCES [dbo].[Stage] ([IDStage])
GO
ALTER TABLE [dbo].[Tournament] CHECK CONSTRAINT [FK_Tournament_Stage]
GO
ALTER TABLE [dbo].[TournamentApplication]  WITH CHECK ADD  CONSTRAINT [FK_TournamentApplication_Tournament] FOREIGN KEY([IDTournament])
REFERENCES [dbo].[Tournament] ([IDTournament])
GO
ALTER TABLE [dbo].[TournamentApplication] CHECK CONSTRAINT [FK_TournamentApplication_Tournament]
GO
ALTER TABLE [dbo].[TournamentApplication]  WITH CHECK ADD  CONSTRAINT [FK_TournamentApplication_User] FOREIGN KEY([IDUser])
REFERENCES [dbo].[User] ([IDUser])
GO
ALTER TABLE [dbo].[TournamentApplication] CHECK CONSTRAINT [FK_TournamentApplication_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserRole] FOREIGN KEY([IDUserRole])
REFERENCES [dbo].[UserRole] ([IDUserRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserRole]
GO
USE [master]
GO
ALTER DATABASE [TournamentDB_420_Osipov] SET  READ_WRITE 
GO
