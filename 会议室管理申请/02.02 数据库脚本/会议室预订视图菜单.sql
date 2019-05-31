INSERT INTO [HRP_Menu]
           ([Id]
           ,[ParentId]
           ,[HasChildren]
           ,[Depth]
           ,[Name]
           ,[Weight]
           ,[Url]
           ,[Target]
           ,[IsValid])
     VALUES
           ('RenJi_MeetingRoomReserveWeekManager',
			'RenJi_Other',
			0,
			2,
			'会议室预订周视图',
			9,
			'~/Modules/Custom/RenJi/MeetingRoomReserveWeekManager.aspx',
			NULL,
			1
           )
GO




INSERT INTO [HRP_Menu]
           ([Id]
           ,[ParentId]
           ,[HasChildren]
           ,[Depth]
           ,[Name]
           ,[Weight]
           ,[Url]
           ,[Target]
           ,[IsValid])
     VALUES
           ('RenJi_MeetingRoomReserveDayManager',
			'RenJi_Other',
			0,
			2,
			'会议室预订日视图',
			10,
			'~/Modules/Custom/RenJi/MeetingRoomReserveDayManager.aspx',
			NULL,
			1
           )
GO


INSERT INTO [Permission]
           ([Code]
           ,[Name]
           ,[ApplicationID]
           ,[Parent])
     VALUES
           ('RenJi_MeetingRoomReserveWeekManager',
			'菜单_会议室预订周视图',
			35,
			NULL
           )
GO

INSERT INTO [Permission]
           ([Code]
           ,[Name]
           ,[ApplicationID]
           ,[Parent])
     VALUES
           ('RenJi_MeetingRoomReserveDayManager',
			'菜单_会议室预订日视图',
			35,
			NULL
           )
GO
