USE [Tracking]
GO
/****** Object:  Table [dbo].[Stops]    Script Date: 2/11/2021 10:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stops](
	[StopId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyId] [varchar](8) NOT NULL,
	[OrderMasterId] [bigint] NOT NULL,
	[StopSequence] [smallint] NOT NULL,
	[Type] [varchar](12) NULL,
	[Name] [varchar](50) NOT NULL,
	[Address1] [varchar](255) NULL,
	[Address2] [varchar](255) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](2) NULL,
	[Zip] [varchar](12) NULL,
	[Lat] [float] NULL,
	[Lng] [float] NULL,
	[ScheduledArrival] [datetime] NULL,
	[ActualArrival] [datetime] NULL,
	[ETA] [datetime] NULL,
	[ScheduledDeparture] [datetime] NULL,
	[ActualDeparture] [datetime] NULL,
	[StopStatus] [varchar](12) NULL,
	[StopArrivalStatus] [varchar](12) NULL,
 CONSTRAINT [PK_OrderStopSequence] PRIMARY KEY CLUSTERED 
(
	[OrderMasterId] ASC,
	[StopSequence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
