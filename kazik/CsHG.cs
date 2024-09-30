using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace kazik
{
    public class CsHG
    {
        public int HistoryID { get; set; }
        public decimal BetSum { get; set; } // Добавлено свойство для суммы ставки
        public decimal ResultSum { get; set; } // Добавлено свойство для суммы выигрыша
        public DateTime PlayedAt { get; set; }
        public string GameName { get; set; } // Имя игры
    }
}
