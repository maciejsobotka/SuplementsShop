CREATE TABLE [dbo].[ProduktyZamówienia]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Produkt_Id] INT NOT NULL, 
    [Zamówienie_Id] INT NOT NULL, 
    CONSTRAINT [FK_ProduktyZamówienia_ToTableProdukt] FOREIGN KEY ([Produkt_Id]) REFERENCES [Produkt]([Id]), 
    CONSTRAINT [FK_ProduktyZamówienia_ToTableZamówienie] FOREIGN KEY ([Zamówienie_Id]) REFERENCES [Zamowienie]([Id])
)
