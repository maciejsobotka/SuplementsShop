CREATE TABLE [dbo].[ProduktyZamowienia]
(
	[ProduktyZamowienia_Id] INT NOT NULL PRIMARY KEY, 
    [Produkt_Id] INT NOT NULL, 
    [Zamowienie_Id] INT NOT NULL, 
    CONSTRAINT [FK_ProduktyZamówienia_ToTableProdukt] FOREIGN KEY ([Produkt_Id]) REFERENCES [Produkt]([Produkt_Id]), 
    CONSTRAINT [FK_ProduktyZamówienia_ToTableZamówienie] FOREIGN KEY ([Zamowienie_Id]) REFERENCES [Zamowienie]([Zamowienie_Id])
)
