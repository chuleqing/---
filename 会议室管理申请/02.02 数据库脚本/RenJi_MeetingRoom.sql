/*
   2019年2月18日15:51:49
   用户: renji
   服务器: XL7.corp.shinsoft.net,9210
   数据库: Renji_eAccounting
   应用程序: 
*/

/* 为了防止任何可能出现的数据丢失问题，您应该先仔细检查此脚本，然后再在数据库设计器的上下文之外运行此脚本。*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.RenJi_MeetingRoom
	DROP CONSTRAINT FK_Renji_Meeting_HRP_Employee
GO
ALTER TABLE dbo.HRP_Employee SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_RenJi_MeetingRoom
	(
	Id uniqueidentifier NOT NULL,
	Name nvarchar(50) NOT NULL,
	Description nvarchar(200) NULL,
	Contact nvarchar(50) NOT NULL,
	Location nvarchar(100) NOT NULL,
	Equipment nvarchar(200) NULL,
	SeatNum int NOT NULL,
	ContactMobile nvarchar(20) NOT NULL,
	ContactEmail nvarchar(100) NOT NULL,
	IsValid bit NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_RenJi_MeetingRoom SET (LOCK_ESCALATION = TABLE)
GO
DECLARE @v sql_variant 
SET @v = N'Id'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_RenJi_MeetingRoom', N'COLUMN', N'Id'
GO
DECLARE @v sql_variant 
SET @v = N'会议室名称'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_RenJi_MeetingRoom', N'COLUMN', N'Name'
GO
DECLARE @v sql_variant 
SET @v = N'会议室描述'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_RenJi_MeetingRoom', N'COLUMN', N'Description'
GO
DECLARE @v sql_variant 
SET @v = N'联系人'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_RenJi_MeetingRoom', N'COLUMN', N'Contact'
GO
DECLARE @v sql_variant 
SET @v = N'位置'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_RenJi_MeetingRoom', N'COLUMN', N'Location'
GO
DECLARE @v sql_variant 
SET @v = N'设备设施'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_RenJi_MeetingRoom', N'COLUMN', N'Equipment'
GO
DECLARE @v sql_variant 
SET @v = N'座位数量'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_RenJi_MeetingRoom', N'COLUMN', N'SeatNum'
GO
DECLARE @v sql_variant 
SET @v = N'联系人电话'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_RenJi_MeetingRoom', N'COLUMN', N'ContactMobile'
GO
DECLARE @v sql_variant 
SET @v = N'联系人邮件'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_RenJi_MeetingRoom', N'COLUMN', N'ContactEmail'
GO
DECLARE @v sql_variant 
SET @v = N'是否有效'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_RenJi_MeetingRoom', N'COLUMN', N'IsValid'
GO
IF EXISTS(SELECT * FROM dbo.RenJi_MeetingRoom)
	 EXEC('INSERT INTO dbo.Tmp_RenJi_MeetingRoom (Id, Name, Description, Contact, Location, Equipment, SeatNum, ContactMobile, ContactEmail, IsValid)
		SELECT Id, Name, Description, CONVERT(nvarchar(50), ContactId), Location, Equipment, SeatNum, ContactMobile, ContactEmail, IsValid FROM dbo.RenJi_MeetingRoom WITH (HOLDLOCK TABLOCKX)')
GO
ALTER TABLE dbo.RenJi_MeetingRoomApply
	DROP CONSTRAINT FK_RenJi_MeetingRoomApply_RenJi_MeetingRoom
GO
DROP TABLE dbo.RenJi_MeetingRoom
GO
EXECUTE sp_rename N'dbo.Tmp_RenJi_MeetingRoom', N'RenJi_MeetingRoom', 'OBJECT' 
GO
ALTER TABLE dbo.RenJi_MeetingRoom ADD CONSTRAINT
	PK_Renji_Meeting PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.RenJi_MeetingRoomApply ADD CONSTRAINT
	FK_RenJi_MeetingRoomApply_RenJi_MeetingRoom FOREIGN KEY
	(
	MeetingRoomId
	) REFERENCES dbo.RenJi_MeetingRoom
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.RenJi_MeetingRoomApply SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
