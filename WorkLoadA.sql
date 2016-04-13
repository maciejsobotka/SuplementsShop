DECLARE @Time1 DATETIME
 
DECLARE @Time2 DATETIME
 
SET     @Time1 = GETDATE()

Update Produkt
set Produkt.CenaProduktu = Produkt.CenaProduktu*0.8
from Produkt
where (DataDodaniaProduktu) <= DATEADD(mm, -3, GETDATE());

Update Przesylka
set Wartosc = 0 
from Przesylka,
Zamowienie
where Przesylka.Przesylka_Id = Zamowienie.Przesylka_Id and Zamowienie.Wartosc > 300;

Update Zamowienie
Set Zamowienie.Odrzucone = 0
from Zamowienie, Faktura
where Zamowienie.Zamowienie_Id = Faktura.Zamowienie_Id and Faktura.TerminPlatnosci <= cast(GETDATE() as datetime)
and Faktura.Oplacona = 0;

Update Klient
Set Klient.Status = 'czarna lista'
from Klient
where (select count (Zamowienie.Odrzucone) as OdrzuconeZamowienia from  Zamowienie where Zamowienie.Odrzucone = 1 and Zamowienie.Klient_Id = Klient.Klient_Id ) >=2;
 
 Update Zamowienie
 Set Zamowienie.Wartosc = Zamowienie.Wartosc*0.5
 from Zamowienie
 where  (select count (*) from ProduktyZamowienia where Zamowienie.Zamowienie_Id = ProduktyZamowienia.Zamowienie_Id) >= 5;

Update Klient
Set Klient.Status = 'Staly'
from Klient
where (select count (Faktura.Oplacona) as FakturyZrealizowane from  Faktura 
where Faktura.Oplacona = 1 and Faktura.Klient_Id = Klient.Klient_Id and Faktura.TerminOplacenia >= DATEADD(mm, -3, GETDATE())) >=3 ;

Update Produkt
Set Produkt.CenaProduktu = Produkt.CenaProduktu * 0.7
from Produkt
where (Produkt.Producent_Id = 7 and Month(Produkt.DataDodaniaProduktu) = 5);
 
Update Produkt
Set Produkt.CenaProduktu = Produkt.CenaProduktu * 0.7
from Produkt, ProduktyKategorii
where (Produkt.Producent_Id = 7 and Month(Produkt.DataDodaniaProduktu) = 5 and ProduktyKategorii.Kategoria_Id = 2 and Produkt.Produkt_Id = ProduktyKategorii.Produkt_Id);


Update Zamowienie
Set Zamowienie.Wartosc = Zamowienie.Wartosc* 0.9
from Zamowienie, Klient, Faktura
where(Klient.Klient_Id = Zamowienie.Klient_Id 
and Faktura.Zamowienie_Id = Zamowienie.Zamowienie_Id and Faktura.Oplacona = 0
and Klient.Status = 'Staly');

Update Klient
Set Klient.Status = 'Zwykly'
from Klient, Zamowienie
where (select count (*) as ZamowieniaZarejestrowane from  Zamowienie 
where Klient.Status = 'Staly' and Zamowienie.Klient_Id = Klient.Klient_Id and Zamowienie.CzasRejestracji >= DATEADD(mm, -3, GETDATE())) =0 ;

SET     @Time2 = GETDATE()
 
PRINT  DATEDIFF(MILLISECOND,@Time1,@Time2)