CREATE TABLE [dbo].[Przesylka]
(
	[Id] INT IDENTITY PRIMARY KEY, 
    [PotwierdzoneDostarczenie] BIT NULL, 
    [Wartosc] INT NOT NULL, 
    [Ubezpieczenie] BIT NULL, 
    [AnulacjaOplaty] BIT NULL, 
    [AdresDostawy] INT NOT NULL, 
    [WymaganaPlatnoscGotowka] BIT NULL, 
    CONSTRAINT [FK_Przesylka_Adres] FOREIGN KEY ([AdresDostawy]) REFERENCES [Adres]([Id]), 
)