//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SklepApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Pracownik
    {
        public int idPracownik { get; set; }
        public string login { get; set; }
        public string haslo { get; set; }
        public string imie { get; set; }
        public string nazwisko { get; set; }
        public string email { get; set; }
        public string nrTelefony { get; set; }
        public string stanowisko { get; set; }
        public Nullable<System.DateTime> dataZatrudnienia { get; set; }
        public Nullable<int> ZnizkaidZnizka { get; set; }
        public Nullable<int> AdresidAdres { get; set; }
    
        public virtual Adres Adres { get; set; }
        public virtual Znizka Znizka { get; set; }
    }
}
