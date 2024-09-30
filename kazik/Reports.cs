using kazik.db;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace kazik
{
    public class Reports
    {
        private readonly KazinoXDEntities2 _context;

        public Reports(KazinoXDEntities2 context)
        {
            _context = context;
        }

        public void GenerateGameBetReport()
        {
            var report = from g in _context.Games
                         join b in _context.Bets on g.GameID equals b.GameID
                         group b by new { g.GameID, g.GameName } into gameGroup
                         select new
                         {
                             GameName = gameGroup.Key.GameName,
                             TotalBetAmount = gameGroup.Sum(b => b.BetAmount)
                         };

            foreach (var item in report)
            {
                Console.WriteLine($"Game: {item.GameName}, Total Bets: {item.TotalBetAmount}");
            }
        }
        public void GenerateUserWinReport()
        {
            var report = from u in _context.Users
                         join gh in _context.GameHistory on u.UserID equals gh.UserID
                         join r in _context.Results on gh.ResultID equals r.ResultID
                         group r by new { u.UserID, u.Username } into userGroup
                         select new
                         {
                             Username = userGroup.Key.Username,
                             TotalWinAmount = userGroup.Sum(r => r.WinAmount)
                         };

            foreach (var item in report)
            {
                Console.WriteLine($"User: {item.Username}, Total Wins: {item.TotalWinAmount}");
            }
        }
    }
}
