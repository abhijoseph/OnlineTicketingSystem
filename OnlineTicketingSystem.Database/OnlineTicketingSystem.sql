USE [onlineticket]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[City] [nchar](10) NOT NULL,
	[Theater] [nchar](40) NOT NULL,
	[Language] [nchar](20) NOT NULL,
	[Movie] [nvarchar](50) NOT NULL,
	[Date] [smalldatetime] NOT NULL,
	[Time] [timestamp] NOT NULL,
	[Num] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theatertab]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theatertab](
	[Movie] [nvarchar](50) NOT NULL,
	[Details] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theaterpg]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theaterpg](
	[Movie] [nvarchar](50) NOT NULL,
	[Details] [nvarchar](50) NOT NULL,
	[Stills] [image] NOT NULL,
	[Theater ID] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REGISTRATION1]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REGISTRATION]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REGISTRATION](
	[FISTNAME] [varchar](20) NULL,
	[SECONDNAME] [varchar](20) NULL,
	[GENDER] [varchar](7) NULL,
	[DATEOFBIRTH] [varchar](7) NULL,
	[EMAILID] [varchar](30) NULL,
	[USERID] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[register]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[IdCard] [image] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MEMBER]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[UserId] [nvarchar](50) NOT NULL,
	[TheaterId] [smalldatetime] NOT NULL,
	[Date] [smalldatetime] NOT NULL,
	[Time] [timestamp] NOT NULL,
	[seat_num] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOK]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

--drop table dbo.userreg
/****** Object:  Table [dbo].[UserReg]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserReg](
	[UserKey] [varchar](40) NOT NULL,
	[Firstname] [varchar](40) NULL,
	[Lastname] [varchar](40) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [char](20) NULL,
	[DateOfBirth] [datetime] NULL,
	[EmailId] [varchar](100) NULL,
 CONSTRAINT [PK__UserReg__7A9C383C] PRIMARY KEY CLUSTERED 
(
	[UserKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLogin](
	[Username] [varchar](40) NOT NULL,
	[Password] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[UserDisp]    Script Date: 03/11/2014 19:49:37 ******/
-- DROP TABLE [dbo].[UserDisp]
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[MovieList](
	[MovieKey] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](50) NULL,
	[Language][Varchar](20) NULL,
	[StarCast] [varchar](256) NULL,
 CONSTRAINT [PK_MovieList] PRIMARY KEY CLUSTERED 
(
	[Moviekey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[UserRole](
	[RoleKey] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](20) NULL,
	[RoleDescription] [varchar](20) NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[RoleKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


--drop table dbo.MovieList
--drop table dbo.NewsInfo

CREATE TABLE [dbo].[FilmReview](
	[MovieKey] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](50) NULL,
	[Review] [varchar](500) NULL,
 CONSTRAINT [PK_FilmReview] PRIMARY KEY CLUSTERED 
(
	[Moviekey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
--drop table dbo.FilmReview
CREATE TABLE [dbo].[NewsInfo](
	[NewsKey] [int] IDENTITY(1,1) NOT NULL,
	[Heading] [varchar](150) NULL,
	[Description] [varchar](256) NULL,
	[PostedOn][datetime] NULL,
	[PostedBy][varchar](50) NULL,
	
	 CONSTRAINT [PK_newsInfo] PRIMARY KEY CLUSTERED 
(
	[NewsKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
CREATE TABLE [dbo].[Movies](
	[MovieKey] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](50) NULL,
	[Language] [varchar](20) NULL,
	[Director] [varchar](20) NULL,
	[Actor][varchar](30) NULL,
	[Actress][varchar](50) NULL,
	
	 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MovieKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
CREATE TABLE [dbo].[MasterTheater](
	[TheaterKey][int]IDENTITY(1,1) NOT NULL,
	[TheaterName] [varchar](150) NULL,
	[City] [varchar](20) NULL,
	[SeatingCapacity][int] NULL,
	
	 CONSTRAINT [PK_MasterTheater] PRIMARY KEY CLUSTERED 
	 
(
	[TheaterKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

SET ANSI_PADDING OFF
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
		INSERT INTO dbo.UserReg 
		VALUES(@EmailId, @FirstName, @LastName, @UserName, @Password, @DateOfBirth, @EmailId)
	END
END
GO

SET ANSI_NULLS ON
GO
SET ANSI_PADDING OFF
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

SET ANSI_NULLS ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  StoredProcedure [dbo].[usp_GetUser]    Script Date: 03/09/2014 19:41:54 ******/
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
		EmailId
	FROM dbo.UserReg 
	WHERE UserName = @UserName 
		AND Password = @Password
END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUser]    Script Date: 03/09/2014 19:41:54 ******/
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


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[usp_InsertEntertainmentNews]
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


--exec dbo.usp_InsertEntertainmentNews 'New Data','New Data Description','10/22/2014','Nunu'


/****** Object:  StoredProcedure [dbo].[usp_GetEntertainmentNews]    Script Date: 03/14/2014 10:56:57 ******/
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


/****** Object:  Table [dbo].[TRANSITION]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSITION](
	[MID] [int] NULL,
	[BID] [int] NULL,
	[RDATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ISSUE]    Script Date: 03/09/2014 19:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ISSUE](
	[MID] [int] NULL,
	[BID] [int] NULL,
	[RDATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Default [DF__ISSUE__RDATE__1CF15040]    Script Date: 03/09/2014 19:41:55 ******/
ALTER TABLE [dbo].[ISSUE] ADD  DEFAULT (getdate()) FOR [RDATE]
GO
/****** Object:  Default [DF__MEMBER__ADRESS__108B795B]    Script Date: 03/09/2014 19:41:55 ******/
ALTER TABLE [dbo].[MEMBER] ADD  DEFAULT (35) FOR [ADRESS]
GO
/****** Object:  Check [CK__BOOK__BCATOGERY__15502E78]    Script Date: 03/09/2014 19:41:55 ******/
ALTER TABLE [dbo].[BOOK]  WITH CHECK ADD CHECK  (([BCATOGERY] like '[NCSOP]%'))
GO
/****** Object:  Check [CK__BOOK__BPDATE__164452B1]    Script Date: 03/09/2014 19:41:55 ******/
ALTER TABLE [dbo].[BOOK]  WITH CHECK ADD CHECK  (([BPDATE] <= getdate()))
GO
/****** Object:  Check [CK__BOOK__BPRICE__145C0A3F]    Script Date: 03/09/2014 19:41:55 ******/
ALTER TABLE [dbo].[BOOK]  WITH CHECK ADD CHECK  (([BPRICE] > 0))
GO
/****** Object:  Check [CK__MEMBER__AGE__0F975522]    Script Date: 03/09/2014 19:41:55 ******/
ALTER TABLE [dbo].[MEMBER]  WITH CHECK ADD CHECK  (([AGE] > 10 and [AGE] < 30))
GO
/****** Object:  Check [CK__MEMBER__MJDATE__117F9D94]    Script Date: 03/09/2014 19:41:55 ******/
ALTER TABLE [dbo].[MEMBER]  WITH CHECK ADD CHECK  (([MJDATE] <= getdate()))
GO
/****** Object:  ForeignKey [FK__ISSUE__BID__1BFD2C07]    Script Date: 03/09/2014 19:41:55 ******/
ALTER TABLE [dbo].[ISSUE]  WITH CHECK ADD FOREIGN KEY([BID])
REFERENCES [dbo].[BOOK] ([BID])
GO
/****** Object:  ForeignKey [FK__ISSUE__MID__1B0907CE]    Script Date: 03/09/2014 19:41:55 ******/
ALTER TABLE [dbo].[ISSUE]  WITH CHECK ADD FOREIGN KEY([MID])
REFERENCES [dbo].[MEMBER] ([MID])
GO
/****** Object:  ForeignKey [FK__TRANSITION__BID__1920BF5C]    Script Date: 03/09/2014 19:41:55 ******/
ALTER TABLE [dbo].[TRANSITION]  WITH CHECK ADD FOREIGN KEY([BID])
REFERENCES [dbo].[BOOK] ([BID])
GO
/****** Object:  ForeignKey [FK__TRANSITION__MID__182C9B23]    Script Date: 03/09/2014 19:41:55 ******/
ALTER TABLE [dbo].[TRANSITION]  WITH CHECK ADD FOREIGN KEY([MID])
REFERENCES [dbo].[MEMBER] ([MID])
GO
