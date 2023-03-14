USE [master]
GO
/****** Object:  Database [MusicApi]    Script Date: 2023-03-14 03:26:47 PM ******/
CREATE DATABASE [MusicApi]
GO
ALTER DATABASE [MusicApi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MusicApi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MusicApi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MusicApi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MusicApi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MusicApi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MusicApi] SET ARITHABORT OFF 
GO
ALTER DATABASE [MusicApi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MusicApi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MusicApi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MusicApi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MusicApi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MusicApi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MusicApi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MusicApi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MusicApi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MusicApi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MusicApi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MusicApi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MusicApi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MusicApi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MusicApi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MusicApi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MusicApi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MusicApi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MusicApi] SET  MULTI_USER 
GO
ALTER DATABASE [MusicApi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MusicApi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MusicApi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MusicApi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MusicApi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MusicApi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MusicApi] SET QUERY_STORE = OFF
GO
USE [MusicApi]
GO
/****** Object:  Table [dbo].[Advertisement]    Script Date: 2023-03-14 03:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisement](
	[Id] [uniqueidentifier] NOT NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[Content] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 2023-03-14 03:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[ArtistId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artist]    Script Date: 2023-03-14 03:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2023-03-14 03:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[ImageUrl] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlist]    Script Date: 2023-03-14 03:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlist](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[IconUrl] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Song]    Script Date: 2023-03-14 03:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Song](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[PlayUrl] [nvarchar](200) NULL,
	[Liked] [int] NULL,
	[PlaylistId] [uniqueidentifier] NULL,
	[AlbumId] [uniqueidentifier] NULL,
	[TopicId] [uniqueidentifier] NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[AdvertisementId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topic]    Script Date: 2023-03-14 03:26:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topic](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[ImageUrl] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD FOREIGN KEY([ArtistId])
REFERENCES [dbo].[Artist] ([Id])
GO
ALTER TABLE [dbo].[Song]  WITH CHECK ADD FOREIGN KEY([AdvertisementId])
REFERENCES [dbo].[Advertisement] ([Id])
GO
ALTER TABLE [dbo].[Song]  WITH CHECK ADD FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Album] ([Id])
GO
ALTER TABLE [dbo].[Song]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Song]  WITH CHECK ADD FOREIGN KEY([PlaylistId])
REFERENCES [dbo].[Playlist] ([Id])
GO
ALTER TABLE [dbo].[Song]  WITH CHECK ADD FOREIGN KEY([TopicId])
REFERENCES [dbo].[Topic] ([Id])
GO
USE [master]
GO
ALTER DATABASE [MusicApi] SET  READ_WRITE 
GO