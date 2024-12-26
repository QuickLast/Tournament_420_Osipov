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
using Tournament_420_Osipov.DB;

namespace Tournament_420_Osipov.Pages
{
    /// <summary>
    /// Логика взаимодействия для ApplicationsPage.xaml
    /// </summary>
    public partial class ApplicationsPage : Page
    {
        User userToSend;
        public List<TournamentApplication> apps = DBConnection.db.TournamentApplication.ToList();
        public ApplicationsPage(User user)
        {
            InitializeComponent();
            UsersLv.ItemsSource = apps;
            this.DataContext = this;
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
