USE [Renji_eAccounting]
GO

/****** Object:  View [hlmg].[view_Instrument_Application]    Script Date: 2019/2/28 17:16:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE view  [hlmg].[view_Instrument_Application]
as
select 
convert(varchar(max),p.ApplicationId )as AppNo,
convert(varchar(max),'已生效' ) as  Status,
Convert(varchar(max),Convert(date,app.CreateTime))  as AppDate,
convert(varchar(max),emp.UserName ) as App_StaffId,
convert(varchar(max),emp.Name ) as App_StaffName,
convert(varchar(max),p.Name  )as InstrumentName,
(select top (1) convert(varchar(max),ContractNo) from RenJi_Part_ContractDetail contr
where contr.ThreeImportantApplicationID=relation.ApplicationId) as ContractNo , 
convert(numeric(10,2),(case  
when  p.EquipNumConf is NULL then NULL
when  p.EquipNumConf=0  then NULL
else  p.BudgetPrice/p.EquipNumConf  
end)) as Price, --单价=总预算/数量
convert(int,p.EquipNumConf) as Quantity , --数量
convert(numeric(10,2),p.BudgetPrice ) as Total_Budget , --总预算
convert(int,pd.DayCheckCount) as CheckNum_PerDay,
convert(int,pd.MonthCheckCount) as CheckNum_First_Year,
convert(int,pd.MonthFitCheckCount) as CheckNum_PerDay_hypothetical,
convert(numeric(9,2),pd.GetBackTime) as Cost_Recovery_Time
from RenJi_ProjectbudgetDetail as p
left join HRP_Application  app on app.id=p.ApplicationId 
left join HRP_AppType apptype on apptype.id=app.AppTypeId
left join HRP_Employee  emp on  emp.id=app.ApplicantId
left join Expense_Part_RelationDetail relation on relation.AdvanceApplicationId=p.ApplicationId
left join RenJi_ProjectDetail pd on  p.ApplicationId=pd.ApplicationId
where apptype.id=512
and app.StatusID=4
and (select top (1) ContractNo from RenJi_Part_ContractDetail contr
where contr.ThreeImportantApplicationID=relation.ApplicationId) is not null

GO


