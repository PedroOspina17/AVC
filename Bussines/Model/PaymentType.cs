//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Bussines.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class PaymentType
    {
        public PaymentType()
        {
            this.SalePayment = new HashSet<SalePayment>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public bool Active { get; set; }
    
        public virtual ICollection<SalePayment> SalePayment { get; set; }
    }
}
