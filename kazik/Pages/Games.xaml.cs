using QRCoder;
using System;
using System.Collections.Generic;
using System.IO;
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
using System.Drawing;
using kazik.db;
using System.Windows.Threading;
using System.Xml.Linq;
using System.Media;

namespace kazik.Pages
{
    /// <summary>
    /// Логика взаимодействия для Page5.xaml
    /// </summary>
    public partial class Games : Page
    {
        private Random random;
        private readonly string[] symbols = { "A", "B", "C", "D", "E"};
        private readonly string[] AB = { "A", "B" };
        private DispatcherTimer spinTimer;
        private DispatcherTimer spinTimerFl;
        private int spinCount;
        string username;
        int id_session;
        public Games(string USERNAME,int id_Session)
        {
            InitializeComponent();
            random = new Random();
            spinTimer = new DispatcherTimer();
            spinTimerFl = new DispatcherTimer();
            spinTimerFl.Interval = TimeSpan.FromMilliseconds(60);
            spinTimerFl.Tick += SpinTimer_TickFlip;
            spinTimer.Interval = TimeSpan.FromMilliseconds(60);
            spinTimer.Tick += SpinTimer_Tick;
            this.username = USERNAME;
            this.id_session = id_Session;
        }   

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Profil(username, id_session));
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void txtBalance_Loaded(object sender, RoutedEventArgs e)
        {
            var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
            txtBalance.Text = Convert.ToString(tempUser.Balance);
        }
        int id_bet;
        int id_game;
        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            _soundPlayer = new SoundPlayer("D:\\kazina\\kazik\\kazik\\SOUNDS\\pobeda.wav");
            _soundPlayer.Load();
            _soundPlayer.Play();
            _soundPlayer.Stop();
            if (txtBet.Text != "")
            {
                if (Convert.ToInt32(txtBalance.Text) - Convert.ToInt32(txtBet.Text) >= 0)
                {
                    spinCount = 3;
                    spinTimer.Start();
                    krut.IsEnabled = false;
                    resultText.Text = null;
                    var tempSessions = Class1.dbo.Sessions.FirstOrDefault(session => session.SessionID == id_session);
                    var tempGames = new db.Games()
                    {
                        GameName = "Рулеточка",
                        GameType = "Рулетка",
                        CreatedAt = DateTime.Now,
                    };
                    Class1.dbo.Games.Add(tempGames);
                    Class1.dbo.SaveChanges();
                    var tempBets = new db.Bets()
                    {
                        BetAmount = Convert.ToInt32(txtBet.Text),
                        BetTime = DateTime.Now,
                        GameID = tempGames.GameID,
                        SessionID = tempSessions.SessionID,
                    };
                    Class1.dbo.Bets.Add(tempBets);
                    Class1.dbo.SaveChanges();
                    id_bet = tempBets.BetID;
                    id_game = tempGames.GameID;
                }
                else if (Convert.ToInt32(txtBalance.Text) - Convert.ToInt32(txtBet.Text) < 0)
                {
                    MessageBox.Show("Недостаточно средств");
                }
            else
                {
                    MessageBox.Show("Вы не депнули");
                }
            }
        }

        private void SpinTimer_Tick(object sender, EventArgs e)
        {
            if (spinCount > 0)
            {
                reel1.Text = symbols[random.Next(symbols.Length)];
                if (reel1.Text == "A")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image3.png");
                    slot1.Source = new BitmapImage(imageUri);
                }
                else if (reel1.Text == "B")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image4.png");
                    slot1.Source = new BitmapImage(imageUri);
                }
                else if (reel1.Text == "C")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image5.png");
                    slot1.Source = new BitmapImage(imageUri);
                }
                else if (reel1.Text == "D")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image6.png");
                    slot1.Source = new BitmapImage(imageUri);
                }
                else if (reel1.Text == "E")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image7.png");
                    slot1.Source = new BitmapImage(imageUri);
                }
                reel2.Text = symbols[random.Next(symbols.Length)];
                if (reel2.Text == "A")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image3.png");
                    slot2.Source = new BitmapImage(imageUri);
                }
                else if (reel2.Text == "B")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image4.png");
                    slot2.Source = new BitmapImage(imageUri);
                }
                else if (reel2.Text == "C")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image5.png");
                    slot2.Source = new BitmapImage(imageUri);
                }
                else if (reel2.Text == "D")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image6.png");
                    slot2.Source = new BitmapImage(imageUri);
                }
                else if (reel2.Text == "E")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image7.png");
                    slot2.Source = new BitmapImage(imageUri);
                }
                reel3.Text = symbols[random.Next(symbols.Length)];
                if (reel3.Text == "A")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image3.png");
                    slot3.Source = new BitmapImage(imageUri);
                }
                else if (reel3.Text == "B")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image4.png");
                    slot3.Source = new BitmapImage(imageUri);
                }
                else if (reel3.Text == "C")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image5.png");
                    slot3.Source = new BitmapImage(imageUri);
                }
                else if (reel3.Text == "D")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image6.png");
                    slot3.Source = new BitmapImage(imageUri);
                }
                else if (reel3.Text == "E")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\Image7.png");
                    slot3.Source = new BitmapImage(imageUri);
                }
                spinCount--;
            }
            else
            {
                spinTimer.Stop();
                CheckWin();
                krut.IsEnabled = true;
            }
        }
        private SoundPlayer _soundPlayer;
        private void CheckWin()
        {
            if (reel1.Text == reel2.Text && reel2.Text == reel3.Text)
            {
                var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
                var tempBets = Class1.dbo.Bets.FirstOrDefault(bets => bets.BetID == id_bet);
                tempUser.Balance += Convert.ToInt32(txtBet.Text) * 5;
                Class1.dbo.SaveChanges();
                txtBalance.Text = tempUser.Balance.ToString();
                var tempResult = new db.Results()
                {
                    BetID = tempBets.BetID,
                    WinAmount = Convert.ToInt32(txtBet.Text) * 5,
                    ResultTime = DateTime.Now,
                };
                Class1.dbo.Results.Add(tempResult);
                Class1.dbo.SaveChanges();
                var tempGamesHistory = new db.GameHistory()
                {
                    UserID = tempUser.UserID,
                    GameID = id_game,
                    BetID = tempBets.BetID,
                    ResultID = tempResult.ResultID,
                    PlayedAt = DateTime.Now,
                };
                Class1.dbo.GameHistory.Add(tempGamesHistory);
                Class1.dbo.SaveChanges();
                _soundPlayer = new SoundPlayer("D:\\kazina\\kazik\\kazik\\SOUNDS\\pobeda.wav");
                _soundPlayer.Load();
                _soundPlayer.Play();
                MessageBox.Show("Поздравляем! Вы выиграли!");
            }
            else
            {
                var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
                var tempBets = Class1.dbo.Bets.FirstOrDefault(bets => bets.BetID == id_bet);
                tempUser.Balance -= Convert.ToInt32(txtBet.Text);
                Class1.dbo.SaveChanges();
                txtBalance.Text = tempUser.Balance.ToString();
                var tempResult = new db.Results()
                {
                    BetID = tempBets.BetID,
                    WinAmount = -tempBets.BetAmount,
                    ResultTime = DateTime.Now,
                };
                Class1.dbo.Results.Add(tempResult);
                Class1.dbo.SaveChanges();
                var tempGamesHistory = new db.GameHistory()
                {
                    UserID = tempUser.UserID,
                    GameID = id_game,
                    BetID = tempBets.BetID,
                    ResultID = tempResult.ResultID,
                    PlayedAt = DateTime.Now,
                };
                Class1.dbo.GameHistory.Add(tempGamesHistory);
                Class1.dbo.SaveChanges();
                _soundPlayer = new SoundPlayer("D:\\kazina\\kazik\\kazik\\SOUNDS\\lose.wav");
                _soundPlayer.Load();
                _soundPlayer.Play();
                resultText.Text = "Попробуйте еще раз!";
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Balance(username,id_session));
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new GamesHistory(username));
        }

        private string res;
        private void vrash_Click(object sender, RoutedEventArgs e)
        {
            _soundPlayer = new SoundPlayer("D:\\kazina\\kazik\\kazik\\SOUNDS\\pobeda.wav");
            _soundPlayer.Load();
            _soundPlayer.Play();
            _soundPlayer.Stop();
            if (txtBet.Text != "")
            {
                if (Convert.ToInt32(txtBalance.Text) - Convert.ToInt32(txtBet.Text) >= 0)
                {
                    spinCount = 3;
                    spinTimerFl.Start();
                    vrash.IsEnabled = false;
                    resultTextflip.Text = null;
                    var tempSessions = Class1.dbo.Sessions.FirstOrDefault(session => session.SessionID == id_session);
                    var tempGames = new db.Games()
                    {
                        GameName = "Монеточка",
                        GameType = "Монетка",
                        CreatedAt = DateTime.Now,
                    };
                    Class1.dbo.Games.Add(tempGames);
                    Class1.dbo.SaveChanges();
                    var tempBets = new db.Bets()
                    {
                        BetAmount = Convert.ToInt32(txtBet.Text),
                        BetTime = DateTime.Now,
                        GameID = tempGames.GameID,
                        SessionID = tempSessions.SessionID,
                    };
                    Class1.dbo.Bets.Add(tempBets);
                    Class1.dbo.SaveChanges();
                    id_bet = tempBets.BetID;
                    id_game = tempGames.GameID;
                }
                else if (Convert.ToInt32(txtBalance.Text) - Convert.ToInt32(txtBet.Text) < 0)
                {
                    MessageBox.Show("Недостаточно средств");
                }
                else
                {
                    MessageBox.Show("Вы не депнули");
                }
            }
        }
        private void SpinTimer_TickFlip(object sender, EventArgs e)
        {
            if (spinCount > 0)
            {
                ran.Text = AB[random.Next(AB.Length)];
                if (ran.Text == "A")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\head.png");
                    coin.Source = new BitmapImage(imageUri);
                }
                else if (ran.Text == "B")
                {
                    var imageUri = new Uri("D:\\kazina\\kazik\\kazik\\tails.png");
                    coin.Source = new BitmapImage(imageUri);
                }
                spinCount--;
            }
            else
            {
                spinTimerFl.Stop();
                CheckWinFlip();
                vrash.IsEnabled = true;
            }
        }
        private void Button_Click_5(object sender, RoutedEventArgs e)
        {
            res = "A";
        }

        private void Button_Click_6(object sender, RoutedEventArgs e)
        {
            res = "B";
        }
        private void CheckWinFlip()
        {
            if (res == "A" && ran.Text =="A" || res == "B" && ran.Text == "B") {
                var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
                var tempBets = Class1.dbo.Bets.FirstOrDefault(bets => bets.BetID == id_bet);
                tempUser.Balance += Convert.ToInt32(txtBet.Text) * 2;
                Class1.dbo.SaveChanges();
                txtBalance.Text = tempUser.Balance.ToString();
                var tempResult = new db.Results()
                {
                    BetID = tempBets.BetID,
                    WinAmount = Convert.ToInt32(txtBet.Text) * 2,
                    ResultTime = DateTime.Now,
                };
                Class1.dbo.Results.Add(tempResult);
                Class1.dbo.SaveChanges();
                var tempGamesHistory = new db.GameHistory()
                {
                    UserID = tempUser.UserID,
                    GameID = id_game,
                    BetID = tempBets.BetID,
                    ResultID = tempResult.ResultID,
                    PlayedAt = DateTime.Now,
                };
                Class1.dbo.GameHistory.Add(tempGamesHistory);
                Class1.dbo.SaveChanges();
                _soundPlayer = new SoundPlayer("D:\\kazina\\kazik\\kazik\\SOUNDS\\pobeda.wav");
                _soundPlayer.Load();
                _soundPlayer.Play();
                MessageBox.Show("Поздравляем! Вы выиграли!");
            }
            else
            {
                var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
                var tempBets = Class1.dbo.Bets.FirstOrDefault(bets => bets.BetID == id_bet);
                tempUser.Balance -= Convert.ToInt32(txtBet.Text);
                Class1.dbo.SaveChanges();
                txtBalance.Text = tempUser.Balance.ToString();
                var tempResult = new db.Results()
                {
                    BetID = tempBets.BetID,
                    WinAmount = -tempBets.BetAmount,
                    ResultTime = DateTime.Now,
                };
                Class1.dbo.Results.Add(tempResult);
                Class1.dbo.SaveChanges();
                var tempGamesHistory = new db.GameHistory()
                {
                    UserID = tempUser.UserID,
                    GameID = id_game,
                    BetID = tempBets.BetID,
                    ResultID = tempResult.ResultID,
                    PlayedAt = DateTime.Now,
                };
                Class1.dbo.GameHistory.Add(tempGamesHistory);
                Class1.dbo.SaveChanges();
                _soundPlayer = new SoundPlayer("D:\\kazina\\kazik\\kazik\\SOUNDS\\lose.wav");
                _soundPlayer.Load();
                _soundPlayer.Play();
                resultTextflip.Text = "Попробуйте еще раз!";
            }
        }
    }
}
