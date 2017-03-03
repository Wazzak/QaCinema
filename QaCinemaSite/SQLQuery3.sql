CREATE TABLE [dbo].[Webpages] (
    [Page_ID]     INT       IDENTITY (1,1) NOT NULL,
    [Page_Name]   VARCHAR (20)  NULL,
    [Page_Access] CHAR (5)      NULL,
    [URL]         VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Page_ID] ASC)
);

CREATE TABLE [dbo].[Topics] (
    [Topic_ID]   INT      IDENTITY (1,1)    NOT NULL,
    [Topic_Name] VARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([Topic_ID] ASC)
);

CREATE TABLE [dbo].[Discussions] (
    [Discussion_ID] INT     IDENTITY (1,1)     NOT NULL,
    [Topic_ID]      INT          NULL,
    [Thread_Name]   VARCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([Discussion_ID] ASC),
    FOREIGN KEY ([Topic_ID]) REFERENCES [dbo].[Topics] ([Topic_ID]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[Comments] (
    [Comment_ID]    INT     IDENTITY (1,1)      NOT NULL,
    [Discussion_ID] INT           NULL,
    [Display_Name]  VARCHAR (15)  NULL,
    [Comment_Text]  VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Comment_ID] ASC),
    FOREIGN KEY ([Discussion_ID]) REFERENCES [dbo].[Discussions] ([Discussion_ID]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[Cinemas] (
    [Cinema_ID]   INT      IDENTITY (1,1)    NOT NULL,
    [Cinema_Name] VARCHAR (15) NULL,
    [Address]     VARCHAR (50) NULL,
    [Postcode]    VARCHAR (8)  NULL,
    PRIMARY KEY CLUSTERED ([Cinema_ID] ASC)
);

CREATE TABLE [dbo].[Movies] (
    [Movie_ID]       INT      IDENTITY (1,1)     NOT NULL,
    [Movie_Name]     VARCHAR (30)  NULL,
    [Classification] VARCHAR (5)   NULL,
    [Release_Date]   DATE          NULL,
    [Director]       VARCHAR (30)  NULL,
    [Description]    VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Movie_ID] ASC)
);

CREATE TABLE [dbo].[Actors] (
    [Actor_ID]   INT    IDENTITY (1,1)      NOT NULL,
    [Actor_Name] VARCHAR (25) NULL,
    PRIMARY KEY CLUSTERED ([Actor_ID] ASC)
);

CREATE TABLE [dbo].[Genres] (
    [Genre_ID] INT     IDENTITY (1,1)     NOT NULL,
    [Type]     VARCHAR (15) NULL,
    PRIMARY KEY CLUSTERED ([Genre_ID] ASC)
);

CREATE TABLE [dbo].[Movie_Genres] (
    [Movie_ID] INT NOT NULL,
    [Genre_ID] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Movie_ID] ASC, [Genre_ID] ASC),
    FOREIGN KEY ([Movie_ID]) REFERENCES [dbo].[Movies] ([Movie_ID]) ON DELETE CASCADE,
    FOREIGN KEY ([Genre_ID]) REFERENCES [dbo].[Genres] ([Genre_ID]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[Movie_Actors] (
    [Movie_ID] INT NOT NULL,
    [Actor_ID] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Movie_ID] ASC, [Actor_ID] ASC),
    FOREIGN KEY ([Movie_ID]) REFERENCES [dbo].[Movies] ([Movie_ID]) ON DELETE CASCADE,
    FOREIGN KEY ([Actor_ID]) REFERENCES [dbo].[Actors] ([Actor_ID]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[Screens] (
    [Screen_ID]   INT   IDENTITY (1,1)   NOT NULL,
    [Cinema_ID]   INT      NULL,
    [Screen_No]   INT      NULL,
    [Screen_Type] CHAR (1) NULL,
    [No_Seats]    INT      NULL,
    PRIMARY KEY CLUSTERED ([Screen_ID] ASC),
    FOREIGN KEY ([Cinema_ID]) REFERENCES [dbo].[Cinemas] ([Cinema_ID]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[Showings] (
    [Showing_ID] INT   IDENTITY (1,1)   NOT NULL,
    [Screen_ID]  INT      NULL,
    [Movie_ID]   INT      NULL,
    [Date]       DATE     NULL,
    [Time]       TIME (7) NULL,
    PRIMARY KEY CLUSTERED ([Showing_ID] ASC),
    FOREIGN KEY ([Movie_ID]) REFERENCES [dbo].[Movies] ([Movie_ID]) ON DELETE CASCADE,
    FOREIGN KEY ([Screen_ID]) REFERENCES [dbo].[Screens] ([Screen_ID]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[Bookings] (
    [Booking_ID]   INT     IDENTITY (1,1)     NOT NULL,
    [Showing_ID]   INT          NULL,
    [Seat_No]      INT          NULL,
    [Buyers_Email] VARCHAR (30) NULL,
    [Ticket_Type]  VARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([Booking_ID] ASC),
    FOREIGN KEY ([Showing_ID]) REFERENCES [dbo].[Showings] ([Showing_ID]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[Tickets] (
    [Cinema_ID]   INT      NOT NULL,
    [Ticket_Type] CHAR (1) NOT NULL,
    [Price]       INT      NULL,
    PRIMARY KEY CLUSTERED ([Cinema_ID] ASC, [Ticket_Type] ASC),
    FOREIGN KEY ([Cinema_ID]) REFERENCES [dbo].[Cinemas] ([Cinema_ID]) ON DELETE CASCADE
);

CREATE TABLE [dbo].[Movie_Reviews] (
    [Review_ID]    INT      IDENTITY (1,1)     NOT NULL,
    [Movie_ID]     INT           NULL,
    [Review_Text]  VARCHAR (255) NULL,
    [Display_Name] VARCHAR (15)  NULL,
    [Rating]       INT           NULL,
    PRIMARY KEY CLUSTERED ([Review_ID] ASC),
    FOREIGN KEY ([Movie_ID]) REFERENCES [dbo].[Movies] ([Movie_ID]) ON DELETE CASCADE
);