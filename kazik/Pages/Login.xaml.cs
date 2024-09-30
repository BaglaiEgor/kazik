using kazik.db;
using QRCoder;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net.NetworkInformation;
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
using System.Xml.Linq;

namespace kazik.Pages
{
    /// <summary>
    /// Логика взаимодействия для Page1.xaml
    /// </summary>
    public partial class Login : Page
    {
        private Random random;
        public Login()
        {
            InitializeComponent();
        }

        private void buttLog_Click(object sender, RoutedEventArgs e)
        {
            string LoginUser = txtName.Text;
            string PassUser = txtPass.Text;
            var User = Class1.dbo.Users.FirstOrDefault(name => name.Username == LoginUser);
            var Pass = Class1.dbo.Users.FirstOrDefault(pass => pass.Password == PassUser);
            var Mail = Class1.dbo.Users.FirstOrDefault(mail => mail.Email == LoginUser);
            if (User == null && Mail == null)
            {
                MessageBox.Show("Пользователь с таким логином или почтой не зарегистрирован!");
            }
            else if (Pass == null)
            {
                MessageBox.Show("Неверный пароль");
            }
            else
            {
                var tempSessions = new db.Sessions()
                {
                    UserID = User.UserID,
                    StartTime = DateTime.Now,
                    Status = "Онлайн",
                };
                Class1.dbo.Sessions.Add(tempSessions);
                Class1.dbo.SaveChanges();
                MainWindow.Duble.MainFrame.Navigate(new Menu(User.Username,tempSessions.SessionID));
            }
        }

        private void txtName_SelectionChanged(object sender, RoutedEventArgs e)
        {
            if (txtName.Text != "" && txtPass.Text != "")
            {
                buttLog.IsEnabled = true;
            }
            else
            {
                buttLog.IsEnabled = false;
            }
        }

        private void txtPass_SelectionChanged(object sender, RoutedEventArgs e)
        {
            if (txtName.Text != "" && txtPass.Text != "")
            {
                buttLog.IsEnabled = true;
            }
            else
            {
                buttLog.IsEnabled = false;
            }
        }

        private void buttReg_Click(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Registration());
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
        string qwe;
        private void Image_Loaded(object sender, RoutedEventArgs e)
        {
            random = new Random();
            int pin = random.Next(0, 10000);
            string pinCode = pin.ToString("D4");
            qwe = pinCode;
            qrCodeImage.Source = GenerateQrCodeBitmapImage(pinCode);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (code.Text == qwe)
            {
                MainWindow.Duble.MainFrame.Navigate(new AdMain());
            }
            else 
            {
                MessageBox.Show("Неверный код");
            }
        }

        private void code_SelectionChanged(object sender, RoutedEventArgs e)
        {
            if (code.Text != "")
            {
                admin.IsEnabled = true;
            }
            else
            {
                admin.IsEnabled = false;
            }
        }
    }
}
