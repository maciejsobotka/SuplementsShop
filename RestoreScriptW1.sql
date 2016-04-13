USE master;
ALTER DATABASE SuplShop
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
GO
restore database SuplShop
from disk = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\Backup\SuplShop.bak'
with file=1, replace;
GO
USE SuplShop;
