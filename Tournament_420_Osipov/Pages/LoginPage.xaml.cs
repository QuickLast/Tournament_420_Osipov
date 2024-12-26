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
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public List<User> users = DBConnection.db.User.ToList();
        public LoginPage()
        {
            InitializeComponent();
        }

        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {
            ErrorTBk.Text = "";
            User user = users.Find(x => x.Login.ToString() == LoginTBx.Text.Trim().ToString()) as User;
            if (user != null)
            {
                if (user.Password == PasswordTBx.Password.ToString())
                {
                    if (user.IDUserRole == 3)
                        NavigationService.Navigate(new MainPage(user));
                    else if (user.IDUserRole == 2)
                        NavigationService.Navigate(new OrganizatorMenu(user));
                    else
                        NavigationService.Navigate(new PlayerPage(user));
                }
                else
                {
                    ErrorTBk.Text = "Пароль не верный";
                }
            }
            else
            {
                ErrorTBk.Text = "Пользователя не существует";   
            }
        }

        private void RegistrationBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RegistrationPage());
        }
    }
}
