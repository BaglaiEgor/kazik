using kazik.db;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.SqlClient;

namespace kazik.Pages
{
    /// <summary>
    /// Логика взаимодействия для Page1.xaml
    /// </summary>

    public partial class GamesHistory : Page
    {
        public ObservableCollection<CsHG> HistoryGames { get; set; }
        string username;
        public GamesHistory(string USERNAME)
        {
            InitializeComponent();
            this.username = USERNAME;
            HistoryGames = new ObservableCollection<CsHG>();
            LoadGameHistory();
            ListHistory.ItemsSource = HistoryGames;
        }
        private void LoadGameHistory()
        {
            using (var context = new KazinoXDEntities2())
            {
                var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
                var userId = tempUser.UserID;

                var gameHistoryRaw = (from gh in context.GameHistory
                                      where gh.UserID == userId
                                      join g in context.Games on gh.GameID equals g.GameID
                                      join b in context.Bets on gh.BetID equals b.BetID // Соединяем с таблицей Bets
                                      join r in context.Results on gh.ResultID equals r.ResultID // Соединяем с таблицей Result
                                      select new CsHG
                                      {
                                          HistoryID = gh.HistoryID,
                                          BetSum = (int)b.BetAmount, // Получаем сумму ставки
                                          ResultSum = (int)r.WinAmount, // Получаем сумму выигрыша
                                          PlayedAt = (DateTime)gh.PlayedAt, // Убираем преобразование
                                          GameName = g.GameName // Получаем имя игры
                                      }).ToList();

                foreach (var item in gameHistoryRaw)
                {
                    HistoryGames.Add(item); // Добавляем данные в коллекцию
                }
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
