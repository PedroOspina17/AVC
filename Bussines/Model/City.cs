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
    
    public partial class City
    {
        public City()
        {
            this.Person = new HashSet<Person>();
        }
    
        public int Id { get; set; }
        public int DepartmentId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int Active { get; set; }
        public string Estado { get; set; }
        public virtual Deparment Deparment { get; set; }
        public virtual ICollection<Person> Person { get; set; }
    }
}
3