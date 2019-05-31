USE [Renji_eAccounting]
GO

/****** Object:  View [hlmg].[view_Ward_ShiftTab_Detail]    Script Date: 2019/2/28 17:15:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE view [hlmg].[view_Ward_ShiftTab_Detail] 
as
select
 CONVERT(varchar(max),NULL)  as WardCode,
 CONVERT(varchar(max),NULL) as WardName,
 CONVERT(varchar(max),area.name) as UnitName,
 CONVERT(varchar(max),ClassName)as ShiftTabName,
 CONVERT(varchar(max),actual.StartTime,120) as BeginTime,
 CONVERT(varchar(max),actual.EndTime,120) as EndTime,
 CONVERT(varchar(max),emp.UserName) as StaffId,
 CONVERT(varchar(max),emp.Name) as StaffName
 from dbo.HR_Schedule_Actual as actual
left join  HR_Schedule_NurseArea as area
on area.id=actual.NurseAreaId
left join HRP_Employee as emp
on emp.id=actual.EmployeeId
GO


