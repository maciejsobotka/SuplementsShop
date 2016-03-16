CREATE TABLE [dbo].[Produkt]
(
	[Produkt_Id] INT IDENTITY PRIMARY KEY, 
    [NazwaProduktu] NVARCHAR(50) NOT NULL, 
    [CenaProduktu] FLOAT NOT NULL, 
    [WagaProduktu] FLOAT NOT NULL, 
    [DataDodaniaProduktu] DATETIME NOT NULL, 
    [Producent_Id] INT NOT NULL, 
    CONSTRAINT [FK_Produkt_ToTableProducent] FOREIGN KEY ([Producent_Id]) REFERENCES [Producent]([Producent_Id])
)
