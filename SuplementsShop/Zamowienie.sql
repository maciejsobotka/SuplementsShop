CREATE TABLE [dbo].[Zamowienie]
(
	[Id] INT IDENTITY PRIMARY KEY, 
    [Wartosc] INT NOT NULL, 
    [TerminRealizacji] DATE NOT NULL, 
    [Przedplata] INT NOT NULL, 
    [Odrzucone] BIT NULL, 
    [LiczbaProduktow] INT NOT NULL, 
    [AdresRealizacji] INT NOT NULL,
    [Klient_Id] INT NOT NULL, 
    [Przesylka_Id] INT NOT NULL, 
    CONSTRAINT [FK_Zamowienie_Klient] FOREIGN KEY ([Klient_Id]) REFERENCES [Klient]([Id]), 
    CONSTRAINT [FK_Zamowienie_Przesylka] FOREIGN KEY ([Przesylka_Id]) REFERENCES [Przesylka]([Id]), 
    CONSTRAINT [FK_Zamowienie_Adres] FOREIGN KEY ([AdresRealizacji]) REFERENCES [Adres]([Id]), 
)
