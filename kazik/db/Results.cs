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
    
    public partial class Results
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Results()
        {
            this.GameHistory = new HashSet<GameHistory>();
        }
    
        public int ResultID { get; set; }
        public Nullable<int> BetID { get; set; }
        public Nullable<int> WinAmount { get; set; }
        public Nullable<System.DateTime> ResultTime { get; set; }
    
        public virtual Bets Bets { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GameHistory> GameHistory { get; set; }
    }
}