USE [Tracking]
GO
/****** Object:  User [tracking]    Script Date: 2/11/2021 10:24:46 AM ******/
CREATE USER [tracking] FOR LOGIN [tracking] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [tracking]
GO
