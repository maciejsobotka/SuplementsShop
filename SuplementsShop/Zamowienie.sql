CREATE TABLE [dbo].[Zamowienie]
(
	[Zamowienie_Id] INT IDENTITY PRIMARY KEY, 
    [Wartosc] FLOAT NOT NULL,
	[CzasRejestracji] DATE NOT NULL, 
    [TerminRealizacji] DATE NOT NULL, 
    [Przedplata] FLOAT NOT NULL, 
    [Odrzucone] BIT NOT NULL, 
    [LiczbaProduktow] INT NOT NULL, 
    [AdresRealizacji] INT NOT NULL,
    [Klient_Id] INT NOT NULL, 
    [Przesylka_Id] INT NOT NULL, 
    CONSTRAINT [FK_Zamowienie_Klient] FOREIGN KEY ([Klient_Id]) REFERENCES [Klient]([Klient_Id]), 
    CONSTRAINT [FK_Zamowienie_Przesylka] FOREIGN KEY ([Przesylka_Id]) REFERENCES [Przesylka]([Przesylka_Id]), 
    CONSTRAINT [FK_Zamowienie_Adres] FOREIGN KEY ([AdresRealizacji]) REFERENCES [Adres]([Adres_Id]), 
)
