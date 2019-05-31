USE [Renji_eAccounting]
GO

/****** Object:  View [hlmg].[view_Nurse_Info]    Script Date: 2019/2/28 17:15:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE view [hlmg].[view_Nurse_Info] 
as
select
CONVERT(varchar(max), emp.UserName )as StaffId,
CONVERT(varchar(max), emp.Name ) as StaffName,
CONVERT(varchar(max), semp.CertificateNum ) as CertificateNo,
CONVERT(varchar(max), semp.Education ) as Education,
NULL as Memo
from  [dbo].[HR_Schedule_Employee] as semp
left join HRP_Employee as emp
on semp.id=emp.id
GO


