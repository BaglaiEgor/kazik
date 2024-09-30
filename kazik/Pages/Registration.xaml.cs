using kazik.db;
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
    /// Логика взаимодействия для Page2.xaml
    /// </summary>
    public partial class Registration : Page
    {
        public Registration()
        {
            InitializeComponent();
        }

        private void txtName_SelectionChanged(object sender, RoutedEventArgs e)
        {
            if (txtName.Text != "" && txtPass.Text != "" && txtMail.Text !="")
            {
                buttReg.IsEnabled = true;
            }
            else
            {
                buttReg.IsEnabled = false;
            }
        }

        private void txtPass_SelectionChanged(object sender, RoutedEventArgs e)
        {
            if (txtName.Text != "" && txtPass.Text != "" && txtMail.Text != "")
            {
                buttReg.IsEnabled = true;
            }
            else
            {
                buttReg.IsEnabled = false;
            }
        }

        private void buttReg_Click(object sender, RoutedEventArgs e)
        {
            string LoginUser = txtName.Text;
            string EmailUser = txtMail.Text;
            bool isValidFormat = System.Text.RegularExpressions.Regex.IsMatch(EmailUser, @"^[^@\s]+@[^@\s]+\.[^@\s]+$");
            var User = Class1.dbo.Users.FirstOrDefault(name => name.Username == LoginUser);
            var Mail = Class1.dbo.Users.FirstOrDefault(mail => mail.Email == EmailUser);
            if (User != null)
            {
                MessageBox.Show("Пользователь с таким логином уже есть!");
            }
            else if (Mail != null)
            {
                MessageBox.Show("Пользователь с такой почтой уже есть!");
            }
            else if(isValidFormat == true)
            {
                var tempUser = new db.Users()
                {
                    Username = txtName.Text,
                    Password = txtPass.Text,
                    CreatedAt = DateTime.Now,
                    Email = txtMail.Text,
                    Balance = 0
                };
                Class1.dbo.Users.Add(tempUser);
                Class1.dbo.SaveChanges();
                MessageBox.Show("Пользователь успешно зарегестрирован!");
                MainWindow.Duble.MainFrame.Navigate(new Login());
            }
            else 
            {
                MessageBox.Show("Почта имеет неверный формат");
            }
        }

        private void txtMail_SelectionChanged(object sender, RoutedEventArgs e)
        {
            if (txtName.Text != "" && txtPass.Text != "" && txtMail.Text != "")
            {
                buttReg.IsEnabled = true;
            }
            else
            {
                buttReg.IsEnabled = false;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
