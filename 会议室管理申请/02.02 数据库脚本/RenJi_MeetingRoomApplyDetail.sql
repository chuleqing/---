/****** Object:  Table [dbo].[RenJi_MeetingRoomApplyDetail]    Script Date: 2019/1/30 15:50:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RenJi_MeetingRoomApplyDetail](
	[Id] [uniqueidentifier] NOT NULL,
	[MeetingRoomApplyId] [uniqueidentifier] NOT NULL,
	[Subject] [nvarchar](100) NOT NULL,
	[SubjectTime] [varchar](20) NOT NULL,
	[Master] [varchar](200) NOT NULL,
	[Sort] [int] NULL,
 CONSTRAINT [PK_RenJi_MeetingRoomApplyDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApplyDetail]  WITH CHECK ADD  CONSTRAINT [FK_RenJi_MeetingRoomApplyDetail_RenJi_MeetingRoomApplyDetail] FOREIGN KEY([MeetingRoomApplyId])
REFERENCES [dbo].[RenJi_MeetingRoomApply] ([Id])
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApplyDetail] CHECK CONSTRAINT [FK_RenJi_MeetingRoomApplyDetail_RenJi_MeetingRoomApplyDetail]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApplyDetail', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议室申请Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApplyDetail', @level2type=N'COLUMN',@level2name=N'MeetingRoomApplyId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'议题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApplyDetail', @level2type=N'COLUMN',@level2name=N'Subject'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApplyDetail', @level2type=N'COLUMN',@level2name=N'SubjectTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主持人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApplyDetail', @level2type=N'COLUMN',@level2name=N'Master'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApplyDetail', @level2type=N'COLUMN',@level2name=N'Sort'
GO


