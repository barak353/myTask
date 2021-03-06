USE [master]
GO
/****** Object:  Database [NoteManager]    Script Date: 26/02/2018 00:03:08 ******/
CREATE DATABASE [NoteManager]
 CONTAINMENT = NONE
GO
ALTER DATABASE [NoteManager] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NoteManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NoteManager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NoteManager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NoteManager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NoteManager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NoteManager] SET ARITHABORT OFF 
GO
ALTER DATABASE [NoteManager] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NoteManager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NoteManager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NoteManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NoteManager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NoteManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NoteManager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NoteManager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NoteManager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NoteManager] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NoteManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NoteManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NoteManager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NoteManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NoteManager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NoteManager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NoteManager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NoteManager] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NoteManager] SET  MULTI_USER 
GO
ALTER DATABASE [NoteManager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NoteManager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NoteManager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NoteManager] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NoteManager] SET DELAYED_DURABILITY = DISABLED 
GO
USE [NoteManager]
GO
/****** Object:  Table [dbo].[Notes_Table]    Script Date: 26/02/2018 00:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes_Table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [text] NOT NULL,
	[user_id] [int] NOT NULL,
	[check] [int] NULL,
	[startTime] [text] NULL,
	[endTime] [text] NULL,
	[place] [text] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Table]    Script Date: 26/02/2018 00:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nchar](32) NOT NULL,
	[fullName] [nchar](32) NULL,
	[email] [nchar](32) NULL,
	[password] [nchar](32) NULL,
 CONSTRAINT [PK_User_Table] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [NoteManager] SET  READ_WRITE 
GO
