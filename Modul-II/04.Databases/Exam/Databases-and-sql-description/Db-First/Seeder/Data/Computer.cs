//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Seeder.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Computer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Computer()
        {
            this.GPUs = new HashSet<GPU>();
            this.StorageDevices = new HashSet<StorageDevice>();
        }
    
        public int Id { get; set; }
        public Nullable<int> TypeId { get; set; }
        public string Vendor { get; set; }
        public string Model { get; set; }
        public Nullable<int> CPUId { get; set; }
        public Nullable<int> RAM { get; set; }
    
        public virtual ComputerType ComputerType { get; set; }
        public virtual CPU CPU { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GPU> GPUs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StorageDevice> StorageDevices { get; set; }
    }
}