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
    
    public partial class Kategoria
    {
        public Kategoria()
        {
            this.ProduktyKategorii = new HashSet<ProduktyKategorii>();
        }
    
        public int Kategoria_Id { get; set; }
        public string NazwaKategorii { get; set; }
    
        public virtual ICollection<ProduktyKategorii> ProduktyKategorii { get; set; }
    }
}
