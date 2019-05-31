USE [Renji_eAccounting]
GO

/****** Object:  View [hlmg].[view_Instrument_Application_Cost]    Script Date: 2019/2/28 17:16:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE view  [hlmg].[view_Instrument_Application_Cost]
as
select 
convert(varchar(max), mc.ApplicationId) as AppNo,
convert(varchar(max), '已生效') as  Status,
convert(varchar(max), (CASE  
when mc.Type= 3 then NULL
when  mc.Type<>3 then mc.Code
end
) )as ChargeCode,
convert(varchar(max), mc.name )as ChargeName,
convert(numeric(10,2), mc.Price) as ChargePrice ,
convert(varchar(max), (CASE    mc.Type 
        WHEN 0 THEN '医保'
        WHEN 1 THEN '部分医保'
        WHEN 2 THEN '自费' 
        WHEN 3 THEN '不另计价项目'
		END)) as ChargeType
   from [RenJi_MedicalCharge] mc
left join HRP_Application  app on app.id=mc.ApplicationId 
left join HRP_AppType apptype on apptype.id=app.AppTypeId
left join Expense_Part_RelationDetail relation on relation.AdvanceApplicationId=mc.ApplicationId
where apptype.id=512
and app.StatusID=4
and (select top (1) ContractNo from RenJi_Part_ContractDetail contr
where contr.ThreeImportantApplicationID=relation.ApplicationId) is not null

GO


