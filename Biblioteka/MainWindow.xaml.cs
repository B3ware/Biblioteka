using System;
using System.Collections.Generic;
using System.Data;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Biblioteka
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        public string conString = "Data Source=DESKTOP-H9HITU2;Initial Catalog=Biblioteka;Integrated Security=True";
        private void button_Click(object sender, RoutedEventArgs e)
        {

            SqlConnection con = new SqlConnection(conString);
            try
            {

                if (con.State == System.Data.ConnectionState.Closed)
                    con.Open();


                string pozycja = "Czytelnicy";
                if ((bool)pracownik.IsChecked)
                    pozycja = "Pracownicy";

                string query = "SELECT COUNT(1) FROM " + pozycja + " WHERE Login='" + txtLogin.Text.ToString() + "' AND Haslo='" + txtHaslo.Password.ToString() + "'";
                SqlCommand sqlCmd = new SqlCommand(query, con);
                sqlCmd.CommandType = CommandType.Text;
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    if ((bool)pracownik.IsChecked)
                    {
                        Menu menu = new Menu();
                        menu.Show();
                    }
                    else
                    {
                        MenuCzytelnik menuc = new MenuCzytelnik();
                        menuc.Show();
                    }
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Podaj poprawne hasło");
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                con.Close();
            }
            
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            Biblioteka.BibliotekaDataSet bibliotekaDataSet = ((Biblioteka.BibliotekaDataSet)(this.FindResource("bibliotekaDataSet")));
            // Załaduj dane do tabeli Czytelnicy. Możesz modyfikować ten kod w razie potrzeby.
            Biblioteka.BibliotekaDataSetTableAdapters.CzytelnicyTableAdapter bibliotekaDataSetCzytelnicyTableAdapter = new Biblioteka.BibliotekaDataSetTableAdapters.CzytelnicyTableAdapter();
            bibliotekaDataSetCzytelnicyTableAdapter.Fill(bibliotekaDataSet.Czytelnicy);
            System.Windows.Data.CollectionViewSource czytelnicyViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("czytelnicyViewSource")));
            czytelnicyViewSource.View.MoveCurrentToFirst();
        }

        private void zakoncz_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void nowy_Click(object sender, RoutedEventArgs e)
        {
            Rejestracja rej = new Rejestracja();
            rej.Show();
            this.Close();
        }
    }
}
