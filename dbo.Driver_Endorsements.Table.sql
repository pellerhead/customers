USE [Tracking]
GO
/****** Object:  Table [dbo].[Driver_Endorsements]    Script Date: 2/11/2021 10:24:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver_Endorsements](
	[EndorsementId] [int] IDENTITY(1,1) NOT NULL,
	[DriverIdentity] [int] NOT NULL,
	[EndorsementName] [varchar](25) NOT NULL,
	[EndorsementDate] [date] NULL
) ON [PRIMARY]
GO
