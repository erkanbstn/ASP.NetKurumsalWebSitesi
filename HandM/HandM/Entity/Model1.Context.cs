//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HandM.Entity
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HandMDBEntities : DbContext
    {
        public HandMDBEntities()
            : base("name=HandMDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Basvuru> Basvuru { get; set; }
        public virtual DbSet<Lise> Lise { get; set; }
        public virtual DbSet<Sehir> Sehir { get; set; }
        public virtual DbSet<Ulke> Ulke { get; set; }
        public virtual DbSet<Universite> Universite { get; set; }
    }
}
