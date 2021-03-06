USE [master]
GO
/****** Object:  Database [Biblioteka]    Script Date: 19.02.2021 02:58:45 ******/
CREATE DATABASE [Biblioteka]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Biblioteka', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Biblioteka.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Biblioteka_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Biblioteka_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Biblioteka] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Biblioteka].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Biblioteka] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Biblioteka] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Biblioteka] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Biblioteka] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Biblioteka] SET ARITHABORT OFF 
GO
ALTER DATABASE [Biblioteka] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Biblioteka] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Biblioteka] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Biblioteka] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Biblioteka] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Biblioteka] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Biblioteka] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Biblioteka] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Biblioteka] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Biblioteka] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Biblioteka] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Biblioteka] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Biblioteka] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Biblioteka] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Biblioteka] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Biblioteka] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Biblioteka] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Biblioteka] SET RECOVERY FULL 
GO
ALTER DATABASE [Biblioteka] SET  MULTI_USER 
GO
ALTER DATABASE [Biblioteka] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Biblioteka] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Biblioteka] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Biblioteka] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Biblioteka] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Biblioteka] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Biblioteka', N'ON'
GO
ALTER DATABASE [Biblioteka] SET QUERY_STORE = OFF
GO
USE [Biblioteka]
GO
/****** Object:  Table [dbo].[Autorzy]    Script Date: 19.02.2021 02:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autorzy](
	[id_autor] [int] NOT NULL,
	[Imie] [nvarchar](20) NULL,
	[Nazwisko] [nvarchar](30) NULL,
 CONSTRAINT [PK__Autorzy__7358A081A696EF67] PRIMARY KEY CLUSTERED 
(
	[id_autor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Czytelnicy]    Script Date: 19.02.2021 02:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Czytelnicy](
	[id_czytelnik] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](50) NULL,
	[Nazwisko] [nvarchar](50) NULL,
	[Email] [nvarchar](30) NULL,
	[Telefon] [nvarchar](15) NULL,
	[Data_urodzenia] [date] NULL,
	[Login] [nvarchar](15) NULL,
	[Haslo] [nvarchar](20) NULL,
 CONSTRAINT [PK_Czytelnicy] PRIMARY KEY CLUSTERED 
(
	[id_czytelnik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategorie]    Script Date: 19.02.2021 02:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorie](
	[id_kategorii] [int] NOT NULL,
	[Nazwa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kategorie] PRIMARY KEY CLUSTERED 
(
	[id_kategorii] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ksiazki]    Script Date: 19.02.2021 02:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ksiazki](
	[id_ksiazki] [int] NOT NULL,
	[ISBN] [nvarchar](13) NULL,
	[Tytul] [nvarchar](50) NULL,
	[Opis] [ntext] NOT NULL,
	[id_kategoria] [int] NULL,
	[id_autor] [int] NULL,
	[id_wydawnictwa] [int] NULL,
	[Rok_Wydania] [int] NULL,
 CONSTRAINT [PK_Ksiazki] PRIMARY KEY CLUSTERED 
(
	[id_ksiazki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pracownicy]    Script Date: 19.02.2021 02:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pracownicy](
	[id_pracownik] [int] NOT NULL,
	[Imie] [nvarchar](50) NULL,
	[Nazwisko] [nvarchar](50) NULL,
	[Stanowisko] [nvarchar](20) NULL,
	[Login] [nvarchar](10) NULL,
	[Haslo] [nvarchar](20) NULL,
 CONSTRAINT [PK_Pracownicy] PRIMARY KEY CLUSTERED 
(
	[id_pracownik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wydawnictwa]    Script Date: 19.02.2021 02:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wydawnictwa](
	[id_wydawnictwa] [int] NOT NULL,
	[Nazwa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Wydawnictwa] PRIMARY KEY CLUSTERED 
(
	[id_wydawnictwa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wypozyczenia]    Script Date: 19.02.2021 02:58:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wypozyczenia](
	[id_wypozyczenia] [int] IDENTITY(1,1) NOT NULL,
	[id_czytelnik] [int] NULL,
	[id_ksiazki] [int] NULL,
	[Data_wypozyczenia] [date] NULL,
	[id_pracownik_wypozyczenie] [int] NULL,
	[Data_oddania] [date] NULL,
	[id_pracownik_oddanie] [int] NULL,
 CONSTRAINT [PK_Wypozyczenia] PRIMARY KEY CLUSTERED 
(
	[id_wypozyczenia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ksiazki]  WITH CHECK ADD  CONSTRAINT [FK_Ksiazki_Autorzy] FOREIGN KEY([id_autor])
REFERENCES [dbo].[Autorzy] ([id_autor])
GO
ALTER TABLE [dbo].[Ksiazki] CHECK CONSTRAINT [FK_Ksiazki_Autorzy]
GO
ALTER TABLE [dbo].[Ksiazki]  WITH CHECK ADD  CONSTRAINT [FK_Ksiazki_Kategorie] FOREIGN KEY([id_kategoria])
REFERENCES [dbo].[Kategorie] ([id_kategorii])
GO
ALTER TABLE [dbo].[Ksiazki] CHECK CONSTRAINT [FK_Ksiazki_Kategorie]
GO
ALTER TABLE [dbo].[Ksiazki]  WITH CHECK ADD  CONSTRAINT [FK_Ksiazki_Wydawnictwa] FOREIGN KEY([id_wydawnictwa])
REFERENCES [dbo].[Wydawnictwa] ([id_wydawnictwa])
GO
ALTER TABLE [dbo].[Ksiazki] CHECK CONSTRAINT [FK_Ksiazki_Wydawnictwa]
GO
ALTER TABLE [dbo].[Wypozyczenia]  WITH CHECK ADD  CONSTRAINT [FK_Wypozyczenia_Czytelnicy] FOREIGN KEY([id_czytelnik])
REFERENCES [dbo].[Czytelnicy] ([id_czytelnik])
GO
ALTER TABLE [dbo].[Wypozyczenia] CHECK CONSTRAINT [FK_Wypozyczenia_Czytelnicy]
GO
ALTER TABLE [dbo].[Wypozyczenia]  WITH CHECK ADD  CONSTRAINT [FK_Wypozyczenia_Ksiazki] FOREIGN KEY([id_ksiazki])
REFERENCES [dbo].[Ksiazki] ([id_ksiazki])
GO
ALTER TABLE [dbo].[Wypozyczenia] CHECK CONSTRAINT [FK_Wypozyczenia_Ksiazki]
GO
ALTER TABLE [dbo].[Wypozyczenia]  WITH CHECK ADD  CONSTRAINT [FK_Wypozyczenia_Pracownicy_Oddanie] FOREIGN KEY([id_pracownik_oddanie])
REFERENCES [dbo].[Pracownicy] ([id_pracownik])
GO
ALTER TABLE [dbo].[Wypozyczenia] CHECK CONSTRAINT [FK_Wypozyczenia_Pracownicy_Oddanie]
GO
ALTER TABLE [dbo].[Wypozyczenia]  WITH CHECK ADD  CONSTRAINT [FK_Wypozyczenia_Pracownicy_Wypozyczenie] FOREIGN KEY([id_pracownik_wypozyczenie])
REFERENCES [dbo].[Pracownicy] ([id_pracownik])
GO
ALTER TABLE [dbo].[Wypozyczenia] CHECK CONSTRAINT [FK_Wypozyczenia_Pracownicy_Wypozyczenie]
GO
USE [master]
GO
ALTER DATABASE [Biblioteka] SET  READ_WRITE 
GO
