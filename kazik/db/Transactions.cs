//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace kazik.db
{
    using System;
    using System.Collections.Generic;
    
    public partial class Transactions
    {
        public int TransactionID { get; set; }
        public Nullable<int> UserID { get; set; }
        public Nullable<int> TransactionAmount { get; set; }
        public string TransactionType { get; set; }
    
        public virtual Users Users { get; set; }
    }
}