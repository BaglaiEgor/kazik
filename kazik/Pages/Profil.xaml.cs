using kazik.db;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
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
    /// Логика взаимодействия для Page4.xaml
    /// </summary>
    public partial class Profil : Page
    {
        string username;
        int id_session;
        public Profil(string USERNAME, int id_Session)
        {
            InitializeComponent();
            this.username = USERNAME;
            var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
            txtBalance.Text = tempUser.Balance.ToString();
            this.id_session = id_Session;
        }

        private void txtName_Loaded(object sender, RoutedEventArgs e)
        {
            var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
            txtName.Text = tempUser.Username;
        }

        private void txtBalance_Loaded(object sender, RoutedEventArgs e)
        {
            var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
            txtBalance.Text = Convert.ToString(tempUser.Balance);
        }

        private void txtMail_Loaded(object sender, RoutedEventArgs e)
        {
            var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
            txtMail.Text = tempUser.Email;
        }

        private void txtCreationDate_Loaded(object sender, RoutedEventArgs e)
        {
            var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
            txtCreationDate.Text = Convert.ToString(tempUser.CreatedAt);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Balance(username,id_session));
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            string Login = txtChange.Text;
            var User = Class1.dbo.Users.FirstOrDefault(user => user.Username == Login);
            if (User != null)
            {
                MessageBox.Show("Пользователь с таким логином уже есть!");
            }
            else
            {
                var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
                tempUser.Username = txtChange.Text;
                Class1.dbo.SaveChanges();
                txtName.Text = tempUser.Username;
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            string EmailUser = txtChange.Text;
            bool isValidFormat = System.Text.RegularExpressions.Regex.IsMatch(EmailUser, @"^[^@\s]+@[^@\s]+\.[^@\s]+$");
            var Mail = Class1.dbo.Users.FirstOrDefault(mail => mail.Email == EmailUser);
            if (Mail != null)
            {
                MessageBox.Show("Пользователь с такой почтой уже есть!");
            }
            else
            {
            if (isValidFormat == true)
                {
                    var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
                    tempUser.Email = txtChange.Text;
                    Class1.dbo.SaveChanges();
                    txtMail.Text = tempUser.Email;
                }
                else
                {
                    MessageBox.Show("Вы ввели неправильную почту");
                }
            }
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Games(username, id_session));
        }
    }
}
