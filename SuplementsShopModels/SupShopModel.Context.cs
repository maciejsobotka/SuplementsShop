﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SuplementsShopEntities : DbContext
    {
        public SuplementsShopEntities()
            : base("name=SuplementsShopEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Adres> Adres { get; set; }
        public virtual DbSet<Faktura> Faktura { get; set; }
        public virtual DbSet<Kategoria> Kategoria { get; set; }
        public virtual DbSet<Klient> Klient { get; set; }
        public virtual DbSet<Producent> Producent { get; set; }
        public virtual DbSet<Produkt> Produkt { get; set; }
        public virtual DbSet<Przesylka> Przesylka { get; set; }
        public virtual DbSet<Zamowienie> Zamowienie { get; set; }
    }
}
