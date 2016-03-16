CREATE TABLE [dbo].[Faktura]
(
	[Faktura_Id] INT IDENTITY PRIMARY KEY, 
    [TerminPlatnosci] DATE NOT NULL, 
    [Naleznosc] INT NOT NULL,
	[Oplacona] BIT NOT NULL, 
	[TerminOplacenia] DaTE NOT NULL, 
    [Klient_Id] INT NOT NULL, 
    [Zamowienie_id] INT NOT NULL, 
    CONSTRAINT [FK_Faktura_Klient] FOREIGN KEY ([Klient_Id]) REFERENCES [Klient]([Klient_Id]), 
    CONSTRAINT [FK_Faktura_Zamowienie] FOREIGN KEY ([Zamowienie_Id]) REFERENCES [Zamowienie]([Zamowienie_Id])
)
