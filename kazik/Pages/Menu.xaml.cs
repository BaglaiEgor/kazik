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
using System.Xml.Linq;

namespace kazik.Pages
{
    /// <summary>
    /// Логика взаимодействия для Page3.xaml
    /// </summary>
    public partial class Menu : Page
    {
        int id_session;
        string username;
        public Menu(string USERNAME, int id_session)
        {
            InitializeComponent();
            this.username = USERNAME;
            this.id_session = id_session;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var tempSessions = Class1.dbo.Sessions.FirstOrDefault(session => session.SessionID == id_session);
            tempSessions.EndTime = DateTime.Now;
            tempSessions.Status = "Оффлайн";
            Class1.dbo.SaveChanges();
            NavigationService.GoBack();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Profil(username, id_session));
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Games(username,id_session));
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Balance(username,id_session));
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new History(username));
        }
    }
}
