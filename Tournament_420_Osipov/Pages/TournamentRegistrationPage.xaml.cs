using System;
using System.Collections.Generic;
using System.Data.Common;
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
    /// Логика взаимодействия для TournamentRegistrationPage.xaml
    /// </summary>
    public partial class TournamentRegistrationPage : Page
    {
        User userToSend;
        public List<Role> roles = DBConnection.db.Role.ToList();
        public List<Tournament> tournaments = DBConnection.db.Tournament.ToList();
        public TournamentRegistrationPage(User user)
        {
            InitializeComponent();
            userToSend = user;
            List<String> tournamentNames = new List<String>();
            foreach (Tournament trnmt in tournaments)
            {
                if (trnmt.IDStage == 1)
                    tournamentNames.Add(trnmt.Name);
            }
            TournamentCBx.ItemsSource = tournamentNames;

            List<String> roleNames = new List<String>();
            foreach (Role role in roles)
            {
                roleNames.Add(role.Name);
            }
            RoleCBx.ItemsSource = roleNames;
        }

        private void RegisterBtn_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Ваша заявка отправлена на проверку! Позже она появится у вас в личном кабинете");

            int IDTournament = tournaments.Find(x => x.Name == TournamentCBx.Text).IDTournament;

            TournamentApplication newApp = new TournamentApplication()
            {
                IDUser = userToSend.IDUser,
                People = TeamTBx.Text.Trim(),
                UserPreferredRole = RoleCBx.Text,
                IDTournament = IDTournament
            };

            DBConnection.db.TournamentApplication.Add(newApp);
            DBConnection.db.SaveChanges();

            NavigationService.GoBack();
        }
    }
}
