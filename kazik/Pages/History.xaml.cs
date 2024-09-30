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
    /// Логика взаимодействия для Page1.xaml
    /// </summary>
    public partial class History : Page
    {
        string username;
        public History(string USERNAME)
        {
            InitializeComponent();
            this.username = USERNAME;
            var tempUser = Class1.dbo.Users.FirstOrDefault(user => user.Username == username);
            var userTransactions = Class1.dbo.Transactions.Where(t => t.UserID == tempUser.UserID).ToList();
            ListUsers.Items.Clear();
            ListUsers.ItemsSource = userTransactions;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
