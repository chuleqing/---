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
			'������Ԥ������ͼ',
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
			'������Ԥ������ͼ',
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
			'�˵�_������Ԥ������ͼ',
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
			'�˵�_������Ԥ������ͼ',
			35,
			NULL
           )
GO
