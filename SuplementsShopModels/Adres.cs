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
    
    public partial class Adres
    {
        public Adres()
        {
            this.Przesylka = new HashSet<Przesylka>();
            this.Zamowienie = new HashSet<Zamowienie>();
        }
    
        public int Adres_Id { get; set; }
        public string Ulica { get; set; }
        public int NrDomu { get; set; }
        public int NrMieszkania { get; set; }
        public string Miasto { get; set; }
        public string Wojewodzctwo { get; set; }
        public string Kraj { get; set; }
    
        public virtual ICollection<Przesylka> Przesylka { get; set; }
        public virtual ICollection<Zamowienie> Zamowienie { get; set; }
    }
}
