/****** Object:  Table [dbo].[RenJi_MeetingRoomApply]    Script Date: 2019/1/24 18:14:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RenJi_MeetingRoomApply](
	[Id] [uniqueidentifier] NOT NULL,
	[MeetingRoomId] [uniqueidentifier] NOT NULL,
	[ApplicationId] [varchar](13) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BeginDate] [datetime] NOT NULL,
	[BeginTime] [varchar](10) NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[EndTime] [varchar](10) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[IsMessage] [bit] NOT NULL,
	[IsEmail] [bit] NOT NULL,
	[HasProjector] [bit] NOT NULL,
	[HasComputer] [bit] NOT NULL,
	[HasFlower] [bit] NOT NULL,
	[AdditionalReq] [nvarchar](200) NULL,
	[VehicleInfo] [nvarchar](200) NULL,
	[DiningNumber] [int] NULL,
	[MasterId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_RenJi_MeetingRoomApply] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApply]  WITH CHECK ADD  CONSTRAINT [FK_RenJi_MeetingRoomApply_HRP_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[HRP_Application] ([Id])
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApply] CHECK CONSTRAINT [FK_RenJi_MeetingRoomApply_HRP_Application]
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApply]  WITH CHECK ADD  CONSTRAINT [FK_RenJi_MeetingRoomApply_HRP_Employee] FOREIGN KEY([MasterId])
REFERENCES [dbo].[HRP_Employee] ([Id])
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApply] CHECK CONSTRAINT [FK_RenJi_MeetingRoomApply_HRP_Employee]
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApply]  WITH CHECK ADD  CONSTRAINT [FK_RenJi_MeetingRoomApply_RenJi_MeetingRoom] FOREIGN KEY([MeetingRoomId])
REFERENCES [dbo].[RenJi_MeetingRoom] ([Id])
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApply] CHECK CONSTRAINT [FK_RenJi_MeetingRoomApply_RenJi_MeetingRoom]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议室Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'MeetingRoomId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'ApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会有申请名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'BeginDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'BeginTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'EndTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议生效后短信通知' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'IsMessage'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议生效后邮件通知' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'IsEmail'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有投影仪' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'HasProjector'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有电脑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'HasComputer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有鲜花' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'HasFlower'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他会议要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'AdditionalReq'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'VehicleInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'吃饭人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'DiningNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主持人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'MasterId'
GO


