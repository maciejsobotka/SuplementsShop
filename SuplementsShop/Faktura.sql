CREATE TABLE [dbo].[Faktura]
(
	[Id] INT IDENTITY PRIMARY KEY, 
    [TerminPlatnosci] DATE NOT NULL, 
    [Naleznosc] INT NOT NULL, 
    [Klient_Id] INT NOT NULL, 
    [Zamówienie_id] INT NOT NULL, 
    CONSTRAINT [FK_Faktura_Klient] FOREIGN KEY ([Klient_Id]) REFERENCES [Klient]([Id]), 
    CONSTRAINT [FK_Faktura_Zamówienie] FOREIGN KEY ([Zamówienie_Id]) REFERENCES [Zamowienie]([Id])
)
