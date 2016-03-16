CREATE TABLE [dbo].[ProduktyKategorii]
(
	[ProduktyKategorii_Id] INT NOT NULL PRIMARY KEY, 
    [Produkt_Id] INT NOT NULL, 
    [Kategoria_Id] INT NOT NULL, 
    CONSTRAINT [FK_ProduktyKategorii_ToTableProdukt] FOREIGN KEY ([Produkt_Id]) REFERENCES [Produkt]([Produkt_Id]), 
    CONSTRAINT [FK_ProduktyKategorii_ToTableKategoria] FOREIGN KEY ([Kategoria_Id]) REFERENCES [Kategoria]([Kategoria_Id])
)
