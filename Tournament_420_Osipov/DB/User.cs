//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Tournament_420_Osipov.DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public int IDUser { get; set; }
        public Nullable<int> IDUserRole { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
    
        public virtual UserRole UserRole { get; set; }
    }
}