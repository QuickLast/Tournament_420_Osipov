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
    /// Логика взаимодействия для PlayerPage.xaml
    /// </summary>
    public partial class PlayerPage : Page
    {
        User userToSend;
        public PlayerPage(User user)
        {
            InitializeComponent();
            userToSend = user;
            Player player = DBConnection.db.Player.ToList().Find(x => x.IDUser == user.IDUser);
            PlayerInfoTBk.Text = $"Ваш ID: {user.IDUser}. Ваш никнейм: {player.Nickname}. Номер команды: {player.IDTeam}. Ваша роль: {player.Role.Name}";
            PlayerStatsTBk.Text = $"Статистика: Кол-во матчей - {player.PlayerStats.NumOfMatches}; Побед - {player.PlayerStats.Wins}; Поражений - {player.PlayerStats.Loses}; Ничейных ситуаций - {player.PlayerStats.NumOfMatches - player.PlayerStats.Wins - player.PlayerStats.Loses}";
        }

        private void TournamentRegistrationBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new TournamentRegistrationPage(userToSend));
        }
    }
}
