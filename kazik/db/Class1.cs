using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Diagnostics;

namespace kazik.db
{
    internal class Class1
    {
        public static KazinoXDEntities2 dbo = new KazinoXDEntities2();
        public static GameHistory gameHistory;
        public static Users users;
        public static Sessions sessions;
        public static Bets bets;
        public static Results results;
        public static Transactions transactions;
        public static Games games;
    }
}
