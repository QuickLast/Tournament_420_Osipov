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
    /// Логика взаимодействия для RegistrationPage.xaml
    /// </summary>
    public partial class RegistrationPage : Page
    {
        public List<User> users = DBConnection.db.User.ToList();
        public RegistrationPage()
        {
            InitializeComponent();
        }

        private void RegistrationBtn_Click(object sender, RoutedEventArgs e)
        {
            ErrorTBk.Text = "";
            User user = users.Find(x => x.Login.ToString() == LoginTBx.Text.Trim().ToString()) as User;
            if (user == null)
            {
                if (RePasswordTBx.Password == PasswordTBx.Password)
                {
                    DBConnection.db.User.Add(new User());
                }
                else
                {
                    ErrorTBk.Text = "Пароли не совпадают";
                }
            }
            else
            {
                ErrorTBk.Text = "Пользователь уже существует!";
            }
        }
    }
}
