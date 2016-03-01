CREATE TABLE [dbo].[Zamowienie]
(
	[Id] INT IDENTITY PRIMARY KEY, 
    [Wartosc] INT NOT NULL, 
    [TerminRealizacji] DATE NOT NULL, 
    [Przedplata] INT NOT NULL, 
    [Odrzucone] BIT NULL, 
    [LiczbaNiestandardowychProduktow] INT NOT NULL, 
    [LiczbaProduktow] INT NOT NULL, 
    [SpecyfikacjaWykonawcza] BIT NULL,
	[DedykowanySpecjalista] BIT NULL, 
    [NieMoznaWyslac] BIT NULL, 
    [AdresRealizacji] INT NOT NULL, 
    [IdKlienta] INT NOT NULL, 
    [IdPrzesylki] INT NOT NULL, 
    CONSTRAINT [FK_Zamowienie_Klient] FOREIGN KEY ([IdKlienta]) REFERENCES [Klient]([Id]), 
    CONSTRAINT [FK_Zamowienie_Przesylka] FOREIGN KEY ([IdPrzesylki]) REFERENCES [Przesylka]([Id]), 
    CONSTRAINT [FK_Zamowienie_Adres] FOREIGN KEY ([AdresRealizacji]) REFERENCES [Adres]([Id]), 
)
