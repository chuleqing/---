--���濪ʼ��¼�û��Ĵ�����Ҫ��master���ݿ���ִ��
USE master
GO
CREATE LOGIN hlmgRenji WITH PASSWORD='RenjiHlmg123'
GO
CREATE USER hlmgRenjiUser FOR LOGIN hlmgRenji WITH DEFAULT_SCHEMA=hlmg
GO



--���濪ʼSCHEMA�Ĵ�����Ҫ�ھ������ݿ���ִ��
USE Renji_eAccounting
GO
CREATE USER hlmgRenjiUser FOR LOGIN hlmgRenji

GO

CREATE SCHEMA hlmg

GRANT SELECT ON SCHEMA :: hlmg TO hlmgRenjiUser

