CREATE TABLE [dbo].[Produkt]
(
	[Id] INT IDENTITY PRIMARY KEY, 
    [NazwaProduktu] NVARCHAR(50) NOT NULL, 
    [CenaProduktu] FLOAT NOT NULL, 
    [WagaProduktu] FLOAT NOT NULL, 
    [DataDodaniaProduktu] DATETIME NULL, 
    [Producent_Id] INT NOT NULL, 
    CONSTRAINT [FK_Produkt_ToTableProducent] FOREIGN KEY ([Producent_Id]) REFERENCES [Producent]([Id])
)
