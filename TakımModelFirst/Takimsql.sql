USE [master]
GO
/****** Object:  Database [Takim]    Script Date: 4.04.2023 23:22:50 ******/
CREATE DATABASE [Takim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Takim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Takim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Takim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Takim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Takim] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Takim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Takim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Takim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Takim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Takim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Takim] SET ARITHABORT OFF 
GO
ALTER DATABASE [Takim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Takim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Takim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Takim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Takim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Takim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Takim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Takim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Takim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Takim] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Takim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Takim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Takim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Takim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Takim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Takim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Takim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Takim] SET RECOVERY FULL 
GO
ALTER DATABASE [Takim] SET  MULTI_USER 
GO
ALTER DATABASE [Takim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Takim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Takim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Takim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Takim] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Takim] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Takim', N'ON'
GO
ALTER DATABASE [Takim] SET QUERY_STORE = ON
GO
ALTER DATABASE [Takim] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Takim]
GO
/****** Object:  Table [dbo].[KullaniciSet]    Script Date: 4.04.2023 23:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciSet](
	[KullaniciNo] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](max) NOT NULL,
	[Sifre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_KullaniciSet] PRIMARY KEY CLUSTERED 
(
	[KullaniciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MevkiSet]    Script Date: 4.04.2023 23:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MevkiSet](
	[MevkiNo] [int] IDENTITY(1,1) NOT NULL,
	[MevkiAdi] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_MevkiSet] PRIMARY KEY CLUSTERED 
(
	[MevkiNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OyuncuSet]    Script Date: 4.04.2023 23:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OyuncuSet](
	[OyuncuNo] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](max) NOT NULL,
	[Soyadi] [nvarchar](max) NOT NULL,
	[Yas] [int] NOT NULL,
	[Mevki] [nvarchar](max) NOT NULL,
	[Maas] [int] NOT NULL,
	[Ulke] [nvarchar](max) NOT NULL,
	[MevkiNo] [int] NOT NULL,
	[TakimNo] [int] NOT NULL,
 CONSTRAINT [PK_OyuncuSet] PRIMARY KEY CLUSTERED 
(
	[OyuncuNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TakimSet]    Script Date: 4.04.2023 23:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TakimSet](
	[TakimNo] [int] IDENTITY(1,1) NOT NULL,
	[TakimAdi] [nvarchar](max) NOT NULL,
	[UlkeNo] [int] NOT NULL,
 CONSTRAINT [PK_TakimSet] PRIMARY KEY CLUSTERED 
(
	[TakimNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UlkeSet]    Script Date: 4.04.2023 23:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UlkeSet](
	[UlkeNo] [int] IDENTITY(1,1) NOT NULL,
	[UlkeAdi] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UlkeSet] PRIMARY KEY CLUSTERED 
(
	[UlkeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MevkiSet] ON 

INSERT [dbo].[MevkiSet] ([MevkiNo], [MevkiAdi]) VALUES (1, N'Kaleci')
INSERT [dbo].[MevkiSet] ([MevkiNo], [MevkiAdi]) VALUES (2, N'Stoper')
INSERT [dbo].[MevkiSet] ([MevkiNo], [MevkiAdi]) VALUES (3, N'Orta Saha')
SET IDENTITY_INSERT [dbo].[MevkiSet] OFF
GO
SET IDENTITY_INSERT [dbo].[OyuncuSet] ON 

INSERT [dbo].[OyuncuSet] ([OyuncuNo], [Adi], [Soyadi], [Yas], [Mevki], [Maas], [Ulke], [MevkiNo], [TakimNo]) VALUES (1, N'Yusuf ', N'Çil', 27, N'Kaleci', 500000, N'Türkiye', 1, 1)
SET IDENTITY_INSERT [dbo].[OyuncuSet] OFF
GO
SET IDENTITY_INSERT [dbo].[TakimSet] ON 

INSERT [dbo].[TakimSet] ([TakimNo], [TakimAdi], [UlkeNo]) VALUES (1, N'Beşiktaş', 1)
SET IDENTITY_INSERT [dbo].[TakimSet] OFF
GO
SET IDENTITY_INSERT [dbo].[UlkeSet] ON 

INSERT [dbo].[UlkeSet] ([UlkeNo], [UlkeAdi]) VALUES (1, N'Türkiye')
INSERT [dbo].[UlkeSet] ([UlkeNo], [UlkeAdi]) VALUES (2, N'Almanya')
INSERT [dbo].[UlkeSet] ([UlkeNo], [UlkeAdi]) VALUES (3, N'Amerika')
SET IDENTITY_INSERT [dbo].[UlkeSet] OFF
GO
/****** Object:  Index [IX_FK_MevkiOyuncu]    Script Date: 4.04.2023 23:22:51 ******/
CREATE NONCLUSTERED INDEX [IX_FK_MevkiOyuncu] ON [dbo].[OyuncuSet]
(
	[MevkiNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_TakimOyuncu]    Script Date: 4.04.2023 23:22:51 ******/
CREATE NONCLUSTERED INDEX [IX_FK_TakimOyuncu] ON [dbo].[OyuncuSet]
(
	[TakimNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_UlkeTakim]    Script Date: 4.04.2023 23:22:51 ******/
CREATE NONCLUSTERED INDEX [IX_FK_UlkeTakim] ON [dbo].[TakimSet]
(
	[UlkeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OyuncuSet]  WITH CHECK ADD  CONSTRAINT [FK_MevkiOyuncu] FOREIGN KEY([MevkiNo])
REFERENCES [dbo].[MevkiSet] ([MevkiNo])
GO
ALTER TABLE [dbo].[OyuncuSet] CHECK CONSTRAINT [FK_MevkiOyuncu]
GO
ALTER TABLE [dbo].[OyuncuSet]  WITH CHECK ADD  CONSTRAINT [FK_TakimOyuncu] FOREIGN KEY([TakimNo])
REFERENCES [dbo].[TakimSet] ([TakimNo])
GO
ALTER TABLE [dbo].[OyuncuSet] CHECK CONSTRAINT [FK_TakimOyuncu]
GO
ALTER TABLE [dbo].[TakimSet]  WITH CHECK ADD  CONSTRAINT [FK_UlkeTakim] FOREIGN KEY([UlkeNo])
REFERENCES [dbo].[UlkeSet] ([UlkeNo])
GO
ALTER TABLE [dbo].[TakimSet] CHECK CONSTRAINT [FK_UlkeTakim]
GO
USE [master]
GO
ALTER DATABASE [Takim] SET  READ_WRITE 
GO
