USE [Renji_eAccounting]
GO

/****** Object:  View [hlmg].[view_Ward_ShiftTab_Dic]    Script Date: 2019/2/28 17:15:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE view [hlmg].[view_Ward_ShiftTab_Dic] 
as
select
 CONVERT(varchar(max),NULL)  as WardCode,
 CONVERT(varchar(max),NULL)  as WardName, 
 CONVERT(varchar(max),area.Name)   as UnitName,
 CONVERT(varchar(max),class.name)  as ShiftTabName,
 CONVERT(varchar(max),class.StartTime+':00')  as BeginTime,
 CONVERT(varchar(max),class.EndTime+':00')  as EndTime
from dbo.HR_Schedule_ClassConfig  as class
left join dbo.HR_Schedule_NurseArea as area
on class.NurseAreaId=area.Id
where class.IsCustom=0
union 
select
 CONVERT(varchar(max),NULL)  as WardCode,
 CONVERT(varchar(max),NULL)  as WardName, 
 CONVERT(varchar(max),area.Name)   as UnitName,
 CONVERT(varchar(max),class.name)  as ShiftTabName,
 CONVERT(varchar(max),actual.StartTime, 24) as BeginTime,
 CONVERT(varchar(max),actual.EndTime, 24) as EndTime
from dbo.HR_Schedule_Actual  as actual
left join  dbo.HR_Schedule_ClassConfig  as class
on class.Id=actual.ClassId
left join dbo.HR_Schedule_NurseArea as area
on class.NurseAreaId=area.Id 
where class.IsCustom=1

GO


