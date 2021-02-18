using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
using System.Windows.Shapes;

namespace Biblioteka
{
    /// <summary>
    /// Logika interakcji dla klasy Rejestracja.xaml
    /// </summary>
    public partial class Rejestracja : Window
    {
        public Rejestracja()
        {
            InitializeComponent();
        }

        private void rejestracja_Click(object sender, RoutedEventArgs e)
        {
            string conString = "Data Source=DESKTOP-H9HITU2;Initial Catalog=Biblioteka;Integrated Security=True";
            SqlConnection con = new SqlConnection(conString);
            try
            { 
                if (con.State == System.Data.ConnectionState.Closed)
                    con.Open();
                
                if ((txtHaslo1.Password.ToString() == txtHaslo2.Password.ToString())&& txtHaslo1.Password.ToString()!= "")
                {
                    
                    string query = "insert into Czytelnicy(Imie,Nazwisko,Email,Telefon,Data_Urodzenia,Login,Haslo) values('" + txtImie.Text.ToString() + "'," +
                        "'" + txtNazwisko.Text.ToString() + "','" + txtMail.Text.ToString() + "','" + txtTelefon.Text.ToString() + "','" + data_urodzenia + "'," +
                        "'" + txtLogin.Text.ToString() + "','" + txtHaslo1.Password.ToString() + "')";
                    SqlCommand sqlCmd = new SqlCommand(query, con);
                    sqlCmd.ExecuteNonQuery();
                    MessageBox.Show("Pomyślnie zarejestrowano");
                    MainWindow main = new MainWindow();
                    main.Show();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Hasła muszą być takie same");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                con.Close();
            }


        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = new MainWindow();
            main.Show();
            this.Close();
        }
    }

}
