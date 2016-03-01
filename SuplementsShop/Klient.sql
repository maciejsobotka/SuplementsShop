CREATE TABLE [dbo].[Klient]
(
	[Id] INT IDENTITY PRIMARY KEY, 
    [Status] NVARCHAR(50) NOT NULL, 
    [LimitKredytowy] INT NOT NULL, 
    [SaldoZadluzenia] INT NOT NULL
)
