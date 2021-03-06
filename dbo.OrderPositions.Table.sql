USE [Tracking]
GO
/****** Object:  Table [dbo].[OrderPositions]    Script Date: 2/11/2021 10:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPositions](
	[OrderPositionId] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderMasterId] [bigint] NOT NULL,
	[Lat] [float] NULL,
	[Long] [float] NULL,
	[Odometer] [int] NULL,
	[Direction] [varchar](3) NULL,
	[Speed] [tinyint] NULL,
 CONSTRAINT [PK_OrderPositions] PRIMARY KEY CLUSTERED 
(
	[OrderPositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
