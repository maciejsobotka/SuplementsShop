CREATE TABLE [dbo].[Klient]
(
	[Klient_Id] INT IDENTITY PRIMARY KEY, 
    [Status] NVARCHAR(50) NOT NULL, 
    [Imie] NVARCHAR(50) NOT NULL, 
    [Nazwisko] NVARCHAR(50) NOT NULL, 
    [AdresEmail] NVARCHAR(50) NOT NULL
)
