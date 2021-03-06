USE [Tracking]
GO
/****** Object:  Table [dbo].[Tractor]    Script Date: 2/11/2021 10:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tractor](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[TractorId] [varchar](8) NOT NULL,
	[CompanyId] [varchar](4) NOT NULL,
	[AvailableDate] [date] NULL,
	[PlanningComments] [varchar](max) NULL,
	[Driver1Id] [varchar](8) NULL,
	[Driver2Id] [varchar](8) NULL,
	[FleetId] [varchar](8) NULL,
	[Owner] [varchar](8) NULL,
	[Dispatcher] [varchar](10) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
