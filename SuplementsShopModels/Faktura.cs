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
    
    public partial class Faktura
    {
        public int Id { get; set; }
        public System.DateTime TerminPlatnosci { get; set; }
        public int Naleznosc { get; set; }
        public int IdKlienta { get; set; }
    
        public virtual Klient Klient { get; set; }
    }
}