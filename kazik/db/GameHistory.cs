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
    
    public partial class GameHistory
    {
        public int HistoryID { get; set; }
        public Nullable<int> UserID { get; set; }
        public Nullable<int> GameID { get; set; }
        public Nullable<int> BetID { get; set; }
        public Nullable<int> ResultID { get; set; }
        public Nullable<System.DateTime> PlayedAt { get; set; }
    
        public virtual Bets Bets { get; set; }
        public virtual Games Games { get; set; }
        public virtual Results Results { get; set; }
        public virtual Users Users { get; set; }
    }
}
