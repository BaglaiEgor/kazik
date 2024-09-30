using kazik.db;
using QRCoder;
using System;
using System.Collections.Generic;
using System.Drawing;
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

namespace kazik.Pages
{
    /// <summary>
    /// Логика взаимодействия для Page6.xaml
    /// </summary>
    public partial class Balance : Page
    {
        string username;
        int id_session;
        public Balance(string USERNAME, int id_Session)
        {
            InitializeComponent();
            this.username = USERNAME;
            this.id_session = id_Session;
            var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
            txtBalance.Text = tempUser.Balance.ToString();
        }
        private BitmapImage GenerateQrCodeBitmapImage(string text)
        {
            using (QRCodeGenerator qrGenerator = new QRCodeGenerator())
            {
                QRCodeData qrCodeData = qrGenerator.CreateQrCode(text, QRCodeGenerator.ECCLevel.Q); using (QRCode qrCode = new QRCode(qrCodeData))
                {
                    using (Bitmap qrBitmap = qrCode.GetGraphic(20))
                    {
                        using (MemoryStream ms = new MemoryStream())
                        {
                            qrBitmap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                            ms.Position = 0;
                            BitmapImage bitmapImage = new BitmapImage(); bitmapImage.BeginInit();
                            bitmapImage.CacheOption = BitmapCacheOption.OnLoad; bitmapImage.StreamSource = ms;
                            bitmapImage.EndInit();
                            return bitmapImage;
                        }
                    }
                }
            }
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Profil(username, id_session));
        }

        private void txtBalance_Loaded(object sender, RoutedEventArgs e)
        {
            var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
            txtBalance.Text = Convert.ToString(tempUser.Balance);
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
            var tempTransaction = new Transactions()
            {
                UserID = tempUser.UserID,
                TransactionType = "Пополнение",
                TransactionAmount = Convert.ToInt32(txtBalanceUp.Text),
            };
            tempUser.Balance = Convert.ToInt32(txtBalanceUp.Text) + Convert.ToInt32(txtBalance.Text);
            txtBalance.Text = Convert.ToString(tempUser.Balance);
            Class1.dbo.Transactions.Add(tempTransaction);
            Class1.dbo.SaveChanges();
            qrCodeImage.Source = GenerateQrCodeBitmapImage("Сумма пополнения: " + Convert.ToString(tempTransaction.TransactionAmount));

        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
           
            if (Convert.ToInt32(txtBalance.Text) - Convert.ToInt32(txtBalanceUp.Text) >= 0)
            {
                var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
                var tempTransaction = new Transactions()
                {
                    UserID = tempUser.UserID,
                    TransactionType = "Вывод",
                    TransactionAmount = Convert.ToInt32(txtBalanceUp.Text),
                };
                tempUser.Balance = Convert.ToInt32(txtBalance.Text) - Convert.ToInt32(txtBalanceUp.Text);
                txtBalance.Text = Convert.ToString(tempUser.Balance);
                Class1.dbo.Transactions.Add(tempTransaction);
                Class1.dbo.SaveChanges();
                qrCodeImage.Source = GenerateQrCodeBitmapImage("Сумма снятия: " + Convert.ToString(tempTransaction.TransactionAmount));

            }
            else 
            {
                MessageBox.Show("Недостаточно средств");
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Games(username, id_session));
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Button_Click_6(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new History(username));
        }
    }
}
