/****** Object:  Table [dbo].[RenJi_MeetingRoomApplyParticipants]    Script Date: 2019/1/14 15:24:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RenJi_MeetingRoomApplyParticipants](
	[Id] [uniqueidentifier] NOT NULL,
	[MeetingRoomApplyId] [uniqueidentifier] NOT NULL,
	[MeetingRoomApplyParticipantsId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MeetingRoomApplyParticipants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApplyParticipants]  WITH CHECK ADD  CONSTRAINT [FK_MeetingRoomApplyParticipants_HRP_Employee] FOREIGN KEY([MeetingRoomApplyParticipantsId])
REFERENCES [dbo].[HRP_Employee] ([Id])
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApplyParticipants] CHECK CONSTRAINT [FK_MeetingRoomApplyParticipants_HRP_Employee]
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApplyParticipants]  WITH CHECK ADD  CONSTRAINT [FK_MeetingRoomApplyParticipants_RenJi_MeetingRoomApply] FOREIGN KEY([MeetingRoomApplyId])
REFERENCES [dbo].[RenJi_MeetingRoomApply] ([Id])
GO

ALTER TABLE [dbo].[RenJi_MeetingRoomApplyParticipants] CHECK CONSTRAINT [FK_MeetingRoomApplyParticipants_RenJi_MeetingRoomApply]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApplyParticipants', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议室申请Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApplyParticipants', @level2type=N'COLUMN',@level2name=N'MeetingRoomApplyId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参与者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RenJi_MeetingRoomApplyParticipants', @level2type=N'COLUMN',@level2name=N'MeetingRoomApplyParticipantsId'
GO


