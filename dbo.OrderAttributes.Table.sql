USE [Tracking]
GO
/****** Object:  Table [dbo].[OrderAttributes]    Script Date: 2/11/2021 10:24:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderAttributes](
	[OrderAttributeId] [int] IDENTITY(1,1) NOT NULL,
	[OrderMasterId] [bigint] NOT NULL,
	[CurrentTemperature] [float] NULL,
	[Progress] [varchar](255) NULL,
	[IsZmitted] [bit] NULL,
	[IsCommitted] [bit] NULL,
	[IsHighValue] [bit] NULL,
 CONSTRAINT [PK_OrderAttributes] PRIMARY KEY CLUSTERED 
(
	[OrderMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
