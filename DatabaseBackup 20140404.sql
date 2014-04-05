USE [master]
GO
/****** Object:  Database [onlineticket]    Script Date: 04/04/2014 23:00:27 ******/
CREATE DATABASE [onlineticket]
GO
ALTER DATABASE [onlineticket] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [onlineticket].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [onlineticket] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [onlineticket] SET ANSI_NULLS OFF
GO
ALTER DATABASE [onlineticket] SET ANSI_PADDING OFF
GO
ALTER DATABASE [onlineticket] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [onlineticket] SET ARITHABORT OFF
GO
ALTER DATABASE [onlineticket] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [onlineticket] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [onlineticket] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [onlineticket] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [onlineticket] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [onlineticket] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [onlineticket] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [onlineticket] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [onlineticket] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [onlineticket] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [onlineticket] SET  DISABLE_BROKER
GO
ALTER DATABASE [onlineticket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [onlineticket] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [onlineticket] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [onlineticket] SET ALLOW_SNAPSHOT_ISOLATION ON
GO
ALTER DATABASE [onlineticket] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [onlineticket] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [onlineticket] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [onlineticket] SET  READ_WRITE
GO
ALTER DATABASE [onlineticket] SET RECOVERY FULL
GO
ALTER DATABASE [onlineticket] SET  MULTI_USER
GO
ALTER DATABASE [onlineticket] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [onlineticket] SET DB_CHAINING OFF
GO
USE [onlineticket]
GO
/****** Object:  User [appuser1]    Script Date: 04/04/2014 23:00:30 ******/
CREATE USER [appuser1] FOR LOGIN [appuser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 04/04/2014 23:00:38 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticket](
	[TicketKey] [int] IDENTITY(1,1) NOT NULL,
	[MovieTheaterKey] [int] NULL,
	[ShowTimeKey] [int] NULL,
	[UserKey] [int] NULL,
	[Seat] [varchar](500) NULL,
	[DateKey] [int] NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[TicketKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Theatertab]    Script Date: 04/04/2014 23:00:41 ******/
CREATE TABLE [dbo].[Theatertab](
	[Movie] [nvarchar](50) NOT NULL,
	[Details] [nvarchar](50) NOT NULL
)
GO
/****** Object:  Table [dbo].[Theaterpg]    Script Date: 04/04/2014 23:00:45 ******/
CREATE TABLE [dbo].[Theaterpg](
	[Movie] [nvarchar](50) NOT NULL,
	[Details] [nvarchar](50) NOT NULL,
	[Stills] [image] NOT NULL,
	[Theater ID] [nvarchar](50) NOT NULL
)
GO
/****** Object:  Table [dbo].[ShowTime]    Script Date: 04/04/2014 23:00:51 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShowTime](
	[ShowTimeKey] [int] IDENTITY(1,1) NOT NULL,
	[Time] [varchar](50) NULL,
	[ShowName] [varchar](20) NULL,
 CONSTRAINT [PK_ShowTime] PRIMARY KEY CLUSTERED 
(
	[ShowTimeKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REGISTRATION1]    Script Date: 04/04/2014 23:00:58 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REGISTRATION1](
	[FISTNAME] [varchar](20) NULL,
	[SECONDNAME] [varchar](20) NULL,
	[GENDER] [varchar](7) NULL,
	[DATEOFBIRTH] [datetime] NULL,
	[EMAILID] [varchar](30) NULL,
	[USERID] [varchar](20) NULL,
	[TIMES] [varchar](30) NULL
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REGISTRATION]    Script Date: 04/04/2014 23:01:06 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REGISTRATION](
	[FISTNAME] [varchar](20) NULL,
	[SECONDNAME] [varchar](20) NULL,
	[GENDER] [varchar](7) NULL,
	[DATEOFBIRTH] [varchar](7) NULL,
	[EMAILID] [varchar](30) NULL,
	[USERID] [varchar](20) NULL
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[register]    Script Date: 04/04/2014 23:01:17 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[register](
	[TheaterName] [varchar](30) NOT NULL,
	[TheaterCode] [int] NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Pswd] [varchar](50) NOT NULL,
	[EId] [varchar](40) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[Location] [varchar](40) NOT NULL,
	[SeatCapacity] [int] NOT NULL,
	[IdCard] [image] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TheaterCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewsInfo]    Script Date: 04/04/2014 23:01:23 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewsInfo](
	[NewsKey] [int] IDENTITY(1,1) NOT NULL,
	[Heading] [varchar](150) NULL,
	[Description] [varchar](256) NULL,
	[PostedOn] [datetime] NULL,
	[PostedBy] [varchar](50) NULL,
 CONSTRAINT [PK_newsInfo] PRIMARY KEY CLUSTERED 
(
	[NewsKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MovieTheater]    Script Date: 04/04/2014 23:01:31 ******/
CREATE TABLE [dbo].[MovieTheater](
	[MovieTheaterKey] [int] IDENTITY(1,1) NOT NULL,
	[MovieKey] [int] NULL,
	[TheaterKey] [int] NULL,
	[FromDateKey] [int] NULL,
	[ToDateKey] [int] NULL,
 CONSTRAINT [PK_MovieTheater] PRIMARY KEY CLUSTERED 
(
	[MovieTheaterKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 04/04/2014 23:01:39 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieKey] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](50) NULL,
	[Language] [varchar](20) NULL,
	[Director] [varchar](20) NULL,
	[Actor] [varchar](30) NULL,
	[Actress] [varchar](50) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MovieKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MovieList]    Script Date: 04/04/2014 23:01:44 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovieList](
	[MovieKey] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](50) NULL,
	[Language] [varchar](20) NULL,
	[StarCast] [varchar](256) NULL,
 CONSTRAINT [PK_MovieList] PRIMARY KEY CLUSTERED 
(
	[MovieKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MEMBER]    Script Date: 04/04/2014 23:01:53 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEMBER](
	[MID] [int] NOT NULL,
	[NAME] [varchar](10) NULL,
	[AGE] [int] NULL,
	[PLACE] [varchar](16) NULL,
	[PHNO] [numeric](18, 0) NULL,
	[ADRESS] [varchar](15) NULL,
	[MJDATE] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MasterTheater]    Script Date: 04/04/2014 23:02:01 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MasterTheater](
	[TheaterKey] [int] IDENTITY(1,1) NOT NULL,
	[TheaterName] [varchar](150) NULL,
	[City] [varchar](20) NULL,
	[SeatingCapacity] [int] NULL,
 CONSTRAINT [PK_MasterTheater] PRIMARY KEY CLUSTERED 
(
	[TheaterKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 04/04/2014 23:02:06 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[LoginKey] [int] NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[LoginKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FilmReview]    Script Date: 04/04/2014 23:02:11 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FilmReview](
	[MovieKey] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](50) NULL,
	[Review] [varchar](500) NULL,
 CONSTRAINT [PK_FilmReview] PRIMARY KEY CLUSTERED 
(
	[MovieKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 04/04/2014 23:02:17 ******/
CREATE TABLE [dbo].[Booking](
	[UserId] [nvarchar](50) NOT NULL,
	[TheaterId] [smalldatetime] NOT NULL,
	[Date] [smalldatetime] NOT NULL,
	[Time] [timestamp] NOT NULL,
	[seat_num] [smallint] NOT NULL
)
GO
/****** Object:  Table [dbo].[BOOK]    Script Date: 04/04/2014 23:02:25 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOOK](
	[BID] [int] NOT NULL,
	[BNAME] [varchar](20) NULL,
	[BPRICE] [int] NULL,
	[ANAME] [varchar](13) NULL,
	[BCATOGERY] [varchar](6) NULL,
	[BPDATE] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 04/04/2014 23:02:33 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRole](
	[RoleKey] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](20) NULL,
	[RoleDescription] [varchar](20) NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[RoleKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserReg]    Script Date: 04/04/2014 23:02:42 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserReg](
	[UserKey] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [varchar](40) NULL,
	[Lastname] [varchar](40) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [char](20) NULL,
	[DateOfBirth] [datetime] NULL,
	[EmailId] [varchar](100) NULL,
	[RoleKey] [int] NULL,
 CONSTRAINT [PK__UserReg__7A9C383C] PRIMARY KEY CLUSTERED 
(
	[UserKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 04/04/2014 23:02:46 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLogin](
	[Username] [varchar](40) NOT NULL,
	[Password] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserDisp]    Script Date: 04/04/2014 23:02:53 ******/
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserDisp](
	[UserLogKey] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NULL,
	[SessionId] [varchar](256) NULL,
	[LoginTime] [varchar](20) NULL,
	[LogoutTime] [varchar](20) NULL,
 CONSTRAINT [PK_UserDisp] PRIMARY KEY CLUSTERED 
(
	[UserLogKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRANSITION]    Script Date: 04/04/2014 23:02:57 ******/
CREATE TABLE [dbo].[TRANSITION](
	[MID] [int] NULL,
	[BID] [int] NULL,
	[RDATE] [datetime] NULL
)
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUserLog]    Script Date: 04/04/2014 23:03:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertUserLog]
	-- Add the parameters for the stored procedure here
	@UserName VARCHAR(50),
	@SessionId VARCHAR(256),
	@LoginDate VARCHAR(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
    INSERT INTO dbo.UserDisp(UserName, SessionId,LoginTime) 
    VALUES(@UserName, @SessionId, @LoginDate)
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertUser]    Script Date: 04/04/2014 23:03:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: 09-Mar-2014
-- Description:	Inserts a new user to the table UserReg
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertUser] 
	-- Add the parameters for the stored procedure here

	@FirstName VARCHAR(100), 
	@LastName VARCHAR(100),
	@UserName VARCHAR(50),
	@Password VARCHAR(20),
	@EmailId VARCHAR(100),
	@DateOfBirth DATETIME
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;
	IF NOT EXISTS(SELECT 1 FROM dbo.UserReg WHERE EmailId = @EmailId)
	BEGIN
    -- Insert statements for procedure here
		INSERT INTO dbo.UserReg(EmailId,Firstname,Lastname,UserName,Password,DateOfBirth,RoleKey) 
		VALUES(@EmailId,@FirstName, @LastName, @UserName,@Password,@DateOfBirth,1)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertShowTime]    Script Date: 04/04/2014 23:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: 09-Mar-2014
-- Description:	Inserts a new user to the table UserReg
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertShowTime] 
	-- Add the parameters for the stored procedure here

	@Time VARCHAR(50), 
	@ShowName VARCHAR(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;
	
    -- Insert statements for procedure here
		INSERT INTO dbo.ShowTime(Time,ShowName) 
		VALUES(@Time,@ShowName)
	END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertMovieList]    Script Date: 04/04/2014 23:03:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertMovieList]
	-- Add the parameters for the stored procedure here
	@MovieName VARCHAR(150),
	@Language VARCHAR(20),
	@StarCast VARCHAR(256)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
    INSERT INTO dbo.MovieList(MovieName,[Language],StarCast) 
    VALUES(@MovieName, @Language, @StarCast)
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertMasterTheater]    Script Date: 04/04/2014 23:03:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertMasterTheater]
	@TheaterName VARCHAR(150),
	@City VARCHAR(20),
	@SeatingCapacity int
	
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.MasterTheater(TheaterName,City,SeatingCapacity) 
    VALUES(@TheaterName,@City,@SeatingCapacity)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertLatestMovies]    Script Date: 04/04/2014 23:03:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: 09-Mar-2014
-- Description:	Inserts a new user to the table UserReg
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertLatestMovies] 
	-- Add the parameters for the stored procedure here

	@MovieName VARCHAR(50), 
	@Language VARCHAR(20),
	@Director VARCHAR(20),
	@Actor VARCHAR(30),
	@Actress VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;
	
    -- Insert statements for procedure here
		INSERT INTO dbo.Movies(MovieName,[Language],Director,Actor,Actress) 
		VALUES(@MovieName,@Language,@Director,@Actor,@Actress)
	END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertFilmReview]    Script Date: 04/04/2014 23:03:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: 09-Mar-2014
-- Description:	Inserts a new user to the table UserReg
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertFilmReview] 
	-- Add the parameters for the stored procedure here

	@MovieName VARCHAR(50), 
	@Review VARCHAR(500)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;
	
    -- Insert statements for procedure here
		INSERT INTO dbo.FilmReview(MovieName,Review) 
		VALUES(@MovieName,@Review)
	END
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertEntertainmentNews]    Script Date: 04/04/2014 23:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertEntertainmentNews]
	@Heading VARCHAR(150),
	@Description VARCHAR(256),
	@PostedOn datetime,
	@PostedBy VARCHAR(20)
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.NewsInfo(Heading,[Description],PostedOn,PostedBy) 
    VALUES(@Heading,@Description,@PostedOn,@PostedBy)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUser]    Script Date: 04/04/2014 23:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetUser]
	-- Add the parameters for the stored procedure here
	@UserName VARCHAR(50),
	@Password VARCHAR(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		UserKey,
		FirstName,
		LastName,
		UserName,
		Password,
		DateOfBirth,
		EmailId,
		Rolekey
		
	FROM dbo.UserReg 
	WHERE UserName = @UserName
	 AND	Password = @Password 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetMovieList]    Script Date: 04/04/2014 23:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetMovieList]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		MovieKey
		MovieName,
		[Language],
		StarCast
		
	FROM dbo.MovieList 
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getMasterTheater]    Script Date: 04/04/2014 23:03:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_getMasterTheater]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		
		TheaterKey,
		TheaterName,
		City,
		SeatingCapacity
	FROM dbo.MasterTheater
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetLatestMovies]    Script Date: 04/04/2014 23:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetLatestMovies]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		MovieKey,
		MovieName,
		[Language],
		Director,
		Actor,
		Actress
	FROM dbo.Movies 
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetFilmReview]    Script Date: 04/04/2014 23:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetFilmReview]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		MovieKey,
		MovieName,
		Review
		FROM dbo.FilmReview
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetEntertainmentNews]    Script Date: 04/04/2014 23:03:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetEntertainmentNews]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		NewsKey,
		Heading,
		[Description],
		PostedOn,
		PostedBy
	FROM dbo.Newsinfo 
	ORDER BY PostedOn DESC
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getBookedSeatsforUserforMovieTheater]    Script Date: 04/04/2014 23:03:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_getBookedSeatsforUserforMovieTheater]
	@TheaterKey int,
	@ShowTimeKey int, 
	@DateKey int, 
	@UserKey int,
	@Seats VARCHAR(500) OUT
AS
BEGIN
	DECLARE @MovieTheaterKey INT
	
	--SET @Seats = ''
	SET @MovieTheaterKey = 0
	SELECT @MovieTheaterKey = MovieTheaterKey FROM dbo.MovieTheater WHERE TheaterKey = @TheaterKey
	SELECT @Seats = Seat FROM dbo.Ticket 
	WHERE MovieTheaterKey = @MovieTheaterKey
	AND ShowTimeKey = @ShowTimeKey
	AND DateKey = @DateKey
	AND UserKey = @UserKey
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getBookedSeatsforMovieTheater]    Script Date: 04/04/2014 23:03:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_getBookedSeatsforMovieTheater]
	@TheaterKey int,
	@ShowTimeKey int, 
	@DateKey int, 
	@Seats VARCHAR(500) OUT
AS
BEGIN
	DECLARE @MovieTheaterKey INT
	
	--SET @Seats = ''
	SET @MovieTheaterKey = 0
	SELECT @MovieTheaterKey = MovieTheaterKey FROM dbo.MovieTheater WHERE TheaterKey = @TheaterKey
	SELECT @Seats = Seat FROM dbo.Ticket 
	WHERE MovieTheaterKey = @MovieTheaterKey
	AND ShowTimeKey = @ShowTimeKey
	AND DateKey = @DateKey
	
	SELECT Seat FROM dbo.Ticket 
	WHERE MovieTheaterKey = @MovieTheaterKey
	AND ShowTimeKey = @ShowTimeKey
	AND DateKey = @DateKey
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_bookTicket]    Script Date: 04/04/2014 23:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_bookTicket]
	@TheaterKey int,
	@ShowTimeKey int,
	@UserKey int, 
	@DateKey int, 
	@Seats VARCHAR(500)
AS
BEGIN
	DECLARE @MovieTheaterKey INT
	SET @MovieTheaterKey = 0
	SELECT @MovieTheaterKey = MovieTheaterKey FROM dbo.MovieTheater WHERE TheaterKey = @TheaterKey
	
	-- If User doesn't have ticket already booked for the movie in the theater Insert, otherwise update
	IF NOT EXISTS (SELECT 1 FROM dbo.Ticket WHERE MovieTheaterKey = @MovieTheaterKey
		AND ShowTimeKey = @ShowTimeKey
		AND DateKey = @DateKey
		AND UserKey = @UserKey) 
	BEGIN
		INSERT INTO dbo.Ticket VALUES(@MovieTheaterKey, @ShowTimeKey, @UserKey, @Seats, @DateKey)
	END
	ELSE
	BEGIN
		UPDATE dbo.Ticket 
		SET Seat = @Seats
		WHERE MovieTheaterKey = @MovieTheaterKey
			AND ShowTimeKey = @ShowTimeKey
			AND DateKey = @DateKey
			AND UserKey = @UserKey
	
	END
END
GO
/****** Object:  Table [dbo].[ISSUE]    Script Date: 04/04/2014 23:03:23 ******/
CREATE TABLE [dbo].[ISSUE](
	[MID] [int] NULL,
	[BID] [int] NULL,
	[RDATE] [datetime] NULL
)
GO
/****** Object:  Default [DF__tmp_ms_xx__ADRES__6E8B6712]    Script Date: 04/04/2014 23:01:56 ******/
ALTER TABLE [dbo].[MEMBER] ADD  DEFAULT ((35)) FOR [ADRESS]
GO
/****** Object:  Default [DF__ISSUE__RDATE__73501C2F]    Script Date: 04/04/2014 23:03:28 ******/
ALTER TABLE [dbo].[ISSUE] ADD  DEFAULT (getdate()) FOR [RDATE]
GO
/****** Object:  Check [CK__MEMBER__AGE__7AF13DF7]    Script Date: 04/04/2014 23:01:54 ******/
ALTER TABLE [dbo].[MEMBER]  WITH CHECK ADD CHECK  (([AGE]>(10) AND [AGE]<(30)))
GO
/****** Object:  Check [CK__MEMBER__MJDATE__7BE56230]    Script Date: 04/04/2014 23:01:55 ******/
ALTER TABLE [dbo].[MEMBER]  WITH CHECK ADD CHECK  (([MJDATE]<=getdate()))
GO
/****** Object:  Check [CK__BOOK__BCATOGERY__7908F585]    Script Date: 04/04/2014 23:02:27 ******/
ALTER TABLE [dbo].[BOOK]  WITH CHECK ADD CHECK  (([BCATOGERY] like '[NCSOP]%'))
GO
/****** Object:  Check [CK__BOOK__BPDATE__79FD19BE]    Script Date: 04/04/2014 23:02:27 ******/
ALTER TABLE [dbo].[BOOK]  WITH CHECK ADD CHECK  (([BPDATE]<=getdate()))
GO
/****** Object:  Check [CK__BOOK__BPRICE__7814D14C]    Script Date: 04/04/2014 23:02:28 ******/
ALTER TABLE [dbo].[BOOK]  WITH CHECK ADD CHECK  (([BPRICE]>(0)))
GO
/****** Object:  ForeignKey [FK__TRANSITION__BID__7720AD13]    Script Date: 04/04/2014 23:02:58 ******/
ALTER TABLE [dbo].[TRANSITION]  WITH CHECK ADD FOREIGN KEY([BID])
REFERENCES [dbo].[BOOK] ([BID])
GO
/****** Object:  ForeignKey [FK__TRANSITION__MID__762C88DA]    Script Date: 04/04/2014 23:02:59 ******/
ALTER TABLE [dbo].[TRANSITION]  WITH CHECK ADD FOREIGN KEY([MID])
REFERENCES [dbo].[MEMBER] ([MID])
GO
/****** Object:  ForeignKey [FK__ISSUE__BID__753864A1]    Script Date: 04/04/2014 23:03:26 ******/
ALTER TABLE [dbo].[ISSUE]  WITH CHECK ADD FOREIGN KEY([BID])
REFERENCES [dbo].[BOOK] ([BID])
GO
/****** Object:  ForeignKey [FK__ISSUE__MID__74444068]    Script Date: 04/04/2014 23:03:27 ******/
ALTER TABLE [dbo].[ISSUE]  WITH CHECK ADD FOREIGN KEY([MID])
REFERENCES [dbo].[MEMBER] ([MID])
GO
