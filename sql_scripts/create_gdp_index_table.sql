USE [SingaporeEmigration]
GO

/****** Object:  Table [dbo].[GDPIndex]    Script Date: 21-Jul-18 7:52:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GDPIndex](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [real] NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[Year] [int] NOT NULL,
	[Month] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


