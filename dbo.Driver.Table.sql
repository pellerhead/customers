USE [Tracking]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 2/11/2021 10:24:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [varchar](4) NOT NULL,
	[DriverId] [varchar](8) NOT NULL,
	[DriverManagerId] [varchar](10) NULL,
	[BirthDate] [date] NULL,
	[HireDate] [date] NULL,
	[LastHomeDate] [date] NULL,
	[NextHomeDate] [date] NULL,
	[LicenseDate] [date] NULL,
	[LicenseNo] [varchar](16) NULL,
	[FirstName] [varchar](16) NOT NULL,
	[LastName] [varchar](28) NOT NULL,
	[TractorId] [varchar](8) NULL,
	[Lat] [float] NULL,
	[Long] [float] NULL,
	[EmailAddress] [varchar](255) NULL,
	[CellPhone] [varchar](20) NULL,
	[DriverImage] [varbinary](max) NULL,
	[OperationsType] [varchar](1) NULL,
	[SmokingPreference] [tinyint] NULL,
	[Gender] [varchar](1) NULL,
	[CoDriverCertDate] [date] NULL,
	[CoDriverPreference] [varchar](1) NULL,
	[HrPreference] [varchar](1) NULL,
	[ManualTransmission] [bit] NULL,
	[NightDriver] [bit] NULL,
	[CurrentlyNeeds] [varchar](12) NULL,
	[CurrentlyHas] [varchar](12) NULL,
	[Pets] [bit] NULL,
	[TotalExperience] [smallint] NULL,
	[MilesDriven] [bigint] NULL,
	[TrainingDays] [smallint] NULL,
	[HomeCity] [varchar](50) NULL,
	[HomeState] [varchar](2) NULL,
	[LoadDestLat] [float] NULL,
	[LoadDestLng] [float] NULL,
	[DaysSinceDispatch] [smallint] NULL,
	[SmokingStatus] [varchar](12) NULL,
	[RecentComment] [varchar](max) NULL,
	[CommentDate] [date] NULL,
	[IsActive] [bit] NULL,
	[PreferredName] [varchar](200) NULL,
	[LastStatusChangeDate] [date] NULL,
	[FleetCode] [varchar](8) NULL,
	[InactiveReasonCode] [varchar](3) NULL,
	[PayeeId] [varchar](8) NULL,
 CONSTRAINT [PK_DRIVERMASTER] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC,
	[DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
