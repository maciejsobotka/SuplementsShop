//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SuplementsShopModels
{
    using System;
    using System.Collections.Generic;
    
    public partial class Zamowienie
    {
        public int Id { get; set; }
        public int Wartosc { get; set; }
        public System.DateTime TerminRealizacji { get; set; }
        public int Przedplata { get; set; }
        public Nullable<bool> Odrzucone { get; set; }
        public int LiczbaNiestandardowychProduktow { get; set; }
        public int LiczbaProduktow { get; set; }
        public Nullable<bool> SpecyfikacjaWykonawcza { get; set; }
        public Nullable<bool> DedykowanySpecjalista { get; set; }
        public Nullable<bool> NieMoznaWyslac { get; set; }
        public int AdresRealizacji { get; set; }
        public int IdKlienta { get; set; }
        public int IdPrzesylki { get; set; }
    
        public virtual Adres Adres { get; set; }
        public virtual Klient Klient { get; set; }
        public virtual Przesylka Przesylka { get; set; }
    }
}