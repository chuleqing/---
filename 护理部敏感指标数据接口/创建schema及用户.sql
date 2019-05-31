--下面开始登录用户的创建，要在master数据库里执行
USE master
GO
CREATE LOGIN hlmgRenji WITH PASSWORD='RenjiHlmg123'
GO
CREATE USER hlmgRenjiUser FOR LOGIN hlmgRenji WITH DEFAULT_SCHEMA=hlmg
GO



--下面开始SCHEMA的创建，要在具体数据库里执行
USE Renji_eAccounting
GO
CREATE USER hlmgRenjiUser FOR LOGIN hlmgRenji

GO

CREATE SCHEMA hlmg

GRANT SELECT ON SCHEMA :: hlmg TO hlmgRenjiUser

