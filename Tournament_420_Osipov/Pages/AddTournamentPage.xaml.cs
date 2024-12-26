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
    /// Логика взаимодействия для AddTournamentPage.xaml
    /// </summary>
    public partial class AddTournamentPage : Page
    {
        User userToSend;
        public List<Category> categories = DBConnection.db.Category.ToList();
        public AddTournamentPage(User user)
        {
            InitializeComponent();
            List<String> categoryNames = new List<String>();
            foreach (Category cat in categories)
            {
                categoryNames.Add(cat.Name);
            }
            CategoryCBx.ItemsSource = categoryNames;
        }

        private void CreateBtn_Click(object sender, RoutedEventArgs e)
        {
            int IDCategory = categories.Find(x => x.Name == CategoryCBx.Text).IDCategory;

            Tournament newTournament = new Tournament()
            {
                Name = NameTBx.Text,
                Game = GameTBx.Text,
                Prize = int.Parse(PrizeTBx.Text),
                IDCategory = IDCategory,
                IDStage = 1,
                Format = FormatTBx.Text,
                NumberOfPlayers = int.Parse(NumOfPlayersTBx.Text),
                Date = Convert.ToDateTime(DateTBx.Text),
                StartTime = TimeTBx.Text,
            };

            DBConnection.db.Tournament.Add(newTournament);
            DBConnection.db.SaveChanges();

            MessageBox.Show("Турнир создан!");
            NavigationService.GoBack();
        }
    }
}
