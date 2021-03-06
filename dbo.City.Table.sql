USE [Tracking]
GO
/****** Object:  Table [dbo].[City]    Script Date: 2/11/2021 10:24:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[city] [nvarchar](50) NULL,
	[stateAbbr] [nvarchar](50) NULL,
	[zip] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[latitude] [decimal](19, 3) NULL,
	[longitude] [decimal](19, 3) NULL
) ON [PRIMARY]
GO
