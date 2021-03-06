USE [Tracking]
GO
/****** Object:  StoredProcedure [dbo].[proc_DriverRanking]    Script Date: 2/11/2021 10:24:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Greg Nelson
-- Create date: 02/03/2021
-- Description:	Returns Drivers ranked by criteria passed in as JSON
-- =============================================
CREATE
    

 PROCEDURE [dbo].[proc_DriverRanking] @request NVARCHAR(max)
    , @response NVARCHAR(max) OUTPUT
AS
DECLARE @companyId NVARCHAR(20)
    , @operationsType VARCHAR
    , @gender VARCHAR
    , @smokingStatus NVARCHAR(20)
    , @coDriverPref VARCHAR
    , @HRPref VARCHAR
    , @currentStatus VARCHAR
    , @manualTransmission VARCHAR
    , @nightDriver VARCHAR

BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT TOP (1) @companyId = request.companyId
        , @operationsType = request.operationsType
        , @gender = request.gender
        , @smokingStatus = request.smokingStatus
        , @coDriverPref = request.coDriverPref
        , @HRPref = request.HRPref
        , @currentStatus = request.currentStatus
        , @manualTransmission = request.manualTransmission
        , @nightDriver = request.nightDriver
    FROM OPENJSON(@request) WITH (
            companyId NVARCHAR(20)
            , operationsType VARCHAR
            , gender VARCHAR
            , smokingStatus NVARCHAR(20)
            , coDriverPref VARCHAR
            , HRPref VARCHAR
            , currentStatus VARCHAR
            , manualTransmission VARCHAR
            , nightDriver VARCHAR
            ) AS request

    SET @response = (
            SELECT id AS [Driver.driverIdentity]
                , CompanyId AS [Driver.company]
                , DriverManagerId AS [Driver.driverManager]
                , DriverId AS [Driver.driverId]
                , OperationsType AS [Driver.operationsType]
                , Gender AS [Driver.gender]
                , CoDriverPreference AS [Driver.coDriverPref]
                , HrPreference AS [Driver.HRPref]
                , ManualTransmission AS [Driver.manualTransmission]
                , NightDriver AS [Driver.nightDriver]
            FROM Driver
            WHERE OperationsType = @operationsType
            FOR JSON PATH
                , ROOT('Drivers')
            )
END
GO
