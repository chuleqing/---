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

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'MeetingRoomId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���뵥Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'ApplicationId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'BeginDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'BeginTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'EndDate'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'EndTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'Description'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ч�����֪ͨ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'IsMessage'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ч���ʼ�֪ͨ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'IsEmail'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ͶӰ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'HasProjector'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��е���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'HasComputer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����ʻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'HasFlower'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'AdditionalReq'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'VehicleInfo'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Է�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'DiningNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApply', @level2type=N'COLUMN',@level2name=N'MasterId'
GO


