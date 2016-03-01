CREATE TABLE [dbo].[Faktura]
(
	[Id] INT IDENTITY PRIMARY KEY, 
    [TerminPlatnosci] DATE NOT NULL, 
    [Naleznosc] INT NOT NULL, 
    [IdKlienta] INT NOT NULL, 
    CONSTRAINT [FK_Faktura_Klient] FOREIGN KEY ([IdKlienta]) REFERENCES [Klient]([Id])
)
