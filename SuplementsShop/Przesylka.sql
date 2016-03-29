CREATE TABLE [dbo].[Przesylka]
(
	[Przesylka_Id] INT IDENTITY PRIMARY KEY, 
    [PotwierdzoneDostarczenie] BIT NOT NULL, 
    [Wartosc] FLOAT NOT NULL, 
    [AdresDostawy] INT NOT NULL, 
    CONSTRAINT [FK_Przesylka_Adres] FOREIGN KEY ([AdresDostawy]) REFERENCES [Adres]([Adres_Id]), 
)