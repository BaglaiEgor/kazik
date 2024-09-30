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
    public partial class AdMain : Page
    {
        public AdMain()
        {
            InitializeComponent();
        }
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Page2()); //игры
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Page3()); //Транкзации
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Page4()); //Сессии
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Page1()); //Пользователи
        }

        private void Button_Click_5(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Page5()); //Результаты
        }

        private void Button_Click_6(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Page6()); //Ставки
        }

        private void Button_Click_7(object sender, RoutedEventArgs e)
        {
            MainWindow.Duble.MainFrame.Navigate(new Page7()); //История игр
        }
    }
}
