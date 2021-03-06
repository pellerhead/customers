USE [Tracking]
GO
/****** Object:  Table [dbo].[OrderMaster]    Script Date: 2/11/2021 10:24:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderMaster](
	[OrderMasterId] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [varchar](8) NOT NULL,
	[CompanyId] [varchar](4) NOT NULL,
	[CustomerId] [varchar](8) NULL,
	[TripStatus] [varchar](1) NULL,
	[TractorId] [varchar](8) NULL,
	[TrailerId] [varchar](8) NULL,
	[DriverId] [bigint] NULL,
	[CoDriverId] [bigint] NULL,
	[DriverManagerId] [varchar](10) NULL,
 CONSTRAINT [PK_OrderMaster] PRIMARY KEY CLUSTERED 
(
	[OrderMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
