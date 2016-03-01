CREATE TABLE [dbo].[Adres]
(
	[Id] INT IDENTITY PRIMARY KEY, 
    [Ulica] NVARCHAR(50) NOT NULL, 
    [NrDomu] INT NOT NULL, 
    [NrMieszkania] INT NOT NULL, 
    [Miasto] NVARCHAR(50) NOT NULL, 
    [Wojewodzctwo] NVARCHAR(50) NOT NULL, 
    [Kraj] NVARCHAR(50) NULL
)