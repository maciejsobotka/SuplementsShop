USE master;
GO
ALTER DATABASE SuplShop
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
GO
restore database SuplShop
from disk = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Backup\SuplShop.bak'
with file=2, replace;
GO
USE SuplShop;